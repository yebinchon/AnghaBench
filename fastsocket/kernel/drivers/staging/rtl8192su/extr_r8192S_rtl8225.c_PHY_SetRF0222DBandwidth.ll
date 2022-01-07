; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl8225.c_PHY_SetRF0222DBandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl8225.c_PHY_SetRF0222DBandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@BIT10 = common dso_local global i32 0, align 4
@BIT11 = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_SetRF0222DBandwidth(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %6, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %26 [
    i32 129, label %10
    i32 128, label %18
  ]

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = load i32, i32* @RF90_PATH_A, align 4
  %13 = load i32, i32* @RF_CHNLBW, align 4
  %14 = load i32, i32* @BIT10, align 4
  %15 = load i32, i32* @BIT11, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %11, i32 %12, i32 %13, i32 %16, i32 1)
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = load i32, i32* @RF90_PATH_A, align 4
  %21 = load i32, i32* @RF_CHNLBW, align 4
  %22 = load i32, i32* @BIT10, align 4
  %23 = load i32, i32* @BIT11, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %19, i32 %20, i32 %21, i32 %24, i32 0)
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %18, %10
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_phy_SetRFReg(%struct.net_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
