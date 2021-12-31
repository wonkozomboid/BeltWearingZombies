local function BWZ_serverInit()
    print("[BWZ_serverInit] SandboxVars.BeltWearingZombies.BeltPercentage = ", SandboxVars.BeltWearingZombies.BeltPercentage);
end

local function BWZ_onZombieDead(zombie)
    local beltRoll = ZombRand(101);

    if (beltRoll <= SandboxVars.BeltWearingZombies.BeltPercentage) then
        zombie:getInventory():AddItem("Base.Belt2", 1);  -- Base.Belt is not wearable, use Belt2
    end
end

Events.OnGameStart.Add(BWZ_serverInit);
Events.OnZombieDead.Add(BWZ_onZombieDead);
