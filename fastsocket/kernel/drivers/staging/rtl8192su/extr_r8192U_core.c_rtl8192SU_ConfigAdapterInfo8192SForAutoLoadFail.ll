; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_ConfigAdapterInfo8192SForAutoLoadFail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_ConfigAdapterInfo8192SForAutoLoadFail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.r8192_priv = type { i32, i32, i32**, i32**, i32**, i32**, i32**, i32**, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32*, i32, i64, i64, i64, i64, i64, i64 }

@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"====> ConfigAdapterInfo8192SForAutoLoadFail\0A\00", align 1
@SYS_ISO_CTRL = common dso_local global i64 0, align 8
@PMC_FSM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"EEPROM VID = 0x%4x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"EEPROM PID = 0x%4x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"EEPROM Customer ID: 0x%2x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"EEPROM SubCustomer ID: 0x%2x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"EEPROM ChannelPlan = 0x%4x\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"IgnoreDiffRateTxPowerOffset = %d\0A\00", align 1
@EEPROM_USB_Default_OPTIONAL_FUNC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"USB Option = %#x\0A\00", align 1
@EEPROM_USB_Default_PHY_PARAM = common dso_local global i32 0, align 4
@rtl8192SU_ConfigAdapterInfo8192SForAutoLoadFail.sMacAddr = internal global [6 x i32] [i32 0, i32 224, i32 76, i32 129, i32 146, i32 0], align 16
@IDR0 = common dso_local global i32 0, align 4
@IDR4 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [80 x i8] c"ReadAdapterInfo8192SEFuse(), Permanent Address = %02x-%02x-%02x-%02x-%02x-%02x\0A\00", align 1
@EEPROM_Default_BoardType = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@EEPROM_Default_PwDiff = common dso_local global i32 0, align 4
@EEPROM_Default_ThermalMeter = common dso_local global i32 0, align 4
@EEPROM_Default_CrystalCap = common dso_local global i32 0, align 4
@EEPROM_Default_TxPowerBase = common dso_local global i32 0, align 4
@EEPROM_Default_TSSI = common dso_local global i8* null, align 8
@EEPROM_Default_TxPwrTkMode = common dso_local global i32 0, align 4
@EEPROM_Default_TxPower = common dso_local global i32 0, align 4
@SW_LED_MODE0 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"<==== ConfigAdapterInfo8192SForAutoLoadFail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192SU_ConfigAdapterInfo8192SForAutoLoadFail(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %3, align 8
  %10 = load i32, i32* @COMP_INIT, align 4
  %11 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i64, i64* @SYS_ISO_CTRL, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @write_nic_byte(%struct.net_device* %12, i64 %14, i32 232)
  %16 = call i32 @mdelay(i32 10)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i64, i64* @PMC_FSM, align 8
  %19 = call i32 @write_nic_byte(%struct.net_device* %17, i64 %18, i32 2)
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 28
  store i64 0, i64* %21, align 8
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 27
  store i64 0, i64* %23, align 8
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 29
  store i64 0, i64* %25, align 8
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 24
  store i64 0, i64* %27, align 8
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 26
  store i64 0, i64* %29, align 8
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 25
  store i64 0, i64* %31, align 8
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* @COMP_INIT, align 4
  %35 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %36 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %35, i32 0, i32 28
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @COMP_INIT, align 4
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 27
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @COMP_INIT, align 4
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 26
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @COMP_INIT, align 4
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 25
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @COMP_INIT, align 4
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 24
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @COMP_INIT, align 4
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EEPROM_USB_Default_OPTIONAL_FUNC, align 4
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 23
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @COMP_INIT, align 4
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 23
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %83, %1
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 5
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* @EEPROM_USB_Default_PHY_PARAM, align 4
  %77 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %78 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %77, i32 0, i32 22
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %72

86:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %101, %86
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 6
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* @rtl8192SU_ConfigAdapterInfo8192SForAutoLoadFail.sMacAddr, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %87

104:                                              ; preds = %87
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = load i32, i32* @IDR0, align 4
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @write_nic_dword(%struct.net_device* %105, i32 %106, i32 %111)
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = load i32, i32* @IDR4, align 4
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @write_nic_word(%struct.net_device* %113, i32 %114, i32 %120)
  %122 = load i32, i32* @COMP_INIT, align 4
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %122, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.8, i64 0, i64 0), i32 %127, i32 %132, i32 %137, i32 %142, i32 %147, i32 %152)
  %154 = load i32, i32* @EEPROM_Default_BoardType, align 4
  %155 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %156 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %155, i32 0, i32 21
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @RF_1T2R, align 4
  %158 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %159 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %158, i32 0, i32 20
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @EEPROM_Default_PwDiff, align 4
  %161 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %162 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %161, i32 0, i32 13
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @EEPROM_Default_ThermalMeter, align 4
  %164 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %165 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @EEPROM_Default_CrystalCap, align 4
  %167 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %168 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %167, i32 0, i32 11
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* @EEPROM_Default_TxPowerBase, align 4
  %170 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %171 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %170, i32 0, i32 19
  store i32 %169, i32* %171, align 8
  %172 = load i8*, i8** @EEPROM_Default_TSSI, align 8
  %173 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %174 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %173, i32 0, i32 18
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** @EEPROM_Default_TSSI, align 8
  %176 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %177 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %176, i32 0, i32 17
  store i8* %175, i8** %177, align 8
  %178 = load i32, i32* @EEPROM_Default_TxPwrTkMode, align 4
  %179 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %180 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %179, i32 0, i32 16
  store i32 %178, i32* %180, align 8
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %225, %104
  %182 = load i32, i32* %4, align 4
  %183 = icmp slt i32 %182, 2
  br i1 %183, label %184, label %228

184:                                              ; preds = %181
  store i32 0, i32* %6, align 4
  br label %185

185:                                              ; preds = %221, %184
  %186 = load i32, i32* %6, align 4
  %187 = icmp slt i32 %186, 3
  br i1 %187, label %188, label %224

188:                                              ; preds = %185
  %189 = load i32, i32* @EEPROM_Default_TxPower, align 4
  %190 = and i32 %189, 255
  %191 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %192 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %191, i32 0, i32 4
  %193 = load i32**, i32*** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32*, i32** %193, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %190, i32* %200, align 4
  %201 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %202 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %201, i32 0, i32 3
  %203 = load i32**, i32*** %202, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %190, i32* %210, align 4
  %211 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %212 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %211, i32 0, i32 2
  %213 = load i32**, i32*** %212, align 8
  %214 = load i32, i32* %4, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32*, i32** %213, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %190, i32* %220, align 4
  br label %221

221:                                              ; preds = %188
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %6, align 4
  br label %185

224:                                              ; preds = %185
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %4, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %4, align 4
  br label %181

228:                                              ; preds = %181
  store i32 0, i32* %6, align 4
  br label %229

229:                                              ; preds = %233, %228
  %230 = load i32, i32* %6, align 4
  %231 = icmp slt i32 %230, 3
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %6, align 4
  br label %229

236:                                              ; preds = %229
  store i32 0, i32* %6, align 4
  br label %237

237:                                              ; preds = %314, %236
  %238 = load i32, i32* %6, align 4
  %239 = icmp slt i32 %238, 14
  br i1 %239, label %240, label %317

240:                                              ; preds = %237
  %241 = load i32, i32* %6, align 4
  %242 = icmp slt i32 %241, 3
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  store i32 0, i32* %5, align 4
  br label %250

244:                                              ; preds = %240
  %245 = load i32, i32* %6, align 4
  %246 = icmp slt i32 %245, 9
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  store i32 1, i32* %5, align 4
  br label %249

248:                                              ; preds = %244
  store i32 2, i32* %5, align 4
  br label %249

249:                                              ; preds = %248, %247
  br label %250

250:                                              ; preds = %249, %243
  %251 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %252 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %251, i32 0, i32 2
  %253 = load i32**, i32*** %252, align 8
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %253, i64 %255
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %263 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %262, i32 0, i32 5
  %264 = load i32**, i32*** %263, align 8
  %265 = load i32, i32* %4, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32*, i32** %264, i64 %266
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %261, i32* %271, align 4
  %272 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %273 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %272, i32 0, i32 3
  %274 = load i32**, i32*** %273, align 8
  %275 = load i32, i32* %4, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32*, i32** %274, i64 %276
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %284 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %283, i32 0, i32 6
  %285 = load i32**, i32*** %284, align 8
  %286 = load i32, i32* %4, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32*, i32** %285, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %6, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 %282, i32* %292, align 4
  %293 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %294 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %293, i32 0, i32 4
  %295 = load i32**, i32*** %294, align 8
  %296 = load i32, i32* %4, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %5, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %305 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %304, i32 0, i32 7
  %306 = load i32**, i32*** %305, align 8
  %307 = load i32, i32* %4, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32*, i32** %306, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  store i32 %303, i32* %313, align 4
  br label %314

314:                                              ; preds = %250
  %315 = load i32, i32* %6, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %6, align 4
  br label %237

317:                                              ; preds = %237
  store i32 0, i32* %6, align 4
  br label %318

318:                                              ; preds = %322, %317
  %319 = load i32, i32* %6, align 4
  %320 = icmp slt i32 %319, 14
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %6, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %6, align 4
  br label %318

325:                                              ; preds = %318
  %326 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %327 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = mul nsw i32 %328, 100
  %330 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %331 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %330, i32 0, i32 8
  store i32 %329, i32* %331, align 8
  %332 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %333 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %332, i32 0, i32 13
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %336 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %335, i32 0, i32 15
  store i32 %334, i32* %336, align 4
  %337 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %338 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %337, i32 0, i32 13
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %341 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %340, i32 0, i32 14
  store i32 %339, i32* %341, align 8
  %342 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %343 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %342, i32 0, i32 11
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %346 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %345, i32 0, i32 12
  store i32 %344, i32* %346, align 8
  %347 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %348 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %351 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %350, i32 0, i32 9
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 0
  store i32 %349, i32* %353, align 4
  %354 = load i32, i32* @SW_LED_MODE0, align 4
  %355 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %356 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %355, i32 0, i32 10
  store i32 %354, i32* %356, align 8
  %357 = load %struct.net_device*, %struct.net_device** %2, align 8
  %358 = call i32 @init_rate_adaptive(%struct.net_device* %357)
  %359 = load i32, i32* @COMP_INIT, align 4
  %360 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %359, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @init_rate_adaptive(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
