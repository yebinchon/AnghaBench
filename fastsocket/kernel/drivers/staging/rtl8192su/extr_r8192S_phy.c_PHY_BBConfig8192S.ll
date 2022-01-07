; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_BBConfig8192S.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_BBConfig8192S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i64 }

@RT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@rFPGA0_TxInfo = common dso_local global i32 0, align 4
@rOFDM0_TRxPathEnable = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i64 0, align 8
@RF_1T2R = common dso_local global i64 0, align 8
@RF_2T2R = common dso_local global i64 0, align 8
@RF_2T2R_GREEN = common dso_local global i64 0, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"PHY_BBConfig8192S: RF_Type(%x) does not match RF_Num(%x)!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PHY_BBConfig8192S(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  store i64 %8, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @phy_InitBBRFRegisterDefinition(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i64 @phy_BB8192S_Config_ParaFile(%struct.net_device* %13)
  store i64 %14, i64* %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load i32, i32* @rFPGA0_TxInfo, align 4
  %17 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %15, i32 %16, i32 15)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load i32, i32* @rOFDM0_TRxPathEnable, align 4
  %20 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %18, i32 %19, i32 15)
  %21 = or i32 %17, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %38, %1
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %29, %30
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %25

41:                                               ; preds = %25
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RF_1T1R, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %86, label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RF_1T2R, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %86, label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RF_2T2R, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 2
  br i1 %67, label %86, label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RF_2T2R_GREEN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 2
  br i1 %76, label %86, label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RF_2T4R, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 4
  br i1 %85, label %86, label %93

86:                                               ; preds = %83, %74, %65, %56, %47
  %87 = load i32, i32* @COMP_INIT, align 4
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @RT_TRACE(i32 %87, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %83, %77
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  ret i32 %98
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @phy_InitBBRFRegisterDefinition(%struct.net_device*) #1

declare dso_local i64 @phy_BB8192S_Config_ParaFile(%struct.net_device*) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
