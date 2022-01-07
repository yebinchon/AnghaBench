; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_BB_Config_ParaFile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_rtl8192_BB_Config_ParaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i32*, i32 }

@RT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@BB_GLOBAL_RESET = common dso_local global i32 0, align 4
@BB_GLOBAL_RESET_BIT = common dso_local global i64 0, align 8
@CPU_GEN = common dso_local global i32 0, align 4
@CPU_GEN_BB_RST = common dso_local global i32 0, align 4
@HW90_BLOCK_PHY0 = common dso_local global i64 0, align 8
@HW90_BLOCK_PHY1 = common dso_local global i64 0, align 8
@COMP_ERR = common dso_local global i32 0, align 4
@COMP_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PHY_RF8256_Config():Check PHY%d Fail!!\0A\00", align 1
@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bCCKEn = common dso_local global i32 0, align 4
@bOFDMEn = common dso_local global i32 0, align 4
@BaseBand_Config_PHY_REG = common dso_local global i32 0, align 4
@BaseBand_Config_AGC_TAB = common dso_local global i32 0, align 4
@VERSION_8190_BD = common dso_local global i64 0, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@rFPGA0_TxGainStage = common dso_local global i32 0, align 4
@bXBTxAGC = common dso_local global i32 0, align 4
@bXCTxAGC = common dso_local global i32 0, align 4
@bXDTxAGC = common dso_local global i32 0, align 4
@bXtalCap01 = common dso_local global i32 0, align 4
@bXtalCap23 = common dso_local global i32 0, align 4
@bXtalCap92x = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter1 = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @rtl8192_BB_Config_ParaFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtl8192_BB_Config_ParaFile(%struct.net_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %4, align 8
  %11 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load i32, i32* @BB_GLOBAL_RESET, align 4
  %14 = call i64 @read_nic_byte(%struct.net_device* %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load i32, i32* @BB_GLOBAL_RESET, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @BB_GLOBAL_RESET_BIT, align 8
  %19 = or i64 %17, %18
  %20 = call i32 @write_nic_byte(%struct.net_device* %15, i32 %16, i64 %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load i32, i32* @CPU_GEN, align 4
  %23 = call i32 @read_nic_dword(%struct.net_device* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load i32, i32* @CPU_GEN, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CPU_GEN_BB_RST, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @write_nic_dword(%struct.net_device* %24, i32 %25, i32 %29)
  %31 = load i64, i64* @HW90_BLOCK_PHY0, align 8
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %52, %1
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @HW90_BLOCK_PHY1, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @rtl8192_phy_checkBBAndRF(%struct.net_device* %37, i64 %38, i32 0)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i32, i32* @COMP_ERR, align 4
  %45 = load i32, i32* @COMP_PHY, align 4
  %46 = or i32 %44, %45
  %47 = load i64, i64* %7, align 8
  %48 = sub nsw i64 %47, 1
  %49 = call i32 @RT_TRACE(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* %5, align 8
  store i64 %50, i64* %2, align 8
  br label %121

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %32

55:                                               ; preds = %32
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = load i32, i32* @rFPGA0_RFMOD, align 4
  %58 = load i32, i32* @bCCKEn, align 4
  %59 = load i32, i32* @bOFDMEn, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @rtl8192_setBBreg(%struct.net_device* %56, i32 %57, i32 %60, i32 0)
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = load i32, i32* @BaseBand_Config_PHY_REG, align 4
  %64 = call i32 @rtl8192_phyConfigBB(%struct.net_device* %62, i32 %63)
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = load i32, i32* @CPU_GEN, align 4
  %67 = call i32 @read_nic_dword(%struct.net_device* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = load i32, i32* @CPU_GEN, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @CPU_GEN_BB_RST, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @write_nic_dword(%struct.net_device* %68, i32 %69, i32 %72)
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = load i32, i32* @BaseBand_Config_AGC_TAB, align 4
  %76 = call i32 @rtl8192_phyConfigBB(%struct.net_device* %74, i32 %75)
  %77 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %78 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @VERSION_8190_BD, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %119

82:                                               ; preds = %55
  %83 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %84 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RF_2T4R, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %82
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 8
  %95 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %96 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 4
  %101 = or i32 %94, %100
  %102 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %103 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %101, %106
  store i32 %107, i32* %8, align 4
  br label %109

108:                                              ; preds = %82
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %108, %88
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = load i32, i32* @rFPGA0_TxGainStage, align 4
  %112 = load i32, i32* @bXBTxAGC, align 4
  %113 = load i32, i32* @bXCTxAGC, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @bXDTxAGC, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @rtl8192_setBBreg(%struct.net_device* %110, i32 %111, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %109, %55
  %120 = load i64, i64* %5, align 8
  store i64 %120, i64* %2, align 8
  br label %121

121:                                              ; preds = %119, %43
  %122 = load i64, i64* %2, align 8
  ret i64 %122
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i64) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i64 @rtl8192_phy_checkBBAndRF(%struct.net_device*, i64, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i64) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rtl8192_phyConfigBB(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
