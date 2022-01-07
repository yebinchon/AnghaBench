; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_SetTxPowerLevel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_SetTxPowerLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32*, i32*, i32 }

@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"unknown rf chip ID in rtl8192_SetTxPowerLevel()\0A\00", align 1
@Adapter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @rtl8192_SetTxPowerLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_SetTxPowerLevel(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %5, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %38 [
    i32 130, label %29
    i32 129, label %30
    i32 128, label %37
  ]

29:                                               ; preds = %2
  br label %41

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @PHY_SetRF8256CCKTxPower(%struct.net_device* %31, i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @PHY_SetRF8256OFDMTxPower(%struct.net_device* %34, i32 %35)
  br label %41

37:                                               ; preds = %2
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @COMP_ERR, align 4
  %40 = call i32 @RT_TRACE(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %37, %30, %29
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @PHY_SetRF8256CCKTxPower(%struct.net_device*, i32) #1

declare dso_local i32 @PHY_SetRF8256OFDMTxPower(%struct.net_device*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
