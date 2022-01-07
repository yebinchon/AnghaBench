; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_rtl8185b_adapter_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_rtl8185b_adapter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i64 }
%struct.r8180_priv = type { i64, i64, i32, i64, i64, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i32 }

@BIT5 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i32 0, align 4
@MAC4 = common dso_local global i32 0, align 4
@MSR = common dso_local global i32 0, align 4
@BcnItv = common dso_local global i32 0, align 4
@AtimWnd = common dso_local global i32 0, align 4
@FEMR = common dso_local global i32 0, align 4
@WPA_CONFIG = common dso_local global i32 0, align 4
@RFSW_CTRL = common dso_local global i32 0, align 4
@CR9346 = common dso_local global i32 0, align 4
@CONFIG3 = common dso_local global i32 0, align 4
@CONFIG3_PARM_En = common dso_local global i32 0, align 4
@ANAPARAM2 = common dso_local global i32 0, align 4
@ANAPARM2_ASIC_ON = common dso_local global i32 0, align 4
@ANAPARAM = common dso_local global i32 0, align 4
@ANAPARM_ASIC_ON = common dso_local global i32 0, align 4
@ANAPARAM3 = common dso_local global i32 0, align 4
@CONFIG5 = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@PSR = common dso_local global i32 0, align 4
@RFPinsOutput = common dso_local global i32 0, align 4
@RFPinsSelect = common dso_local global i32 0, align 4
@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i32 0, align 4
@WIRELESS_MODE_A = common dso_local global i32 0, align 4
@WIRELESS_MODE_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"InitializeAdapter8185(): No valid wireless mode supported, SupportedWirelessMode(%x)!!!\0A\00", align 1
@eRfOff = common dso_local global i32 0, align 4
@eRfOn = common dso_local global i32 0, align 4
@RF_CHANGE_BY_IPS = common dso_local global i32 0, align 4
@Adapter = common dso_local global %struct.TYPE_5__* null, align 8
@RF_OFF = common dso_local global i32 0, align 4
@RF_ON = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8185b_adapter_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %12)
  store %struct.r8180_priv* %13, %struct.r8180_priv** %3, align 8
  %14 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %15 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %14, i32 0, i32 5
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %15, align 8
  store %struct.ieee80211_device* %16, %struct.ieee80211_device** %4, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i32, i32* @BIT5, align 4
  %19 = load i32, i32* @BIT6, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @BIT0, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @write_nic_byte(%struct.net_device* %17, i32 590, i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @rtl8180_reset(%struct.net_device* %24)
  %26 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %29 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @HwConfigureRTL8185(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i32, i32* @MAC0, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @write_nic_dword(%struct.net_device* %32, i32 %33, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = load i32, i32* @MAC4, align 4
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 65535
  %50 = call i32 @write_nic_word(%struct.net_device* %41, i32 %42, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = load i32, i32* @MSR, align 4
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load i32, i32* @MSR, align 4
  %55 = call i32 @read_nic_byte(%struct.net_device* %53, i32 %54)
  %56 = and i32 %55, 243
  %57 = call i32 @write_nic_byte(%struct.net_device* %51, i32 %52, i32 %56)
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = load i32, i32* @BcnItv, align 4
  %60 = call i32 @write_nic_word(%struct.net_device* %58, i32 %59, i32 100)
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = load i32, i32* @AtimWnd, align 4
  %63 = call i32 @write_nic_word(%struct.net_device* %61, i32 %62, i32 2)
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = load i32, i32* @FEMR, align 4
  %66 = call i32 @PlatformIOWrite2Byte(%struct.net_device* %64, i32 %65, i32 65535)
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = load i32, i32* @WPA_CONFIG, align 4
  %69 = call i32 @write_nic_byte(%struct.net_device* %67, i32 %68, i32 0)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = call i32 @MacConfig_85BASIC(%struct.net_device* %70)
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = load i32, i32* @RFSW_CTRL, align 4
  %74 = call i32 @PlatformIOWrite2Byte(%struct.net_device* %72, i32 %73, i32 22170)
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = load i32, i32* @CR9346, align 4
  %77 = call i32 @write_nic_byte(%struct.net_device* %75, i32 %76, i32 192)
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = load i32, i32* @CONFIG3, align 4
  %80 = call i32 @read_nic_byte(%struct.net_device* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = load i32, i32* @CONFIG3, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @CONFIG3_PARM_En, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @write_nic_byte(%struct.net_device* %81, i32 %82, i32 %85)
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = load i32, i32* @ANAPARAM2, align 4
  %89 = load i32, i32* @ANAPARM2_ASIC_ON, align 4
  %90 = call i32 @write_nic_dword(%struct.net_device* %87, i32 %88, i32 %89)
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = load i32, i32* @ANAPARAM, align 4
  %93 = load i32, i32* @ANAPARM_ASIC_ON, align 4
  %94 = call i32 @write_nic_dword(%struct.net_device* %91, i32 %92, i32 %93)
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = load i32, i32* @ANAPARAM3, align 4
  %97 = call i32 @write_nic_word(%struct.net_device* %95, i32 %96, i32 16)
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = load i32, i32* @CONFIG3, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @write_nic_byte(%struct.net_device* %98, i32 %99, i32 %100)
  %102 = load %struct.net_device*, %struct.net_device** %2, align 8
  %103 = load i32, i32* @CR9346, align 4
  %104 = call i32 @write_nic_byte(%struct.net_device* %102, i32 %103, i32 0)
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = load i32, i32* @CR9346, align 4
  %107 = call i32 @read_nic_byte(%struct.net_device* %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = load i32, i32* @CR9346, align 4
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %110, 192
  %112 = call i32 @write_nic_byte(%struct.net_device* %108, i32 %109, i32 %111)
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = load i32, i32* @CONFIG5, align 4
  %115 = call i32 @read_nic_byte(%struct.net_device* %113, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @BIT3, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  store i32 %119, i32* %10, align 4
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = load i32, i32* @CONFIG5, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @write_nic_byte(%struct.net_device* %120, i32 %121, i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = and i32 %124, -193
  store i32 %125, i32* %9, align 4
  %126 = load %struct.net_device*, %struct.net_device** %2, align 8
  %127 = load i32, i32* @CR9346, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @write_nic_byte(%struct.net_device* %126, i32 %127, i32 %128)
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = load i32, i32* @PSR, align 4
  %132 = call i32 @read_nic_byte(%struct.net_device* %130, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = load i32, i32* @PSR, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @BIT3, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @write_nic_byte(%struct.net_device* %133, i32 %134, i32 %137)
  %139 = load %struct.net_device*, %struct.net_device** %2, align 8
  %140 = load i32, i32* @RFPinsOutput, align 4
  %141 = call i32 @write_nic_word(%struct.net_device* %139, i32 %140, i32 1152)
  %142 = load %struct.net_device*, %struct.net_device** %2, align 8
  %143 = call i32 @SetOutputEnableOfRfPins(%struct.net_device* %142)
  %144 = load %struct.net_device*, %struct.net_device** %2, align 8
  %145 = load i32, i32* @RFPinsSelect, align 4
  %146 = call i32 @write_nic_word(%struct.net_device* %144, i32 %145, i32 9352)
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = call i32 @PhyConfig8185(%struct.net_device* %147)
  %149 = load %struct.net_device*, %struct.net_device** %2, align 8
  %150 = call i32 @GetSupportedWirelessMode8185(%struct.net_device* %149)
  store i32 %150, i32* %5, align 4
  %151 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %152 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @WIRELESS_MODE_B, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %1
  %157 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %158 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @WIRELESS_MODE_G, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %156
  %163 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %164 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @WIRELESS_MODE_A, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %162
  %169 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %170 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @WIRELESS_MODE_AUTO, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i32 1, i32* %7, align 4
  br label %190

175:                                              ; preds = %168, %162, %156, %1
  %176 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %177 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @WIRELESS_MODE_AUTO, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %175
  %182 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %183 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %5, align 4
  %186 = and i32 %184, %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  store i32 1, i32* %7, align 4
  br label %189

189:                                              ; preds = %188, %181, %175
  br label %190

190:                                              ; preds = %189, %174
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %190
  %194 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %195 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @WIRELESS_MODE_AUTO, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %234

199:                                              ; preds = %193, %190
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* @WIRELESS_MODE_A, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32, i32* @WIRELESS_MODE_A, align 4
  store i32 %205, i32* %6, align 4
  br label %226

206:                                              ; preds = %199
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @WIRELESS_MODE_G, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @WIRELESS_MODE_G, align 4
  store i32 %212, i32* %6, align 4
  br label %225

213:                                              ; preds = %206
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @WIRELESS_MODE_B, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i32, i32* @WIRELESS_MODE_B, align 4
  store i32 %219, i32* %6, align 4
  br label %224

220:                                              ; preds = %213
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @DMESGW(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* @WIRELESS_MODE_B, align 4
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %220, %218
  br label %225

225:                                              ; preds = %224, %211
  br label %226

226:                                              ; preds = %225, %204
  %227 = load i32, i32* %7, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i32, i32* %6, align 4
  %231 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %232 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 4
  br label %233

233:                                              ; preds = %229, %226
  br label %238

234:                                              ; preds = %193
  %235 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %236 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %234, %233
  %239 = load i32, i32* @eRfOff, align 4
  %240 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %241 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %243 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %242, i32 0, i32 1
  store i64 0, i64* %243, align 8
  %244 = load %struct.net_device*, %struct.net_device** %2, align 8
  %245 = load i32, i32* @eRfOn, align 4
  %246 = call i32 @MgntActSet_RF_State(%struct.net_device* %244, i32 %245, i32 0)
  %247 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %248 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %238
  %252 = load %struct.net_device*, %struct.net_device** %2, align 8
  %253 = load i32, i32* @eRfOff, align 4
  %254 = load i32, i32* @RF_CHANGE_BY_IPS, align 4
  %255 = call i32 @MgntActSet_RF_State(%struct.net_device* %252, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %251, %238
  %257 = load %struct.net_device*, %struct.net_device** %2, align 8
  %258 = load i32, i32* %6, align 4
  %259 = call i32 @ActSetWirelessMode8185(%struct.net_device* %257, i32 %258)
  %260 = load %struct.net_device*, %struct.net_device** %2, align 8
  %261 = call i32 @rtl8185b_irq_enable(%struct.net_device* %260)
  %262 = load %struct.net_device*, %struct.net_device** %2, align 8
  %263 = call i32 @netif_start_queue(%struct.net_device* %262)
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8180_reset(%struct.net_device*) #1

declare dso_local i32 @HwConfigureRTL8185(%struct.net_device*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @PlatformIOWrite2Byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @MacConfig_85BASIC(%struct.net_device*) #1

declare dso_local i32 @SetOutputEnableOfRfPins(%struct.net_device*) #1

declare dso_local i32 @PhyConfig8185(%struct.net_device*) #1

declare dso_local i32 @GetSupportedWirelessMode8185(%struct.net_device*) #1

declare dso_local i32 @DMESGW(i8*, i32) #1

declare dso_local i32 @MgntActSet_RF_State(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ActSetWirelessMode8185(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8185b_irq_enable(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
