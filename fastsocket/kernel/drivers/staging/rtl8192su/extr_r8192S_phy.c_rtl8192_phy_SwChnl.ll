; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_rtl8192_phy_SwChnl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_rtl8192_phy_SwChnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"WIRELESS_MODE_A but channel<=14\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"WIRELESS_MODE_B but channel>14\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"WIRELESS_MODE_G but channel>14\00", align 1
@TRUE = common dso_local global i32 0, align 4
@COMP_SCAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"PHY_SwChnl8192S SwChnlInProgress FALSE driver sleep or unload\0A\00", align 1
@bResult = common dso_local global i64 0, align 8
@tmpchannel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8192_phy_SwChnl(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %6, align 8
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

14:                                               ; preds = %2
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %82

20:                                               ; preds = %14
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %82

26:                                               ; preds = %20
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 6
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %53 [
    i32 132, label %32
    i32 128, label %32
    i32 131, label %39
    i32 130, label %46
    i32 129, label %46
  ]

32:                                               ; preds = %26, %26
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 14
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @COMP_ERR, align 4
  %37 = call i32 @RT_TRACE(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

38:                                               ; preds = %32
  br label %54

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 14
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @COMP_ERR, align 4
  %44 = call i32 @RT_TRACE(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

45:                                               ; preds = %39
  br label %54

46:                                               ; preds = %26, %26
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %47, 14
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @COMP_ERR, align 4
  %51 = call i32 @RT_TRACE(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

52:                                               ; preds = %46
  br label %54

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53, %52, %45, %38
  %55 = load i32, i32* @TRUE, align 4
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = call i32 @SwChnlCallback8192SUsbWorkItem(%struct.net_device* %74)
  br label %81

76:                                               ; preds = %61
  %77 = load i32, i32* @COMP_SCAN, align 4
  %78 = call i32 @RT_TRACE(i32 %77, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %73
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %49, %42, %35, %25, %19, %13
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @SwChnlCallback8192SUsbWorkItem(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
