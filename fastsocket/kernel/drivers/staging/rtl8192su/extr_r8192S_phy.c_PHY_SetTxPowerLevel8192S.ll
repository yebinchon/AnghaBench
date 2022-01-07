; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_SetTxPowerLevel8192S.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_SetTxPowerLevel8192S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64**, i64, i64**, i64**, i32, i64, i64**, i32, i64**, i64**, i64*, i64, i64, i64, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EEPROM_Default_TxPower = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@RF_1T2R = common dso_local global i64 0, align 8
@RF_1T1R = common dso_local global i64 0, align 8
@RF_2T2R = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@rFPGA0_TxGainStage = common dso_local global i32 0, align 4
@bXBTxAGC = common dso_local global i32 0, align 4
@bXCTxAGC = common dso_local global i32 0, align 4
@bXDTxAGC = common dso_local global i32 0, align 4
@COMP_TXAGC = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_24G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_SetTxPowerLevel8192S(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [2 x i64], align 16
  %12 = alloca [2 x i64], align 16
  %13 = alloca [2 x i64], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %16)
  store %struct.r8192_priv* %17, %struct.r8192_priv** %5, align 8
  %18 = load i64, i64* @EEPROM_Default_TxPower, align 8
  store i64 %18, i64* %6, align 8
  store i64 16, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load i64, i64* %4, align 8
  %20 = sub i64 %19, 1
  store i64 %20, i64* %10, align 8
  %21 = bitcast [2 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 16, i1 false)
  %22 = bitcast [2 x i64]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 16, i1 false)
  %23 = bitcast [2 x i64]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 16, i1 false)
  store i64 0, i64* %14, align 8
  store i64 2, i64* %15, align 8
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FALSE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %424

30:                                               ; preds = %2
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 1
  %33 = load i64**, i64*** %32, align 8
  %34 = getelementptr inbounds i64*, i64** %33, i64 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RF_1T2R, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %30
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RF_1T1R, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44, %30
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 3
  %53 = load i64**, i64*** %52, align 8
  %54 = getelementptr inbounds i64*, i64** %53, i64 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %7, align 8
  store i64 1, i64* %15, align 8
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 3
  %61 = load i64**, i64*** %60, align 8
  %62 = getelementptr inbounds i64*, i64** %61, i64 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  store i64 %66, i64* %67, align 16
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 %66, i64* %68, align 16
  br label %123

69:                                               ; preds = %44
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RF_2T2R, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %122

75:                                               ; preds = %69
  %76 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %77 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %76, i32 0, i32 4
  %78 = load i64**, i64*** %77, align 8
  %79 = getelementptr inbounds i64*, i64** %78, i64 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %7, align 8
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 4
  %86 = load i64**, i64*** %85, align 8
  %87 = getelementptr inbounds i64*, i64** %86, i64 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %93 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %92, i32 0, i32 4
  %94 = load i64**, i64*** %93, align 8
  %95 = getelementptr inbounds i64*, i64** %94, i64 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %91, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %8, align 4
  %102 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %103 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %102, i32 0, i32 4
  %104 = load i64**, i64*** %103, align 8
  %105 = getelementptr inbounds i64*, i64** %104, i64 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  store i64 %109, i64* %110, align 16
  %111 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 %109, i64* %111, align 16
  %112 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %113 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %112, i32 0, i32 4
  %114 = load i64**, i64*** %113, align 8
  %115 = getelementptr inbounds i64*, i64** %114, i64 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  store i64 %119, i64* %120, align 8
  %121 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %75, %69
  br label %123

123:                                              ; preds = %122, %50
  %124 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %125 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %350

128:                                              ; preds = %123
  %129 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %130 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %190

134:                                              ; preds = %128
  store i64 0, i64* %14, align 8
  br label %135

135:                                              ; preds = %173, %134
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %15, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %176

139:                                              ; preds = %135
  %140 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %141 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %140, i32 0, i32 7
  %142 = load i64**, i64*** %141, align 8
  %143 = load i64, i64* %14, align 8
  %144 = getelementptr inbounds i64*, i64** %142, i64 %143
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %14, align 8
  %150 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %149
  store i64 %148, i64* %150, align 8
  %151 = load i64, i64* %14, align 8
  %152 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = icmp ult i64 %153, 8
  br i1 %154, label %155, label %163

155:                                              ; preds = %139
  %156 = load i64, i64* %14, align 8
  %157 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %14, align 8
  %160 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, %158
  store i64 %162, i64* %160, align 8
  br label %172

163:                                              ; preds = %139
  %164 = load i64, i64* %14, align 8
  %165 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = sub i64 15, %166
  %168 = load i64, i64* %14, align 8
  %169 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = sub i64 %170, %167
  store i64 %171, i64* %169, align 8
  br label %172

172:                                              ; preds = %163, %155
  br label %173

173:                                              ; preds = %172
  %174 = load i64, i64* %14, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %14, align 8
  br label %135

176:                                              ; preds = %135
  %177 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %178 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @RF_2T2R, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %186 = load i64, i64* %185, align 16
  %187 = sub i64 %184, %186
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %182, %176
  br label %190

190:                                              ; preds = %189, %128
  %191 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %192 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %349

195:                                              ; preds = %190
  store i64 0, i64* %14, align 8
  br label %196

196:                                              ; preds = %296, %195
  %197 = load i64, i64* %14, align 8
  %198 = load i64, i64* %15, align 8
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %299

200:                                              ; preds = %196
  %201 = load i64, i64* %14, align 8
  %202 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %201
  store i64 0, i64* %202, align 8
  %203 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %204 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %248

208:                                              ; preds = %200
  %209 = load i64, i64* %4, align 8
  %210 = icmp ule i64 %209, 3
  br i1 %210, label %211, label %222

211:                                              ; preds = %208
  %212 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %213 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %212, i32 0, i32 9
  %214 = load i64**, i64*** %213, align 8
  %215 = load i64, i64* %14, align 8
  %216 = getelementptr inbounds i64*, i64** %214, i64 %215
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* %14, align 8
  %221 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %220
  store i64 %219, i64* %221, align 8
  br label %240

222:                                              ; preds = %208
  %223 = load i64, i64* %4, align 8
  %224 = icmp uge i64 %223, 9
  br i1 %224, label %225, label %236

225:                                              ; preds = %222
  %226 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %227 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %226, i32 0, i32 9
  %228 = load i64**, i64*** %227, align 8
  %229 = load i64, i64* %14, align 8
  %230 = getelementptr inbounds i64*, i64** %228, i64 %229
  %231 = load i64*, i64** %230, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* %14, align 8
  %235 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %234
  store i64 %233, i64* %235, align 8
  br label %239

236:                                              ; preds = %222
  %237 = load i64, i64* %14, align 8
  %238 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %237
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %236, %225
  br label %240

240:                                              ; preds = %239, %211
  %241 = load i64, i64* %14, align 8
  %242 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %14, align 8
  %245 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = sub i64 %246, %243
  store i64 %247, i64* %245, align 8
  br label %295

248:                                              ; preds = %200
  %249 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %250 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %294

254:                                              ; preds = %248
  %255 = load i64, i64* %4, align 8
  %256 = icmp eq i64 %255, 1
  br i1 %256, label %257, label %268

257:                                              ; preds = %254
  %258 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %259 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %258, i32 0, i32 10
  %260 = load i64**, i64*** %259, align 8
  %261 = load i64, i64* %14, align 8
  %262 = getelementptr inbounds i64*, i64** %260, i64 %261
  %263 = load i64*, i64** %262, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* %14, align 8
  %267 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %266
  store i64 %265, i64* %267, align 8
  br label %286

268:                                              ; preds = %254
  %269 = load i64, i64* %4, align 8
  %270 = icmp uge i64 %269, 11
  br i1 %270, label %271, label %282

271:                                              ; preds = %268
  %272 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %273 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %272, i32 0, i32 10
  %274 = load i64**, i64*** %273, align 8
  %275 = load i64, i64* %14, align 8
  %276 = getelementptr inbounds i64*, i64** %274, i64 %275
  %277 = load i64*, i64** %276, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 1
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* %14, align 8
  %281 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %280
  store i64 %279, i64* %281, align 8
  br label %285

282:                                              ; preds = %268
  %283 = load i64, i64* %14, align 8
  %284 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %283
  store i64 0, i64* %284, align 8
  br label %285

285:                                              ; preds = %282, %271
  br label %286

286:                                              ; preds = %285, %257
  %287 = load i64, i64* %14, align 8
  %288 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* %14, align 8
  %291 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = sub i64 %292, %289
  store i64 %293, i64* %291, align 8
  br label %294

294:                                              ; preds = %286, %248
  br label %295

295:                                              ; preds = %294, %240
  br label %296

296:                                              ; preds = %295
  %297 = load i64, i64* %14, align 8
  %298 = add i64 %297, 1
  store i64 %298, i64* %14, align 8
  br label %196

299:                                              ; preds = %196
  %300 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %301 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @RF_2T2R, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %326

305:                                              ; preds = %299
  %306 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %307 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %306, i32 0, i32 6
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %318

311:                                              ; preds = %305
  %312 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %315 = load i64, i64* %314, align 16
  %316 = sub i64 %313, %315
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %8, align 4
  br label %325

318:                                              ; preds = %305
  %319 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %322 = load i64, i64* %321, align 16
  %323 = sub i64 %320, %322
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %8, align 4
  br label %325

325:                                              ; preds = %318, %311
  br label %326

326:                                              ; preds = %325, %299
  %327 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %328 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %327, i32 0, i32 6
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %340

332:                                              ; preds = %326
  %333 = load i64, i64* %4, align 8
  %334 = icmp ule i64 %333, 1
  br i1 %334, label %338, label %335

335:                                              ; preds = %332
  %336 = load i64, i64* %4, align 8
  %337 = icmp uge i64 %336, 11
  br i1 %337, label %338, label %339

338:                                              ; preds = %335, %332
  br label %339

339:                                              ; preds = %338, %335
  br label %348

340:                                              ; preds = %326
  %341 = load i64, i64* %4, align 8
  %342 = icmp ule i64 %341, 3
  br i1 %342, label %346, label %343

343:                                              ; preds = %340
  %344 = load i64, i64* %4, align 8
  %345 = icmp uge i64 %344, 9
  br i1 %345, label %346, label %347

346:                                              ; preds = %343, %340
  br label %347

347:                                              ; preds = %346, %343
  br label %348

348:                                              ; preds = %347, %339
  br label %349

349:                                              ; preds = %348, %190
  br label %350

350:                                              ; preds = %349, %123
  %351 = load i32, i32* %8, align 4
  %352 = icmp sgt i32 %351, 7
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  store i32 7, i32* %8, align 4
  br label %354

354:                                              ; preds = %353, %350
  %355 = load i32, i32* %8, align 4
  %356 = icmp slt i32 %355, -8
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  store i32 -8, i32* %8, align 4
  br label %358

358:                                              ; preds = %357, %354
  %359 = load i32, i32* %8, align 4
  %360 = and i32 %359, 15
  store i32 %360, i32* %8, align 4
  %361 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %362 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %361, i32 0, i32 11
  %363 = load i64*, i64** %362, align 8
  %364 = getelementptr inbounds i64, i64* %363, i64 2
  store i64 0, i64* %364, align 8
  %365 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %366 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %365, i32 0, i32 11
  %367 = load i64*, i64** %366, align 8
  %368 = getelementptr inbounds i64, i64* %367, i64 1
  store i64 0, i64* %368, align 8
  %369 = load i32, i32* %8, align 4
  %370 = sext i32 %369 to i64
  %371 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %372 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %371, i32 0, i32 11
  %373 = load i64*, i64** %372, align 8
  %374 = getelementptr inbounds i64, i64* %373, i64 0
  store i64 %370, i64* %374, align 8
  %375 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %376 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %375, i32 0, i32 11
  %377 = load i64*, i64** %376, align 8
  %378 = getelementptr inbounds i64, i64* %377, i64 2
  %379 = load i64, i64* %378, align 8
  %380 = shl i64 %379, 8
  %381 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %382 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %381, i32 0, i32 11
  %383 = load i64*, i64** %382, align 8
  %384 = getelementptr inbounds i64, i64* %383, i64 1
  %385 = load i64, i64* %384, align 8
  %386 = shl i64 %385, 4
  %387 = or i64 %380, %386
  %388 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %389 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %388, i32 0, i32 11
  %390 = load i64*, i64** %389, align 8
  %391 = getelementptr inbounds i64, i64* %390, i64 0
  %392 = load i64, i64* %391, align 8
  %393 = or i64 %387, %392
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %9, align 4
  %395 = load %struct.net_device*, %struct.net_device** %3, align 8
  %396 = load i32, i32* @rFPGA0_TxGainStage, align 4
  %397 = load i32, i32* @bXBTxAGC, align 4
  %398 = load i32, i32* @bXCTxAGC, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @bXDTxAGC, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* %9, align 4
  %403 = call i32 @rtl8192_setBBreg(%struct.net_device* %395, i32 %396, i32 %401, i32 %402)
  %404 = load i64, i64* %6, align 8
  %405 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %406 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %405, i32 0, i32 13
  store i64 %404, i64* %406, align 8
  %407 = load i64, i64* %7, align 8
  %408 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %409 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %408, i32 0, i32 14
  store i64 %407, i64* %409, align 8
  %410 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %411 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %410, i32 0, i32 15
  %412 = load i32, i32* %411, align 8
  switch i32 %412, label %423 [
    i32 130, label %413
    i32 129, label %414
    i32 131, label %415
    i32 128, label %422
  ]

413:                                              ; preds = %358
  br label %424

414:                                              ; preds = %358
  br label %424

415:                                              ; preds = %358
  %416 = load %struct.net_device*, %struct.net_device** %3, align 8
  %417 = load i64, i64* %6, align 8
  %418 = call i32 @PHY_RF6052SetCckTxPower(%struct.net_device* %416, i64 %417)
  %419 = load %struct.net_device*, %struct.net_device** %3, align 8
  %420 = load i64, i64* %7, align 8
  %421 = call i32 @PHY_RF6052SetOFDMTxPower(%struct.net_device* %419, i64 %420)
  br label %424

422:                                              ; preds = %358
  br label %424

423:                                              ; preds = %358
  br label %424

424:                                              ; preds = %29, %423, %422, %415, %414, %413
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @PHY_RF6052SetCckTxPower(%struct.net_device*, i64) #1

declare dso_local i32 @PHY_RF6052SetOFDMTxPower(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
