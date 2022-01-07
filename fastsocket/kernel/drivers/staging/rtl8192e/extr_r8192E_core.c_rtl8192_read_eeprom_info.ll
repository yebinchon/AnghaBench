; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_read_eeprom_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_read_eeprom_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.r8192_priv = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32*, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i8*, i32, i32*, i32*, i32*, i32* }

@__const.rtl8192_read_eeprom_info.bMac_Tmp_Addr = private unnamed_addr constant [6 x i32] [i32 0, i32 224, i32 76, i32 0, i32 0, i32 1], align 16
@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"====> rtl8192_read_eeprom_info\0A\00", align 1
@RTL8190_EEPROM_ID = common dso_local global i64 0, align 8
@COMP_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"EEPROM ID is invalid:%x, %x\0A\00", align 1
@EEPROM_VID = common dso_local global i32 0, align 4
@EEPROM_DID = common dso_local global i32 0, align 4
@EEPROM_Customer_ID = common dso_local global i32 0, align 4
@EEPROM_ICVersion_ChannelPlan = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"\0AIC Version = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"EEPROM VID = 0x%4x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"EEPROM DID = 0x%4x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"EEPROM Customer ID: 0x%2x\0A\00", align 1
@EEPROM_NODE_ADDRESS_BYTE_0 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [51 x i8] c"Permanent Address = %02x-%02x-%02x-%02x-%02x-%02x\0A\00", align 1
@RTL819X_DEFAULT_RF_TYPE = common dso_local global i64 0, align 8
@EEPROM_RFInd_PowerDiff = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i64 0, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@EEPROM_Default_LegacyHTTxPowerDiff = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"EEPROMLegacyHTTxPowerDiff = %d\0A\00", align 1
@EEPROM_ThermalMeter = common dso_local global i32 0, align 4
@EEPROM_Default_ThermalMeter = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"ThermalMeter = %d\0A\00", align 1
@EPROM_93c46 = common dso_local global i64 0, align 8
@EEPROM_TxPwDiff_CrystalCap = common dso_local global i32 0, align 4
@EEPROM_Default_AntTxPowerDiff = common dso_local global i8* null, align 8
@EEPROM_Default_TxPwDiff_CrystalCap = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"EEPROMAntPwDiff = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"EEPROMCrystalCap = %d\0A\00", align 1
@EEPROM_TxPwIndex_CCK = common dso_local global i64 0, align 8
@EEPROM_Default_TxPower = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [39 x i8] c"CCK Tx Power Level, Index %d = 0x%02x\0A\00", align 1
@EEPROM_TxPwIndex_OFDM_24G = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [45 x i8] c"OFDM 2.4G Tx Power Level, Index %d = 0x%02x\0A\00", align 1
@EPROM_93c56 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [36 x i8] c"priv->TxPowerLevelCCK_A[%d] = 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"priv->TxPowerLevelOFDM24G_A[%d] = 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"priv->TxPowerLevelCCK_C[%d] = 0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"priv->TxPowerLevelOFDM24G_C[%d] = 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"\0A1T2R config\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"\0A2T4R config\0A\00", align 1
@RF_8256 = common dso_local global i32 0, align 4
@RT_CID_DLINK = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"Toshiba ChannelPlan = 0x%x\0A\00", align 1
@CHANNEL_PLAN_LEN = common dso_local global i32 0, align 4
@SW_LED_MODE2 = common dso_local global i8* null, align 8
@SW_LED_MODE3 = common dso_local global i8* null, align 8
@SW_LED_MODE4 = common dso_local global i8* null, align 8
@SW_LED_MODE5 = common dso_local global i8* null, align 8
@SW_LED_MODE6 = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [20 x i8] c"RegChannelPlan(%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"ChannelPlan = %d \0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"LedStrategy = %d \0A\00", align 1
@COMP_TRACE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [23 x i8] c"<==== ReadAdapterInfo\0A\00", align 1
@EEPROM_C56_CrystalCap = common dso_local global i32 0, align 4
@EEPROM_C56_RfA_CCK_Chnl1_TxPwIndex = common dso_local global i32 0, align 4
@EEPROM_C56_RfC_CCK_Chnl1_TxPwIndex = common dso_local global i32 0, align 4
@EEPROM_Default_TxPowerLevel = common dso_local global i8* null, align 8
@HW_LED = common dso_local global i8* null, align 8
@SW_LED_MODE1 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192_read_eeprom_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_read_eeprom_info(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [6 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %3, align 8
  %12 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([6 x i32]* @__const.rtl8192_read_eeprom_info.bMac_Tmp_Addr to i8*), i64 24, i1 false)
  %13 = load i32, i32* @COMP_INIT, align 4
  %14 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @eprom_read(%struct.net_device* %15, i32 0)
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @RTL8190_EEPROM_ID, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @COMP_ERR, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @RTL8190_EEPROM_ID, align 8
  %25 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %88, label %36

36:                                               ; preds = %31
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = load i32, i32* @EEPROM_VID, align 4
  %39 = ashr i32 %38, 1
  %40 = call i32 @eprom_read(%struct.net_device* %37, i32 %39)
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = load i32, i32* @EEPROM_DID, align 4
  %45 = ashr i32 %44, 1
  %46 = call i32 @eprom_read(%struct.net_device* %43, i32 %45)
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = load i32, i32* @EEPROM_Customer_ID, align 4
  %51 = ashr i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = trunc i64 %52 to i32
  %54 = call i32 @eprom_read(%struct.net_device* %49, i32 %53)
  %55 = ashr i32 %54, 8
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = and i64 %57, 255
  %59 = trunc i64 %58 to i32
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = load i32, i32* @EEPROM_ICVersion_ChannelPlan, align 4
  %64 = ashr i32 %63, 1
  %65 = call i32 @eprom_read(%struct.net_device* %62, i32 %64)
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = and i64 %67, 255
  %69 = trunc i64 %68 to i32
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* %6, align 8
  %73 = and i64 %72, 65280
  %74 = ashr i64 %73, 8
  store i64 %74, i64* %7, align 8
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %79 [
    i32 129, label %78
    i32 128, label %78
  ]

78:                                               ; preds = %36, %36
  br label %82

79:                                               ; preds = %36
  %80 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %81 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %80, i32 0, i32 5
  store i32 129, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %78
  %83 = load i32, i32* @COMP_INIT, align 4
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %101

88:                                               ; preds = %31
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 5
  store i32 129, i32* %90, align 4
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %94 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  %95 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %96 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %95, i32 0, i32 3
  store i32 0, i32* %96, align 4
  %97 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %98 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %97, i32 0, i32 4
  store i32 0, i32* %98, align 8
  %99 = load i32, i32* @COMP_INIT, align 4
  %100 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 255)
  br label %101

101:                                              ; preds = %88, %82
  %102 = load i32, i32* @COMP_INIT, align 4
  %103 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %104 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @COMP_INIT, align 4
  %108 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %109 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @COMP_INIT, align 4
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %114 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %118 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %145, label %121

121:                                              ; preds = %101
  store i64 0, i64* %5, align 8
  br label %122

122:                                              ; preds = %141, %121
  %123 = load i64, i64* %5, align 8
  %124 = icmp slt i64 %123, 6
  br i1 %124, label %125, label %144

125:                                              ; preds = %122
  %126 = load %struct.net_device*, %struct.net_device** %2, align 8
  %127 = load i64, i64* @EEPROM_NODE_ADDRESS_BYTE_0, align 8
  %128 = load i64, i64* %5, align 8
  %129 = add nsw i64 %127, %128
  %130 = ashr i64 %129, 1
  %131 = trunc i64 %130 to i32
  %132 = call i32 @eprom_read(%struct.net_device* %126, i32 %131)
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %6, align 8
  %134 = load i64, i64* %6, align 8
  %135 = load %struct.net_device*, %struct.net_device** %2, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %5, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = bitcast i32* %139 to i64*
  store i64 %134, i64* %140, align 8
  br label %141

141:                                              ; preds = %125
  %142 = load i64, i64* %5, align 8
  %143 = add nsw i64 %142, 2
  store i64 %143, i64* %5, align 8
  br label %122

144:                                              ; preds = %122
  br label %151

145:                                              ; preds = %101
  %146 = load %struct.net_device*, %struct.net_device** %2, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %150 = call i32 @memcpy(i32* %148, i32* %149, i32 6)
  br label %151

151:                                              ; preds = %145, %144
  %152 = load i32, i32* @COMP_INIT, align 4
  %153 = load %struct.net_device*, %struct.net_device** %2, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.net_device*, %struct.net_device** %2, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.net_device*, %struct.net_device** %2, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.net_device*, %struct.net_device** %2, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.net_device*, %struct.net_device** %2, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.net_device*, %struct.net_device** %2, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 5
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %152, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %157, i32 %162, i32 %167, i32 %172, i32 %177, i32 %182)
  %184 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %185 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = icmp sgt i32 %186, 129
  br i1 %187, label %188, label %191

188:                                              ; preds = %151
  %189 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %190 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %189, i32 0, i32 6
  store i32 1, i32* %190, align 8
  br label %194

191:                                              ; preds = %151
  %192 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %193 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %192, i32 0, i32 6
  store i32 0, i32* %193, align 8
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i64, i64* @RTL819X_DEFAULT_RF_TYPE, align 8
  %196 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %197 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %196, i32 0, i32 7
  store i64 %195, i64* %197, align 8
  %198 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %199 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = icmp sgt i32 %200, 129
  br i1 %201, label %202, label %775

202:                                              ; preds = %194
  %203 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %204 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %229, label %207

207:                                              ; preds = %202
  %208 = load %struct.net_device*, %struct.net_device** %2, align 8
  %209 = load i32, i32* @EEPROM_RFInd_PowerDiff, align 4
  %210 = ashr i32 %209, 1
  %211 = call i32 @eprom_read(%struct.net_device* %208, i32 %210)
  %212 = and i32 %211, 255
  store i32 %212, i32* %4, align 4
  %213 = load i32, i32* %4, align 4
  %214 = and i32 %213, 15
  %215 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %216 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %215, i32 0, i32 8
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* %4, align 4
  %218 = and i32 %217, 128
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %207
  %221 = load i64, i64* @RF_1T2R, align 8
  %222 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %223 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %222, i32 0, i32 7
  store i64 %221, i64* %223, align 8
  br label %228

224:                                              ; preds = %207
  %225 = load i64, i64* @RF_2T4R, align 8
  %226 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %227 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %226, i32 0, i32 7
  store i64 %225, i64* %227, align 8
  br label %228

228:                                              ; preds = %224, %220
  br label %233

229:                                              ; preds = %202
  %230 = load i32, i32* @EEPROM_Default_LegacyHTTxPowerDiff, align 4
  %231 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %232 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %231, i32 0, i32 8
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %229, %228
  %234 = load i32, i32* @COMP_INIT, align 4
  %235 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %236 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %235, i32 0, i32 8
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %234, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %237)
  %239 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %240 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %252, label %243

243:                                              ; preds = %233
  %244 = load %struct.net_device*, %struct.net_device** %2, align 8
  %245 = load i32, i32* @EEPROM_ThermalMeter, align 4
  %246 = ashr i32 %245, 1
  %247 = call i32 @eprom_read(%struct.net_device* %244, i32 %246)
  %248 = and i32 %247, 65280
  %249 = ashr i32 %248, 8
  %250 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %251 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %250, i32 0, i32 9
  store i32 %249, i32* %251, align 4
  br label %256

252:                                              ; preds = %233
  %253 = load i32, i32* @EEPROM_Default_ThermalMeter, align 4
  %254 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %255 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %254, i32 0, i32 9
  store i32 %253, i32* %255, align 4
  br label %256

256:                                              ; preds = %252, %243
  %257 = load i32, i32* @COMP_INIT, align 4
  %258 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %259 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %258, i32 0, i32 9
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %257, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %260)
  %262 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %263 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %262, i32 0, i32 9
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 %264, 100
  %266 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %267 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %266, i32 0, i32 10
  store i32 %265, i32* %267, align 8
  %268 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %269 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %268, i32 0, i32 11
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @EPROM_93c46, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %417

273:                                              ; preds = %256
  %274 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %275 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %295, label %278

278:                                              ; preds = %273
  %279 = load %struct.net_device*, %struct.net_device** %2, align 8
  %280 = load i32, i32* @EEPROM_TxPwDiff_CrystalCap, align 4
  %281 = ashr i32 %280, 1
  %282 = call i32 @eprom_read(%struct.net_device* %279, i32 %281)
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %6, align 8
  %284 = load i64, i64* %6, align 8
  %285 = and i64 %284, 4095
  %286 = trunc i64 %285 to i32
  %287 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %288 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %287, i32 0, i32 12
  store i32 %286, i32* %288, align 8
  %289 = load i64, i64* %6, align 8
  %290 = and i64 %289, 61440
  %291 = ashr i64 %290, 12
  %292 = trunc i64 %291 to i32
  %293 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %294 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %293, i32 0, i32 13
  store i32 %292, i32* %294, align 4
  br label %304

295:                                              ; preds = %273
  %296 = load i8*, i8** @EEPROM_Default_AntTxPowerDiff, align 8
  %297 = ptrtoint i8* %296 to i32
  %298 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %299 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %298, i32 0, i32 12
  store i32 %297, i32* %299, align 8
  %300 = load i8*, i8** @EEPROM_Default_TxPwDiff_CrystalCap, align 8
  %301 = ptrtoint i8* %300 to i32
  %302 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %303 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %302, i32 0, i32 13
  store i32 %301, i32* %303, align 4
  br label %304

304:                                              ; preds = %295, %278
  %305 = load i32, i32* @COMP_INIT, align 4
  %306 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %307 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %306, i32 0, i32 12
  %308 = load i32, i32* %307, align 8
  %309 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %305, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %308)
  %310 = load i32, i32* @COMP_INIT, align 4
  %311 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %312 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %311, i32 0, i32 13
  %313 = load i32, i32* %312, align 4
  %314 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %310, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %313)
  store i64 0, i64* %5, align 8
  br label %315

315:                                              ; preds = %362, %304
  %316 = load i64, i64* %5, align 8
  %317 = icmp slt i64 %316, 14
  br i1 %317, label %318, label %365

318:                                              ; preds = %315
  %319 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %320 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %332, label %323

323:                                              ; preds = %318
  %324 = load %struct.net_device*, %struct.net_device** %2, align 8
  %325 = load i64, i64* @EEPROM_TxPwIndex_CCK, align 8
  %326 = load i64, i64* %5, align 8
  %327 = add nsw i64 %325, %326
  %328 = ashr i64 %327, 1
  %329 = trunc i64 %328 to i32
  %330 = call i32 @eprom_read(%struct.net_device* %324, i32 %329)
  %331 = sext i32 %330 to i64
  store i64 %331, i64* %6, align 8
  br label %334

332:                                              ; preds = %318
  %333 = load i64, i64* @EEPROM_Default_TxPower, align 8
  store i64 %333, i64* %6, align 8
  br label %334

334:                                              ; preds = %332, %323
  %335 = load i64, i64* %6, align 8
  %336 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %337 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %336, i32 0, i32 34
  %338 = load i32*, i32** %337, align 8
  %339 = load i64, i64* %5, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  %341 = bitcast i32* %340 to i64*
  store i64 %335, i64* %341, align 8
  %342 = load i32, i32* @COMP_INIT, align 4
  %343 = load i64, i64* %5, align 8
  %344 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %345 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %344, i32 0, i32 34
  %346 = load i32*, i32** %345, align 8
  %347 = load i64, i64* %5, align 8
  %348 = getelementptr inbounds i32, i32* %346, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %342, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i64 %343, i32 %349)
  %351 = load i32, i32* @COMP_INIT, align 4
  %352 = load i64, i64* %5, align 8
  %353 = add nsw i64 %352, 1
  %354 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %355 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %354, i32 0, i32 34
  %356 = load i32*, i32** %355, align 8
  %357 = load i64, i64* %5, align 8
  %358 = add nsw i64 %357, 1
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %351, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i64 %353, i32 %360)
  br label %362

362:                                              ; preds = %334
  %363 = load i64, i64* %5, align 8
  %364 = add nsw i64 %363, 2
  store i64 %364, i64* %5, align 8
  br label %315

365:                                              ; preds = %315
  store i64 0, i64* %5, align 8
  br label %366

366:                                              ; preds = %413, %365
  %367 = load i64, i64* %5, align 8
  %368 = icmp slt i64 %367, 14
  br i1 %368, label %369, label %416

369:                                              ; preds = %366
  %370 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %371 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %383, label %374

374:                                              ; preds = %369
  %375 = load %struct.net_device*, %struct.net_device** %2, align 8
  %376 = load i64, i64* @EEPROM_TxPwIndex_OFDM_24G, align 8
  %377 = load i64, i64* %5, align 8
  %378 = add nsw i64 %376, %377
  %379 = ashr i64 %378, 1
  %380 = trunc i64 %379 to i32
  %381 = call i32 @eprom_read(%struct.net_device* %375, i32 %380)
  %382 = sext i32 %381 to i64
  store i64 %382, i64* %6, align 8
  br label %385

383:                                              ; preds = %369
  %384 = load i64, i64* @EEPROM_Default_TxPower, align 8
  store i64 %384, i64* %6, align 8
  br label %385

385:                                              ; preds = %383, %374
  %386 = load i64, i64* %6, align 8
  %387 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %388 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %387, i32 0, i32 32
  %389 = load i32*, i32** %388, align 8
  %390 = load i64, i64* %5, align 8
  %391 = getelementptr inbounds i32, i32* %389, i64 %390
  %392 = bitcast i32* %391 to i64*
  store i64 %386, i64* %392, align 8
  %393 = load i32, i32* @COMP_INIT, align 4
  %394 = load i64, i64* %5, align 8
  %395 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %396 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %395, i32 0, i32 32
  %397 = load i32*, i32** %396, align 8
  %398 = load i64, i64* %5, align 8
  %399 = getelementptr inbounds i32, i32* %397, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %393, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i64 %394, i32 %400)
  %402 = load i32, i32* @COMP_INIT, align 4
  %403 = load i64, i64* %5, align 8
  %404 = add nsw i64 %403, 1
  %405 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %406 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %405, i32 0, i32 32
  %407 = load i32*, i32** %406, align 8
  %408 = load i64, i64* %5, align 8
  %409 = add nsw i64 %408, 1
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %402, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i64 %404, i32 %411)
  br label %413

413:                                              ; preds = %385
  %414 = load i64, i64* %5, align 8
  %415 = add nsw i64 %414, 2
  store i64 %415, i64* %5, align 8
  br label %366

416:                                              ; preds = %366
  br label %425

417:                                              ; preds = %256
  %418 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %419 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %418, i32 0, i32 11
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @EPROM_93c56, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %417
  br label %424

424:                                              ; preds = %423, %417
  br label %425

425:                                              ; preds = %424, %416
  %426 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %427 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %426, i32 0, i32 11
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @EPROM_93c46, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %515

431:                                              ; preds = %425
  store i64 0, i64* %5, align 8
  br label %432

432:                                              ; preds = %458, %431
  %433 = load i64, i64* %5, align 8
  %434 = icmp slt i64 %433, 14
  br i1 %434, label %435, label %461

435:                                              ; preds = %432
  %436 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %437 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %436, i32 0, i32 34
  %438 = load i32*, i32** %437, align 8
  %439 = load i64, i64* %5, align 8
  %440 = getelementptr inbounds i32, i32* %438, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %443 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %442, i32 0, i32 35
  %444 = load i32*, i32** %443, align 8
  %445 = load i64, i64* %5, align 8
  %446 = getelementptr inbounds i32, i32* %444, i64 %445
  store i32 %441, i32* %446, align 4
  %447 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %448 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %447, i32 0, i32 32
  %449 = load i32*, i32** %448, align 8
  %450 = load i64, i64* %5, align 8
  %451 = getelementptr inbounds i32, i32* %449, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %454 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %453, i32 0, i32 33
  %455 = load i32*, i32** %454, align 8
  %456 = load i64, i64* %5, align 8
  %457 = getelementptr inbounds i32, i32* %455, i64 %456
  store i32 %452, i32* %457, align 4
  br label %458

458:                                              ; preds = %435
  %459 = load i64, i64* %5, align 8
  %460 = add nsw i64 %459, 1
  store i64 %460, i64* %5, align 8
  br label %432

461:                                              ; preds = %432
  %462 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %463 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %462, i32 0, i32 8
  %464 = load i32, i32* %463, align 8
  %465 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %466 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %465, i32 0, i32 18
  store i32 %464, i32* %466, align 8
  %467 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %468 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %467, i32 0, i32 12
  %469 = load i32, i32* %468, align 8
  %470 = and i32 %469, 15
  %471 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %472 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %471, i32 0, i32 19
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 0
  store i32 %470, i32* %474, align 4
  %475 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %476 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %475, i32 0, i32 12
  %477 = load i32, i32* %476, align 8
  %478 = and i32 %477, 240
  %479 = ashr i32 %478, 4
  %480 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %481 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %480, i32 0, i32 19
  %482 = load i32*, i32** %481, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 1
  store i32 %479, i32* %483, align 4
  %484 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %485 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %484, i32 0, i32 12
  %486 = load i32, i32* %485, align 8
  %487 = and i32 %486, 3840
  %488 = ashr i32 %487, 8
  %489 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %490 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %489, i32 0, i32 19
  %491 = load i32*, i32** %490, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 2
  store i32 %488, i32* %492, align 4
  %493 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %494 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %493, i32 0, i32 13
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %497 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %496, i32 0, i32 20
  store i32 %495, i32* %497, align 8
  %498 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %499 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %498, i32 0, i32 9
  %500 = load i32, i32* %499, align 4
  %501 = and i32 %500, 15
  %502 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %503 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %502, i32 0, i32 21
  %504 = load i32*, i32** %503, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 0
  store i32 %501, i32* %505, align 4
  %506 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %507 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %506, i32 0, i32 9
  %508 = load i32, i32* %507, align 4
  %509 = and i32 %508, 240
  %510 = ashr i32 %509, 4
  %511 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %512 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %511, i32 0, i32 21
  %513 = load i32*, i32** %512, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 1
  store i32 %510, i32* %514, align 4
  br label %774

515:                                              ; preds = %425
  %516 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %517 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %516, i32 0, i32 11
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @EPROM_93c56, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %521, label %773

521:                                              ; preds = %515
  store i64 0, i64* %5, align 8
  br label %522

522:                                              ; preds = %566, %521
  %523 = load i64, i64* %5, align 8
  %524 = icmp slt i64 %523, 3
  br i1 %524, label %525, label %569

525:                                              ; preds = %522
  %526 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %527 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %526, i32 0, i32 14
  %528 = load i32*, i32** %527, align 8
  %529 = getelementptr inbounds i32, i32* %528, i64 0
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %532 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %531, i32 0, i32 22
  %533 = load i32*, i32** %532, align 8
  %534 = load i64, i64* %5, align 8
  %535 = getelementptr inbounds i32, i32* %533, i64 %534
  store i32 %530, i32* %535, align 4
  %536 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %537 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %536, i32 0, i32 15
  %538 = load i32*, i32** %537, align 8
  %539 = getelementptr inbounds i32, i32* %538, i64 0
  %540 = load i32, i32* %539, align 4
  %541 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %542 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %541, i32 0, i32 23
  %543 = load i32*, i32** %542, align 8
  %544 = load i64, i64* %5, align 8
  %545 = getelementptr inbounds i32, i32* %543, i64 %544
  store i32 %540, i32* %545, align 4
  %546 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %547 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %546, i32 0, i32 16
  %548 = load i32*, i32** %547, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 0
  %550 = load i32, i32* %549, align 4
  %551 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %552 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %551, i32 0, i32 24
  %553 = load i32*, i32** %552, align 8
  %554 = load i64, i64* %5, align 8
  %555 = getelementptr inbounds i32, i32* %553, i64 %554
  store i32 %550, i32* %555, align 4
  %556 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %557 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %556, i32 0, i32 17
  %558 = load i32*, i32** %557, align 8
  %559 = getelementptr inbounds i32, i32* %558, i64 0
  %560 = load i32, i32* %559, align 4
  %561 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %562 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %561, i32 0, i32 25
  %563 = load i32*, i32** %562, align 8
  %564 = load i64, i64* %5, align 8
  %565 = getelementptr inbounds i32, i32* %563, i64 %564
  store i32 %560, i32* %565, align 4
  br label %566

566:                                              ; preds = %525
  %567 = load i64, i64* %5, align 8
  %568 = add nsw i64 %567, 1
  store i64 %568, i64* %5, align 8
  br label %522

569:                                              ; preds = %522
  store i64 3, i64* %5, align 8
  br label %570

570:                                              ; preds = %614, %569
  %571 = load i64, i64* %5, align 8
  %572 = icmp slt i64 %571, 9
  br i1 %572, label %573, label %617

573:                                              ; preds = %570
  %574 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %575 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %574, i32 0, i32 14
  %576 = load i32*, i32** %575, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 1
  %578 = load i32, i32* %577, align 4
  %579 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %580 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %579, i32 0, i32 22
  %581 = load i32*, i32** %580, align 8
  %582 = load i64, i64* %5, align 8
  %583 = getelementptr inbounds i32, i32* %581, i64 %582
  store i32 %578, i32* %583, align 4
  %584 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %585 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %584, i32 0, i32 15
  %586 = load i32*, i32** %585, align 8
  %587 = getelementptr inbounds i32, i32* %586, i64 1
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %590 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %589, i32 0, i32 23
  %591 = load i32*, i32** %590, align 8
  %592 = load i64, i64* %5, align 8
  %593 = getelementptr inbounds i32, i32* %591, i64 %592
  store i32 %588, i32* %593, align 4
  %594 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %595 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %594, i32 0, i32 16
  %596 = load i32*, i32** %595, align 8
  %597 = getelementptr inbounds i32, i32* %596, i64 1
  %598 = load i32, i32* %597, align 4
  %599 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %600 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %599, i32 0, i32 24
  %601 = load i32*, i32** %600, align 8
  %602 = load i64, i64* %5, align 8
  %603 = getelementptr inbounds i32, i32* %601, i64 %602
  store i32 %598, i32* %603, align 4
  %604 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %605 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %604, i32 0, i32 17
  %606 = load i32*, i32** %605, align 8
  %607 = getelementptr inbounds i32, i32* %606, i64 1
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %610 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %609, i32 0, i32 25
  %611 = load i32*, i32** %610, align 8
  %612 = load i64, i64* %5, align 8
  %613 = getelementptr inbounds i32, i32* %611, i64 %612
  store i32 %608, i32* %613, align 4
  br label %614

614:                                              ; preds = %573
  %615 = load i64, i64* %5, align 8
  %616 = add nsw i64 %615, 1
  store i64 %616, i64* %5, align 8
  br label %570

617:                                              ; preds = %570
  store i64 9, i64* %5, align 8
  br label %618

618:                                              ; preds = %662, %617
  %619 = load i64, i64* %5, align 8
  %620 = icmp slt i64 %619, 14
  br i1 %620, label %621, label %665

621:                                              ; preds = %618
  %622 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %623 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %622, i32 0, i32 14
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 2
  %626 = load i32, i32* %625, align 4
  %627 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %628 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %627, i32 0, i32 22
  %629 = load i32*, i32** %628, align 8
  %630 = load i64, i64* %5, align 8
  %631 = getelementptr inbounds i32, i32* %629, i64 %630
  store i32 %626, i32* %631, align 4
  %632 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %633 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %632, i32 0, i32 15
  %634 = load i32*, i32** %633, align 8
  %635 = getelementptr inbounds i32, i32* %634, i64 2
  %636 = load i32, i32* %635, align 4
  %637 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %638 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %637, i32 0, i32 23
  %639 = load i32*, i32** %638, align 8
  %640 = load i64, i64* %5, align 8
  %641 = getelementptr inbounds i32, i32* %639, i64 %640
  store i32 %636, i32* %641, align 4
  %642 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %643 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %642, i32 0, i32 16
  %644 = load i32*, i32** %643, align 8
  %645 = getelementptr inbounds i32, i32* %644, i64 2
  %646 = load i32, i32* %645, align 4
  %647 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %648 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %647, i32 0, i32 24
  %649 = load i32*, i32** %648, align 8
  %650 = load i64, i64* %5, align 8
  %651 = getelementptr inbounds i32, i32* %649, i64 %650
  store i32 %646, i32* %651, align 4
  %652 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %653 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %652, i32 0, i32 17
  %654 = load i32*, i32** %653, align 8
  %655 = getelementptr inbounds i32, i32* %654, i64 2
  %656 = load i32, i32* %655, align 4
  %657 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %658 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %657, i32 0, i32 25
  %659 = load i32*, i32** %658, align 8
  %660 = load i64, i64* %5, align 8
  %661 = getelementptr inbounds i32, i32* %659, i64 %660
  store i32 %656, i32* %661, align 4
  br label %662

662:                                              ; preds = %621
  %663 = load i64, i64* %5, align 8
  %664 = add nsw i64 %663, 1
  store i64 %664, i64* %5, align 8
  br label %618

665:                                              ; preds = %618
  store i64 0, i64* %5, align 8
  br label %666

666:                                              ; preds = %679, %665
  %667 = load i64, i64* %5, align 8
  %668 = icmp slt i64 %667, 14
  br i1 %668, label %669, label %682

669:                                              ; preds = %666
  %670 = load i32, i32* @COMP_INIT, align 4
  %671 = load i64, i64* %5, align 8
  %672 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %673 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %672, i32 0, i32 22
  %674 = load i32*, i32** %673, align 8
  %675 = load i64, i64* %5, align 8
  %676 = getelementptr inbounds i32, i32* %674, i64 %675
  %677 = load i32, i32* %676, align 4
  %678 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %670, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i64 %671, i32 %677)
  br label %679

679:                                              ; preds = %669
  %680 = load i64, i64* %5, align 8
  %681 = add nsw i64 %680, 1
  store i64 %681, i64* %5, align 8
  br label %666

682:                                              ; preds = %666
  store i64 0, i64* %5, align 8
  br label %683

683:                                              ; preds = %696, %682
  %684 = load i64, i64* %5, align 8
  %685 = icmp slt i64 %684, 14
  br i1 %685, label %686, label %699

686:                                              ; preds = %683
  %687 = load i32, i32* @COMP_INIT, align 4
  %688 = load i64, i64* %5, align 8
  %689 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %690 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %689, i32 0, i32 23
  %691 = load i32*, i32** %690, align 8
  %692 = load i64, i64* %5, align 8
  %693 = getelementptr inbounds i32, i32* %691, i64 %692
  %694 = load i32, i32* %693, align 4
  %695 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %687, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i64 %688, i32 %694)
  br label %696

696:                                              ; preds = %686
  %697 = load i64, i64* %5, align 8
  %698 = add nsw i64 %697, 1
  store i64 %698, i64* %5, align 8
  br label %683

699:                                              ; preds = %683
  store i64 0, i64* %5, align 8
  br label %700

700:                                              ; preds = %713, %699
  %701 = load i64, i64* %5, align 8
  %702 = icmp slt i64 %701, 14
  br i1 %702, label %703, label %716

703:                                              ; preds = %700
  %704 = load i32, i32* @COMP_INIT, align 4
  %705 = load i64, i64* %5, align 8
  %706 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %707 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %706, i32 0, i32 24
  %708 = load i32*, i32** %707, align 8
  %709 = load i64, i64* %5, align 8
  %710 = getelementptr inbounds i32, i32* %708, i64 %709
  %711 = load i32, i32* %710, align 4
  %712 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %704, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i64 %705, i32 %711)
  br label %713

713:                                              ; preds = %703
  %714 = load i64, i64* %5, align 8
  %715 = add nsw i64 %714, 1
  store i64 %715, i64* %5, align 8
  br label %700

716:                                              ; preds = %700
  store i64 0, i64* %5, align 8
  br label %717

717:                                              ; preds = %730, %716
  %718 = load i64, i64* %5, align 8
  %719 = icmp slt i64 %718, 14
  br i1 %719, label %720, label %733

720:                                              ; preds = %717
  %721 = load i32, i32* @COMP_INIT, align 4
  %722 = load i64, i64* %5, align 8
  %723 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %724 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %723, i32 0, i32 25
  %725 = load i32*, i32** %724, align 8
  %726 = load i64, i64* %5, align 8
  %727 = getelementptr inbounds i32, i32* %725, i64 %726
  %728 = load i32, i32* %727, align 4
  %729 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %721, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i64 %722, i32 %728)
  br label %730

730:                                              ; preds = %720
  %731 = load i64, i64* %5, align 8
  %732 = add nsw i64 %731, 1
  store i64 %732, i64* %5, align 8
  br label %717

733:                                              ; preds = %717
  %734 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %735 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %734, i32 0, i32 8
  %736 = load i32, i32* %735, align 8
  %737 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %738 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %737, i32 0, i32 18
  store i32 %736, i32* %738, align 8
  %739 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %740 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %739, i32 0, i32 19
  %741 = load i32*, i32** %740, align 8
  %742 = getelementptr inbounds i32, i32* %741, i64 0
  store i32 0, i32* %742, align 4
  %743 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %744 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %743, i32 0, i32 19
  %745 = load i32*, i32** %744, align 8
  %746 = getelementptr inbounds i32, i32* %745, i64 1
  store i32 0, i32* %746, align 4
  %747 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %748 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %747, i32 0, i32 19
  %749 = load i32*, i32** %748, align 8
  %750 = getelementptr inbounds i32, i32* %749, i64 2
  store i32 0, i32* %750, align 4
  %751 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %752 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %751, i32 0, i32 13
  %753 = load i32, i32* %752, align 4
  %754 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %755 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %754, i32 0, i32 20
  store i32 %753, i32* %755, align 8
  %756 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %757 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %756, i32 0, i32 9
  %758 = load i32, i32* %757, align 4
  %759 = and i32 %758, 15
  %760 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %761 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %760, i32 0, i32 21
  %762 = load i32*, i32** %761, align 8
  %763 = getelementptr inbounds i32, i32* %762, i64 0
  store i32 %759, i32* %763, align 4
  %764 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %765 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %764, i32 0, i32 9
  %766 = load i32, i32* %765, align 4
  %767 = and i32 %766, 240
  %768 = ashr i32 %767, 4
  %769 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %770 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %769, i32 0, i32 21
  %771 = load i32*, i32** %770, align 8
  %772 = getelementptr inbounds i32, i32* %771, i64 1
  store i32 %768, i32* %772, align 4
  br label %773

773:                                              ; preds = %733, %515
  br label %774

774:                                              ; preds = %773, %461
  br label %775

775:                                              ; preds = %774, %194
  %776 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %777 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %776, i32 0, i32 7
  %778 = load i64, i64* %777, align 8
  %779 = load i64, i64* @RF_1T2R, align 8
  %780 = icmp eq i64 %778, %779
  br i1 %780, label %781, label %784

781:                                              ; preds = %775
  %782 = load i32, i32* @COMP_INIT, align 4
  %783 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %782, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  br label %794

784:                                              ; preds = %775
  %785 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %786 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %785, i32 0, i32 7
  %787 = load i64, i64* %786, align 8
  %788 = load i64, i64* @RF_2T4R, align 8
  %789 = icmp eq i64 %787, %788
  br i1 %789, label %790, label %793

790:                                              ; preds = %784
  %791 = load i32, i32* @COMP_INIT, align 4
  %792 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %791, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %793

793:                                              ; preds = %790, %784
  br label %794

794:                                              ; preds = %793, %781
  %795 = load %struct.net_device*, %struct.net_device** %2, align 8
  %796 = call i32 @init_rate_adaptive(%struct.net_device* %795)
  %797 = load i32, i32* @RF_8256, align 4
  %798 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %799 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %798, i32 0, i32 31
  store i32 %797, i32* %799, align 8
  %800 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %801 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %800, i32 0, i32 26
  %802 = load i32, i32* %801, align 8
  %803 = icmp eq i32 %802, 15
  br i1 %803, label %804, label %810

804:                                              ; preds = %794
  %805 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %806 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %805, i32 0, i32 4
  %807 = load i32, i32* %806, align 8
  %808 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %809 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %808, i32 0, i32 27
  store i32 %807, i32* %809, align 4
  br label %816

810:                                              ; preds = %794
  %811 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %812 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %811, i32 0, i32 26
  %813 = load i32, i32* %812, align 8
  %814 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %815 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %814, i32 0, i32 27
  store i32 %813, i32* %815, align 4
  br label %816

816:                                              ; preds = %810, %804
  %817 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %818 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %817, i32 0, i32 1
  %819 = load i32, i32* %818, align 4
  %820 = icmp eq i32 %819, 4486
  br i1 %820, label %821, label %831

821:                                              ; preds = %816
  %822 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %823 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %822, i32 0, i32 2
  %824 = load i32, i32* %823, align 8
  %825 = icmp eq i32 %824, 13060
  br i1 %825, label %826, label %831

826:                                              ; preds = %821
  %827 = load i8*, i8** @RT_CID_DLINK, align 8
  %828 = ptrtoint i8* %827 to i32
  %829 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %830 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %829, i32 0, i32 28
  store i32 %828, i32* %830, align 8
  br label %831

831:                                              ; preds = %826, %821, %816
  %832 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %833 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %832, i32 0, i32 3
  %834 = load i32, i32* %833, align 4
  switch i32 %834, label %885 [
    i32 144, label %835
    i32 145, label %838
    i32 139, label %841
    i32 142, label %844
    i32 138, label %847
    i32 141, label %871
    i32 140, label %876
    i32 143, label %879
    i32 137, label %884
  ]

835:                                              ; preds = %831
  %836 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %837 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %836, i32 0, i32 28
  store i32 133, i32* %837, align 8
  br label %886

838:                                              ; preds = %831
  %839 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %840 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %839, i32 0, i32 28
  store i32 136, i32* %840, align 8
  br label %886

841:                                              ; preds = %831
  %842 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %843 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %842, i32 0, i32 28
  store i32 134, i32* %843, align 8
  br label %886

844:                                              ; preds = %831
  %845 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %846 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %845, i32 0, i32 28
  store i32 135, i32* %846, align 8
  br label %886

847:                                              ; preds = %831
  %848 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %849 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %848, i32 0, i32 28
  store i32 130, i32* %849, align 8
  %850 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %851 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %850, i32 0, i32 4
  %852 = load i32, i32* %851, align 8
  %853 = and i32 %852, 128
  %854 = icmp ne i32 %853, 0
  br i1 %854, label %855, label %862

855:                                              ; preds = %847
  %856 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %857 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %856, i32 0, i32 4
  %858 = load i32, i32* %857, align 8
  %859 = and i32 %858, 127
  %860 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %861 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %860, i32 0, i32 27
  store i32 %859, i32* %861, align 4
  br label %865

862:                                              ; preds = %847
  %863 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %864 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %863, i32 0, i32 27
  store i32 0, i32* %864, align 4
  br label %865

865:                                              ; preds = %862, %855
  %866 = load i32, i32* @COMP_INIT, align 4
  %867 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %868 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %867, i32 0, i32 27
  %869 = load i32, i32* %868, align 4
  %870 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %866, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %869)
  br label %886

871:                                              ; preds = %831
  %872 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %873 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %872, i32 0, i32 29
  store i32 100, i32* %873, align 4
  %874 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %875 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %874, i32 0, i32 28
  store i32 132, i32* %875, align 8
  br label %886

876:                                              ; preds = %831
  %877 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %878 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %877, i32 0, i32 28
  store i32 131, i32* %878, align 8
  br label %886

879:                                              ; preds = %831
  %880 = load i8*, i8** @RT_CID_DLINK, align 8
  %881 = ptrtoint i8* %880 to i32
  %882 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %883 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %882, i32 0, i32 28
  store i32 %881, i32* %883, align 8
  br label %886

884:                                              ; preds = %831
  br label %886

885:                                              ; preds = %831
  br label %886

886:                                              ; preds = %885, %884, %879, %876, %871, %865, %844, %841, %838, %835
  %887 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %888 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %887, i32 0, i32 27
  %889 = load i32, i32* %888, align 4
  %890 = load i32, i32* @CHANNEL_PLAN_LEN, align 4
  %891 = sub nsw i32 %890, 1
  %892 = icmp sgt i32 %889, %891
  br i1 %892, label %893, label %896

893:                                              ; preds = %886
  %894 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %895 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %894, i32 0, i32 27
  store i32 0, i32* %895, align 4
  br label %896

896:                                              ; preds = %893, %886
  %897 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %898 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %897, i32 0, i32 28
  %899 = load i32, i32* %898, align 8
  switch i32 %899, label %922 [
    i32 133, label %900
    i32 136, label %901
    i32 134, label %905
    i32 135, label %909
    i32 132, label %913
    i32 131, label %917
    i32 130, label %921
  ]

900:                                              ; preds = %896
  br label %923

901:                                              ; preds = %896
  %902 = load i8*, i8** @SW_LED_MODE2, align 8
  %903 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %904 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %903, i32 0, i32 30
  store i8* %902, i8** %904, align 8
  br label %923

905:                                              ; preds = %896
  %906 = load i8*, i8** @SW_LED_MODE3, align 8
  %907 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %908 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %907, i32 0, i32 30
  store i8* %906, i8** %908, align 8
  br label %923

909:                                              ; preds = %896
  %910 = load i8*, i8** @SW_LED_MODE4, align 8
  %911 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %912 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %911, i32 0, i32 30
  store i8* %910, i8** %912, align 8
  br label %923

913:                                              ; preds = %896
  %914 = load i8*, i8** @SW_LED_MODE5, align 8
  %915 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %916 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %915, i32 0, i32 30
  store i8* %914, i8** %916, align 8
  br label %923

917:                                              ; preds = %896
  %918 = load i8*, i8** @SW_LED_MODE6, align 8
  %919 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %920 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %919, i32 0, i32 30
  store i8* %918, i8** %920, align 8
  br label %923

921:                                              ; preds = %896
  br label %922

922:                                              ; preds = %896, %921
  br label %923

923:                                              ; preds = %922, %917, %913, %909, %905, %901, %900
  %924 = load i32, i32* @COMP_INIT, align 4
  %925 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %926 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %925, i32 0, i32 26
  %927 = load i32, i32* %926, align 8
  %928 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %924, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %927)
  %929 = load i32, i32* @COMP_INIT, align 4
  %930 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %931 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %930, i32 0, i32 27
  %932 = load i32, i32* %931, align 4
  %933 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %929, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 %932)
  %934 = load i32, i32* @COMP_INIT, align 4
  %935 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %936 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %935, i32 0, i32 30
  %937 = load i8*, i8** %936, align 8
  %938 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %934, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8* %937)
  %939 = load i32, i32* @COMP_TRACE, align 4
  %940 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %939, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @eprom_read(%struct.net_device*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @init_rate_adaptive(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
