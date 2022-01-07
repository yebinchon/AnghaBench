; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_SetZebraRFPowerState8185.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_SetZebraRFPowerState8185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, i32, i32, i32, i32 }

@CR9346 = common dso_local global i32 0, align 4
@CONFIG3 = common dso_local global i32 0, align 4
@CONFIG3_PARM_En = common dso_local global i32 0, align 4
@ANAPARAM = common dso_local global i32 0, align 4
@ANAPARM_ON = common dso_local global i32 0, align 4
@ANAPARAM2 = common dso_local global i32 0, align 4
@ANAPARM2_ON = common dso_local global i32 0, align 4
@CONFIG4 = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i32 0, align 4
@LPS_MAX_SLEEP_WAITING_TIMES_87SE = common dso_local global i32 0, align 4
@MAX_DOZE_WAITING_TIMES_85B = common dso_local global i32 0, align 4
@MAX_POLLING_24F_TIMES_87SE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"SetZebraRFPowerState8185(): unknow state to set: 0x%X!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetZebraRFPowerState8185(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8180_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %19)
  store %struct.r8180_priv* %20, %struct.r8180_priv** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %13, align 4
  %21 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %22 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %331

26:                                               ; preds = %2
  %27 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %28 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load i32, i32* @CR9346, align 4
  %31 = call i32 @read_nic_byte(%struct.net_device* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = load i32, i32* @CR9346, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, 192
  %36 = call i32 @write_nic_byte(%struct.net_device* %32, i32 %33, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load i32, i32* @CONFIG3, align 4
  %39 = call i32 @read_nic_byte(%struct.net_device* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load i32, i32* @CONFIG3, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CONFIG3_PARM_En, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @write_nic_byte(%struct.net_device* %40, i32 %41, i32 %44)
  %46 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %47 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %296 [
    i32 132, label %49
    i32 131, label %82
  ]

49:                                               ; preds = %26
  %50 = load i32, i32* %5, align 4
  switch i32 %50, label %80 [
    i32 129, label %51
    i32 128, label %78
    i32 130, label %79
  ]

51:                                               ; preds = %49
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @RF_WriteReg(%struct.net_device* %52, i32 4, i32 2559)
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = load i32, i32* @ANAPARAM, align 4
  %56 = load i32, i32* @ANAPARM_ON, align 4
  %57 = call i32 @write_nic_dword(%struct.net_device* %54, i32 %55, i32 %56)
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = load i32, i32* @ANAPARAM2, align 4
  %60 = load i32, i32* @ANAPARM2_ON, align 4
  %61 = call i32 @write_nic_dword(%struct.net_device* %58, i32 %59, i32 %60)
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load i32, i32* @CONFIG4, align 4
  %64 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %65 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @write_nic_byte(%struct.net_device* %62, i32 %63, i32 %66)
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @read_nic_byte(%struct.net_device* %68, i32 590)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @BIT5, align 4
  %73 = load i32, i32* @BIT6, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %71, %75
  %77 = call i32 @write_nic_byte(%struct.net_device* %70, i32 590, i32 %76)
  br label %81

78:                                               ; preds = %49
  br label %81

79:                                               ; preds = %49
  br label %81

80:                                               ; preds = %49
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %80, %79, %78, %51
  br label %296

82:                                               ; preds = %26
  %83 = load i32, i32* %5, align 4
  switch i32 %83, label %292 [
    i32 129, label %84
    i32 128, label %123
    i32 130, label %216
  ]

84:                                               ; preds = %82
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call i32 @write_nic_word(%struct.net_device* %85, i32 892, i32 236)
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = call i32 @write_nic_byte(%struct.net_device* %87, i32 84, i32 0)
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = call i32 @write_nic_byte(%struct.net_device* %89, i32 98, i32 0)
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 @RF_WriteReg(%struct.net_device* %91, i32 0, i32 159)
  %93 = call i32 @udelay(i32 500)
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = call i32 @RF_WriteReg(%struct.net_device* %94, i32 4, i32 2418)
  %96 = call i32 @udelay(i32 500)
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = call i32 @RF_WriteReg(%struct.net_device* %97, i32 0, i32 159)
  %99 = call i32 @udelay(i32 500)
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = call i32 @RF_WriteReg(%struct.net_device* %100, i32 4, i32 2418)
  %102 = call i32 @udelay(i32 500)
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = call i32 @write_phy_ofdm(%struct.net_device* %103, i32 16, i32 64)
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = call i32 @write_phy_ofdm(%struct.net_device* %105, i32 18, i32 64)
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = load i32, i32* @CONFIG4, align 4
  %109 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %110 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @write_nic_byte(%struct.net_device* %107, i32 %108, i32 %111)
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = call i32 @read_nic_byte(%struct.net_device* %113, i32 590)
  store i32 %114, i32* %11, align 4
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @BIT5, align 4
  %118 = load i32, i32* @BIT6, align 4
  %119 = or i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = and i32 %116, %120
  %122 = call i32 @write_nic_byte(%struct.net_device* %115, i32 590, i32 %121)
  br label %295

123:                                              ; preds = %82
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %152, %135, %123
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 6
  br i1 %126, label %127, label %153

127:                                              ; preds = %124
  %128 = load %struct.net_device*, %struct.net_device** %4, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @get_curr_tx_free_desc(%struct.net_device* %128, i32 %129)
  %131 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %132 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %124

138:                                              ; preds = %127
  %139 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %140 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %144 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @LPS_MAX_SLEEP_WAITING_TIMES_87SE, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  store i32 0, i32* %9, align 4
  br label %153

149:                                              ; preds = %138
  %150 = call i32 @udelay(i32 10)
  br label %151

151:                                              ; preds = %149
  br label %152

152:                                              ; preds = %151
  br label %124

153:                                              ; preds = %148, %124
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %215

156:                                              ; preds = %153
  %157 = load %struct.net_device*, %struct.net_device** %4, align 8
  %158 = call i32 @write_phy_ofdm(%struct.net_device* %157, i32 16, i32 0)
  %159 = load %struct.net_device*, %struct.net_device** %4, align 8
  %160 = call i32 @write_phy_ofdm(%struct.net_device* %159, i32 18, i32 0)
  %161 = load %struct.net_device*, %struct.net_device** %4, align 8
  %162 = call i32 @RF_WriteReg(%struct.net_device* %161, i32 4, i32 0)
  %163 = load %struct.net_device*, %struct.net_device** %4, align 8
  %164 = call i32 @RF_WriteReg(%struct.net_device* %163, i32 0, i32 0)
  %165 = load %struct.net_device*, %struct.net_device** %4, align 8
  %166 = call i32 @write_nic_byte(%struct.net_device* %165, i32 98, i32 255)
  %167 = load %struct.net_device*, %struct.net_device** %4, align 8
  %168 = call i32 @write_nic_byte(%struct.net_device* %167, i32 84, i32 236)
  %169 = call i32 @mdelay(i32 1)
  store i32 0, i32* %15, align 4
  br label %170

170:                                              ; preds = %156, %196
  %171 = load %struct.net_device*, %struct.net_device** %4, align 8
  %172 = call i32 @read_nic_byte(%struct.net_device* %171, i32 591)
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %16, align 4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %16, align 4
  %177 = icmp eq i32 %176, 9
  br i1 %177, label %178, label %179

178:                                              ; preds = %175, %170
  store i32 1, i32* %10, align 4
  br label %197

179:                                              ; preds = %175
  %180 = call i32 @udelay(i32 10)
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  %183 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %184 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  %187 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %188 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @LPS_MAX_SLEEP_WAITING_TIMES_87SE, align 4
  %191 = icmp sge i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %179
  store i32 0, i32* %10, align 4
  br label %197

193:                                              ; preds = %179
  %194 = call i32 @udelay(i32 10)
  br label %195

195:                                              ; preds = %193
  br label %196

196:                                              ; preds = %195
  br label %170

197:                                              ; preds = %192, %178
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %197
  %201 = load %struct.net_device*, %struct.net_device** %4, align 8
  %202 = call i32 @read_nic_byte(%struct.net_device* %201, i32 590)
  store i32 %202, i32* %11, align 4
  %203 = load %struct.net_device*, %struct.net_device** %4, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @BIT5, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @BIT6, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @write_nic_byte(%struct.net_device* %203, i32 590, i32 %208)
  %210 = load %struct.net_device*, %struct.net_device** %4, align 8
  %211 = call i32 @write_nic_byte(%struct.net_device* %210, i32 84, i32 252)
  %212 = load %struct.net_device*, %struct.net_device** %4, align 8
  %213 = call i32 @write_nic_word(%struct.net_device* %212, i32 892, i32 252)
  br label %214

214:                                              ; preds = %200, %197
  br label %215

215:                                              ; preds = %214, %153
  br label %295

216:                                              ; preds = %82
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %217

217:                                              ; preds = %240, %228, %216
  %218 = load i32, i32* %14, align 4
  %219 = icmp slt i32 %218, 6
  br i1 %219, label %220, label %241

220:                                              ; preds = %217
  %221 = load %struct.net_device*, %struct.net_device** %4, align 8
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @get_curr_tx_free_desc(%struct.net_device* %221, i32 %222)
  %224 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %225 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %223, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %220
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %14, align 4
  br label %217

231:                                              ; preds = %220
  %232 = call i32 @udelay(i32 10)
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %231
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* @MAX_DOZE_WAITING_TIMES_85B, align 4
  %238 = icmp sge i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  br label %241

240:                                              ; preds = %235
  br label %217

241:                                              ; preds = %239, %217
  %242 = load %struct.net_device*, %struct.net_device** %4, align 8
  %243 = call i32 @write_phy_ofdm(%struct.net_device* %242, i32 16, i32 0)
  %244 = load %struct.net_device*, %struct.net_device** %4, align 8
  %245 = call i32 @write_phy_ofdm(%struct.net_device* %244, i32 18, i32 0)
  %246 = load %struct.net_device*, %struct.net_device** %4, align 8
  %247 = call i32 @RF_WriteReg(%struct.net_device* %246, i32 4, i32 0)
  %248 = load %struct.net_device*, %struct.net_device** %4, align 8
  %249 = call i32 @RF_WriteReg(%struct.net_device* %248, i32 0, i32 0)
  %250 = load %struct.net_device*, %struct.net_device** %4, align 8
  %251 = call i32 @write_nic_byte(%struct.net_device* %250, i32 98, i32 255)
  %252 = load %struct.net_device*, %struct.net_device** %4, align 8
  %253 = call i32 @write_nic_byte(%struct.net_device* %252, i32 84, i32 236)
  %254 = call i32 @mdelay(i32 1)
  store i32 0, i32* %17, align 4
  br label %255

255:                                              ; preds = %241, %273
  %256 = load %struct.net_device*, %struct.net_device** %4, align 8
  %257 = call i32 @read_nic_byte(%struct.net_device* %256, i32 591)
  store i32 %257, i32* %18, align 4
  %258 = load i32, i32* %18, align 4
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %263, label %260

260:                                              ; preds = %255
  %261 = load i32, i32* %18, align 4
  %262 = icmp eq i32 %261, 9
  br i1 %262, label %263, label %264

263:                                              ; preds = %260, %255
  store i32 1, i32* %10, align 4
  br label %274

264:                                              ; preds = %260
  store i32 0, i32* %10, align 4
  %265 = call i32 @udelay(i32 10)
  %266 = load i32, i32* %17, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %17, align 4
  br label %268

268:                                              ; preds = %264
  %269 = load i32, i32* %17, align 4
  %270 = load i32, i32* @MAX_POLLING_24F_TIMES_87SE, align 4
  %271 = icmp sgt i32 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  br label %274

273:                                              ; preds = %268
  br label %255

274:                                              ; preds = %272, %263
  %275 = load i32, i32* %10, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %291

277:                                              ; preds = %274
  %278 = load %struct.net_device*, %struct.net_device** %4, align 8
  %279 = call i32 @read_nic_byte(%struct.net_device* %278, i32 590)
  store i32 %279, i32* %11, align 4
  %280 = load %struct.net_device*, %struct.net_device** %4, align 8
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* @BIT5, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @BIT6, align 4
  %285 = or i32 %283, %284
  %286 = call i32 @write_nic_byte(%struct.net_device* %280, i32 590, i32 %285)
  %287 = load %struct.net_device*, %struct.net_device** %4, align 8
  %288 = call i32 @write_nic_byte(%struct.net_device* %287, i32 84, i32 252)
  %289 = load %struct.net_device*, %struct.net_device** %4, align 8
  %290 = call i32 @write_nic_word(%struct.net_device* %289, i32 892, i32 252)
  br label %291

291:                                              ; preds = %277, %274
  br label %295

292:                                              ; preds = %82
  store i32 0, i32* %13, align 4
  %293 = load i32, i32* %5, align 4
  %294 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %292, %291, %215, %84
  br label %296

296:                                              ; preds = %26, %295, %81
  %297 = load i32, i32* @CONFIG3_PARM_En, align 4
  %298 = xor i32 %297, -1
  %299 = load i32, i32* %8, align 4
  %300 = and i32 %299, %298
  store i32 %300, i32* %8, align 4
  %301 = load %struct.net_device*, %struct.net_device** %4, align 8
  %302 = load i32, i32* @CONFIG3, align 4
  %303 = load i32, i32* %8, align 4
  %304 = call i32 @write_nic_byte(%struct.net_device* %301, i32 %302, i32 %303)
  %305 = load i32, i32* %7, align 4
  %306 = and i32 %305, -193
  store i32 %306, i32* %7, align 4
  %307 = load %struct.net_device*, %struct.net_device** %4, align 8
  %308 = load i32, i32* @CR9346, align 4
  %309 = load i32, i32* %7, align 4
  %310 = call i32 @write_nic_byte(%struct.net_device* %307, i32 %308, i32 %309)
  %311 = load i32, i32* %13, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %296
  %314 = load i32, i32* %9, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %313
  %317 = load i32, i32* %5, align 4
  %318 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %319 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %318, i32 0, i32 3
  store i32 %317, i32* %319, align 4
  br label %320

320:                                              ; preds = %316, %313, %296
  %321 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %322 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %321, i32 0, i32 0
  store i32 0, i32* %322, align 4
  %323 = load i32, i32* %13, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load i32, i32* %9, align 4
  %327 = icmp ne i32 %326, 0
  br label %328

328:                                              ; preds = %325, %320
  %329 = phi i1 [ false, %320 ], [ %327, %325 ]
  %330 = zext i1 %329 to i32
  store i32 %330, i32* %3, align 4
  br label %331

331:                                              ; preds = %328, %25
  %332 = load i32, i32* %3, align 4
  ret i32 %332
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RF_WriteReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @write_phy_ofdm(%struct.net_device*, i32, i32) #1

declare dso_local i32 @get_curr_tx_free_desc(%struct.net_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
