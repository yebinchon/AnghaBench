; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_getSupportedWireleeMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_getSupportedWireleeMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32 }

@WIRELESS_MODE_N_24G = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i32 0, align 4
@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_A = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rtl8192_getSupportedWireleeMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192_getSupportedWireleeMode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %8 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %20 [
    i32 131, label %10
    i32 130, label %10
    i32 128, label %10
    i32 129, label %16
  ]

10:                                               ; preds = %1, %1, %1
  %11 = load i32, i32* @WIRELESS_MODE_N_24G, align 4
  %12 = load i32, i32* @WIRELESS_MODE_G, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WIRELESS_MODE_B, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @WIRELESS_MODE_A, align 4
  %18 = load i32, i32* @WIRELESS_MODE_N_5G, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %4, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @WIRELESS_MODE_B, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %16, %10
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
