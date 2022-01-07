; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_CheckTXPowerTracking_ThermalMeter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_CheckTXPowerTracking_ThermalMeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i32 }

@dm_CheckTXPowerTracking_ThermalMeter.TM_Trigger = internal global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@bMask12Bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_CheckTXPowerTracking_ThermalMeter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_CheckTXPowerTracking_ThermalMeter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %49

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* @dm_CheckTXPowerTracking_ThermalMeter.TM_Trigger, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load i32, i32* @RF90_PATH_A, align 4
  %28 = load i32, i32* @bMask12Bits, align 4
  %29 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %26, i32 %27, i32 2, i32 %28, i32 77)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i32, i32* @RF90_PATH_A, align 4
  %32 = load i32, i32* @bMask12Bits, align 4
  %33 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %30, i32 %31, i32 2, i32 %32, i32 79)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load i32, i32* @RF90_PATH_A, align 4
  %36 = load i32, i32* @bMask12Bits, align 4
  %37 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %34, i32 %35, i32 2, i32 %36, i32 77)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load i32, i32* @RF90_PATH_A, align 4
  %40 = load i32, i32* @bMask12Bits, align 4
  %41 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %38, i32 %39, i32 2, i32 %40, i32 79)
  store i32 1, i32* @dm_CheckTXPowerTracking_ThermalMeter.TM_Trigger, align 4
  br label %49

42:                                               ; preds = %22
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 1
  %48 = call i32 @queue_delayed_work(i32 %45, i32* %47, i32 0)
  store i32 0, i32* @dm_CheckTXPowerTracking_ThermalMeter.TM_Trigger, align 4
  br label %49

49:                                               ; preds = %10, %16, %25, %42
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_phy_SetRFReg(%struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
