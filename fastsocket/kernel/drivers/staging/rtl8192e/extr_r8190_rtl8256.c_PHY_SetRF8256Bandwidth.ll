; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_PHY_SetRF8256Bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_PHY_SetRF8256Bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32, i32 }

@VERSION_8190_BD = common dso_local global i32 0, align 4
@VERSION_8190_BE = common dso_local global i32 0, align 4
@bMask12Bits = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"PHY_SetRF8256Bandwidth(): unknown hardware version\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"PHY_SetRF8256Bandwidth(): unknown Bandwidth: %#X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_SetRF8256Bandwidth(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %6, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %92, %2
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %95

15:                                               ; preds = %9
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %92

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %87 [
    i32 129, label %23
    i32 128, label %55
  ]

23:                                               ; preds = %21
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VERSION_8190_BD, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VERSION_8190_BE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29, %23
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @bMask12Bits, align 4
  %40 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %36, i32 %38, i32 11, i32 %39, i32 256)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @bMask12Bits, align 4
  %45 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %41, i32 %43, i32 44, i32 %44, i32 983)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @bMask12Bits, align 4
  %50 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %46, i32 %48, i32 14, i32 %49, i32 33)
  br label %54

51:                                               ; preds = %29
  %52 = load i32, i32* @COMP_ERR, align 4
  %53 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %35
  br label %91

55:                                               ; preds = %21
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @VERSION_8190_BD, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @VERSION_8190_BE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61, %55
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = load i64, i64* %5, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @bMask12Bits, align 4
  %72 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %68, i32 %70, i32 11, i32 %71, i32 768)
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = load i64, i64* %5, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @bMask12Bits, align 4
  %77 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %73, i32 %75, i32 44, i32 %76, i32 1023)
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = load i64, i64* %5, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @bMask12Bits, align 4
  %82 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %78, i32 %80, i32 14, i32 %81, i32 225)
  br label %86

83:                                               ; preds = %61
  %84 = load i32, i32* @COMP_ERR, align 4
  %85 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %84, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %67
  br label %91

87:                                               ; preds = %21
  %88 = load i32, i32* @COMP_ERR, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %88, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %86, %54
  br label %92

92:                                               ; preds = %91, %20
  %93 = load i64, i64* %5, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %5, align 8
  br label %9

95:                                               ; preds = %9
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device*, i64) #1

declare dso_local i32 @rtl8192_phy_SetRFReg(%struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
