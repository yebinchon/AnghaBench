; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_CCK_Tx_Power_Track_BW_Switch_ThermalMeter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_CCK_Tx_Power_Track_BW_Switch_ThermalMeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"20MHz, CCK_Tx_Power_Track_BW_Switch_ThermalMeter(),CCK_index = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"40MHz, CCK_Tx_Power_Track_BW_Switch_ThermalMeter(), CCK_index = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @CCK_Tx_Power_Track_BW_Switch_ThermalMeter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CCK_Tx_Power_Track_BW_Switch_ThermalMeter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 14
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* @TRUE, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  br label %40

22:                                               ; preds = %13, %1
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 14
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i64, i64* @FALSE, align 8
  %37 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %38 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %30, %22
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %74 [
    i32 129, label %44
    i32 128, label %63
  ]

44:                                               ; preds = %40
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 1
  store i32 6, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %54 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @RT_TRACE(i32 %58, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %74

63:                                               ; preds = %40
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @RT_TRACE(i32 %69, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %40, %63, %52
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %77 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %75, i64 %78)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local i32 @dm_cck_txpower_adjust(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
