; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_adapter_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_adapter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.net_device = type { i64 }
%struct.r8192_priv = type { i64, i64, i64, i32, i32, i64, i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"--->InitializeAdapter8192SUsb()\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"InitializeAdapter8192SUsb(): Download Firmware failed once, Download again!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"InitializeAdapter8192SUsb(): Download Firmware failed twice, end!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"InitializeAdapter8192SUsb(): Fail to configure MAC!!\0A\00", align 1
@WDCAPARA_ADD = common dso_local global i32* null, align 8
@AcmHwCtrl = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"InitializeAdapter8192SUsb(): Fail to configure BB!!\0A\00", align 1
@rFPGA0_AnalogParameter2 = common dso_local global i32 0, align 4
@RF_OP_By_SW_3wire = common dso_local global i32 0, align 4
@AFE_XTAL_CTRL = common dso_local global i64 0, align 8
@VERSION_8192S_ACUT = common dso_local global i64 0, align 8
@SPS1_CTRL = common dso_local global i64 0, align 8
@RF_EN = common dso_local global i32 0, align 4
@RF_RSTB = common dso_local global i32 0, align 4
@RF_SDMRSTB = common dso_local global i32 0, align 4
@RF_CTRL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"InitializeAdapter8192SUsb(): Fail to configure RF!!\0A\00", align 1
@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bCCKEn = common dso_local global i32 0, align 4
@bOFDMEn = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i64 0, align 8
@IDR0 = common dso_local global i32 0, align 4
@IDR4 = common dso_local global i32 0, align 4
@RESET_TYPE_NORESET = common dso_local global i64 0, align 8
@WIRELESS_MODE_G = common dso_local global i32 0, align 4
@SCR_TxEncEnable = common dso_local global i32 0, align 4
@SCR_RxDecEnable = common dso_local global i32 0, align 4
@SCR_NoSKMC = common dso_local global i32 0, align 4
@SECR = common dso_local global i64 0, align 8
@MAC_PINMUX_CFG = common dso_local global i64 0, align 8
@GPIOMUX_EN = common dso_local global i32 0, align 4
@WFM5 = common dso_local global i32 0, align 4
@FW_RA_RESET = common dso_local global i32 0, align 4
@FW_RA_ACTIVE = common dso_local global i32 0, align 4
@FW_RA_REFRESH = common dso_local global i32 0, align 4
@FW_BB_RESET_ENABLE = common dso_local global i32 0, align 4
@Adapter = common dso_local global %struct.TYPE_12__* null, align 8
@COMP_RF = common dso_local global i32 0, align 4
@FW_IQK_ENABLE = common dso_local global i32 0, align 4
@MAX_RX_QUEUE = common dso_local global i64 0, align 8
@PipeIndex = common dso_local global i64 0, align 8
@RF_CHANGE_BY_PS = common dso_local global i64 0, align 8
@RF_CHANGE_BY_SW = common dso_local global i64 0, align 8
@RT_RX_SPINLOCK = common dso_local global i32 0, align 4
@eRfOff = common dso_local global i32 0, align 4
@eRfOn = common dso_local global i32 0, align 4
@pHalData = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8192SU_adapter_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %11 = load i32, i32* @COMP_INIT, align 4
  %12 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %23, %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @rtl8192SU_MacConfigBeforeFwDownloadASIC(%struct.net_device* %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @FirmwareDownload92S(%struct.net_device* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @COMP_INIT, align 4
  %25 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %24, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %13

28:                                               ; preds = %20
  %29 = load i32, i32* @COMP_INIT, align 4
  %30 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %29, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  br label %233

31:                                               ; preds = %13
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @rtl8192SU_MacConfigAfterFwDownload(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @PHY_MACConfig8192S(%struct.net_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @COMP_INIT, align 4
  %40 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %39, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %233

41:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = load i32*, i32** @WDCAPARA_ADD, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @write_nic_dword(%struct.net_device* %46, i32 %51, i32 6177570)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %42

56:                                               ; preds = %42
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = load i64, i64* @AcmHwCtrl, align 8
  %59 = call i32 @write_nic_byte(%struct.net_device* %57, i64 %58, i32 1)
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i32 @PHY_BBConfig8192S(%struct.net_device* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @COMP_INIT, align 4
  %66 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %233

67:                                               ; preds = %56
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = load i32, i32* @rFPGA0_AnalogParameter2, align 4
  %70 = call i32 (%struct.net_device*, i32, i32, i32, ...) @rtl8192_setBBreg(%struct.net_device* %68, i32 %69, i32 255, i32 88)
  %71 = load i32, i32* @RF_OP_By_SW_3wire, align 4
  %72 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %73 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %72, i32 0, i32 10
  store i32 %71, i32* %73, align 4
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = load i64, i64* @AFE_XTAL_CTRL, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32 @write_nic_byte(%struct.net_device* %74, i64 %76, i32 219)
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VERSION_8192S_ACUT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %67
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = load i64, i64* @SPS1_CTRL, align 8
  %86 = add nsw i64 %85, 3
  %87 = load i32, i32* @RF_EN, align 4
  %88 = load i32, i32* @RF_RSTB, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @RF_SDMRSTB, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @write_nic_byte(%struct.net_device* %84, i64 %86, i32 %91)
  br label %102

93:                                               ; preds = %67
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = load i64, i64* @RF_CTRL, align 8
  %96 = load i32, i32* @RF_EN, align 4
  %97 = load i32, i32* @RF_RSTB, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @RF_SDMRSTB, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @write_nic_byte(%struct.net_device* %94, i64 %95, i32 %100)
  br label %102

102:                                              ; preds = %93, %83
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = call i32 @PHY_RFConfig8192S(%struct.net_device* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @COMP_INIT, align 4
  %109 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %108, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %233

110:                                              ; preds = %102
  %111 = load %struct.net_device*, %struct.net_device** %2, align 8
  %112 = load i32, i32* @rFPGA0_RFMOD, align 4
  %113 = load i32, i32* @bCCKEn, align 4
  %114 = call i32 (%struct.net_device*, i32, i32, i32, ...) @rtl8192_setBBreg(%struct.net_device* %111, i32 %112, i32 %113, i32 1)
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = load i32, i32* @rFPGA0_RFMOD, align 4
  %117 = load i32, i32* @bOFDMEn, align 4
  %118 = call i32 (%struct.net_device*, i32, i32, i32, ...) @rtl8192_setBBreg(%struct.net_device* %115, i32 %116, i32 %117, i32 1)
  %119 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %120 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @RF_1T1R, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %110
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = load i32, i32* @rFPGA0_RFMOD, align 4
  %127 = call i32 (%struct.net_device*, i32, i32, i32, ...) @rtl8192_setBBreg(%struct.net_device* %125, i32 %126, i32 -16777216, i32 3)
  br label %128

128:                                              ; preds = %124, %110
  %129 = load %struct.net_device*, %struct.net_device** %2, align 8
  %130 = call i32 @rtl8192SU_HwConfigureRTL8192SUsb(%struct.net_device* %129)
  %131 = load %struct.net_device*, %struct.net_device** %2, align 8
  %132 = load i32, i32* @IDR0, align 4
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i32*
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @write_nic_dword(%struct.net_device* %131, i32 %132, i32 %138)
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = load i32, i32* @IDR4, align 4
  %142 = load %struct.net_device*, %struct.net_device** %2, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 4
  %146 = inttoptr i64 %145 to i32*
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @write_nic_word(%struct.net_device* %140, i32 %141, i32 %148)
  %150 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %151 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %128
  %155 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %156 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @RESET_TYPE_NORESET, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %163 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %162, i32 0, i32 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @rtl8192_SetWirelessMode(%struct.net_device* %161, i32 %166)
  br label %168

168:                                              ; preds = %160, %154
  br label %178

169:                                              ; preds = %128
  %170 = load i32, i32* @WIRELESS_MODE_G, align 4
  %171 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %172 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %171, i32 0, i32 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  store i32 %170, i32* %174, align 4
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = load i32, i32* @WIRELESS_MODE_G, align 4
  %177 = call i32 @rtl8192_SetWirelessMode(%struct.net_device* %175, i32 %176)
  br label %178

178:                                              ; preds = %169, %168
  %179 = load %struct.net_device*, %struct.net_device** %2, align 8
  %180 = call i32 @CamResetAllEntry(%struct.net_device* %179)
  store i32 0, i32* %7, align 4
  %181 = load i32, i32* @SCR_TxEncEnable, align 4
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* @SCR_RxDecEnable, align 4
  %185 = load i32, i32* %7, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* @SCR_NoSKMC, align 4
  %188 = load i32, i32* %7, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %7, align 4
  %190 = load %struct.net_device*, %struct.net_device** %2, align 8
  %191 = load i64, i64* @SECR, align 8
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @write_nic_byte(%struct.net_device* %190, i64 %191, i32 %192)
  %194 = load %struct.net_device*, %struct.net_device** %2, align 8
  %195 = call i32 @PHY_GetHWRegOriginalValue(%struct.net_device* %194)
  %196 = load %struct.net_device*, %struct.net_device** %2, align 8
  %197 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %198 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @PHY_SetTxPowerLevel8192S(%struct.net_device* %196, i32 %199)
  store i32 0, i32* %8, align 4
  %201 = load %struct.net_device*, %struct.net_device** %2, align 8
  %202 = load i64, i64* @MAC_PINMUX_CFG, align 8
  %203 = call i32 @read_nic_byte(%struct.net_device* %201, i64 %202)
  store i32 %203, i32* %8, align 4
  %204 = load %struct.net_device*, %struct.net_device** %2, align 8
  %205 = load i64, i64* @MAC_PINMUX_CFG, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @GPIOMUX_EN, align 4
  %208 = xor i32 %207, -1
  %209 = and i32 %206, %208
  %210 = call i32 @write_nic_byte(%struct.net_device* %204, i64 %205, i32 %209)
  %211 = load %struct.net_device*, %struct.net_device** %2, align 8
  %212 = load i32, i32* @WFM5, align 4
  %213 = load i32, i32* @FW_RA_RESET, align 4
  %214 = call i32 @write_nic_dword(%struct.net_device* %211, i32 %212, i32 %213)
  %215 = load %struct.net_device*, %struct.net_device** %2, align 8
  %216 = call i32 @ChkFwCmdIoDone(%struct.net_device* %215)
  %217 = load %struct.net_device*, %struct.net_device** %2, align 8
  %218 = load i32, i32* @WFM5, align 4
  %219 = load i32, i32* @FW_RA_ACTIVE, align 4
  %220 = call i32 @write_nic_dword(%struct.net_device* %217, i32 %218, i32 %219)
  %221 = load %struct.net_device*, %struct.net_device** %2, align 8
  %222 = call i32 @ChkFwCmdIoDone(%struct.net_device* %221)
  %223 = load %struct.net_device*, %struct.net_device** %2, align 8
  %224 = load i32, i32* @WFM5, align 4
  %225 = load i32, i32* @FW_RA_REFRESH, align 4
  %226 = call i32 @write_nic_dword(%struct.net_device* %223, i32 %224, i32 %225)
  %227 = load %struct.net_device*, %struct.net_device** %2, align 8
  %228 = call i32 @ChkFwCmdIoDone(%struct.net_device* %227)
  %229 = load %struct.net_device*, %struct.net_device** %2, align 8
  %230 = load i32, i32* @WFM5, align 4
  %231 = load i32, i32* @FW_BB_RESET_ENABLE, align 4
  %232 = call i32 @write_nic_dword(%struct.net_device* %229, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %178, %107, %64, %38, %28
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @rtl8192SU_MacConfigBeforeFwDownloadASIC(%struct.net_device*) #1

declare dso_local i32 @FirmwareDownload92S(%struct.net_device*) #1

declare dso_local i32 @rtl8192SU_MacConfigAfterFwDownload(%struct.net_device*) #1

declare dso_local i32 @PHY_MACConfig8192S(%struct.net_device*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @PHY_BBConfig8192S(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32, ...) #1

declare dso_local i32 @PHY_RFConfig8192S(%struct.net_device*) #1

declare dso_local i32 @rtl8192SU_HwConfigureRTL8192SUsb(%struct.net_device*) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_SetWirelessMode(%struct.net_device*, i32) #1

declare dso_local i32 @CamResetAllEntry(%struct.net_device*) #1

declare dso_local i32 @PHY_GetHWRegOriginalValue(%struct.net_device*) #1

declare dso_local i32 @PHY_SetTxPowerLevel8192S(%struct.net_device*, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i64) #1

declare dso_local i32 @ChkFwCmdIoDone(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
