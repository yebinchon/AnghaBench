; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_rtl8192_SetBWMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_rtl8192_SetBWMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i8*, i64, i64, i32 }

@TRUE = common dso_local global i64 0, align 8
@HT_EXTCHNL_OFFSET_LOWER = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_UPPER = common dso_local global i32 0, align 4
@HT_EXTCHNL_OFFSET_UPPER = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4
@COMP_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"PHY_SetBWMode8192S() SetBWModeInProgress FALSE driver sleep or unload\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_SetBWMode(%struct.net_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %7, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %63

19:                                               ; preds = %3
  %20 = load i64, i64* @TRUE, align 8
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @HT_EXTCHNL_OFFSET_LOWER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_UPPER, align 4
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %46

33:                                               ; preds = %19
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @HT_EXTCHNL_OFFSET_UPPER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_LOWER, align 4
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  br label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @SetBWModeCallback8192SUsbWorkItem(%struct.net_device* %52)
  br label %63

54:                                               ; preds = %46
  %55 = load i32, i32* @COMP_SCAN, align 4
  %56 = call i32 @RT_TRACE(i32 %55, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %57 = load i64, i64* @FALSE, align 8
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %62 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %18, %54, %51
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @SetBWModeCallback8192SUsbWorkItem(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
