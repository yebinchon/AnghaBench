; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl6052.c_PHY_RF6052SetOFDMTxPower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl6052.c_PHY_RF6052SetOFDMTxPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32**, i32, i32**, i64, i32**, i32**, i32**, i32*, i64, i32*, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@__const.PHY_RF6052SetOFDMTxPower.RegOffset = private unnamed_addr constant [6 x i32] [i32 3584, i32 3588, i32 3600, i32 3604, i32 3608, i32 3612], align 16
@RF90_PATH_A = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@RF_2T2R = common dso_local global i64 0, align 8
@RF6052_MAX_TX_PWR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_RF6052SetOFDMTxPower(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %22)
  store %struct.r8192_priv* %23, %struct.r8192_priv** %5, align 8
  store i32 0, i32* %9, align 4
  %24 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([6 x i32]* @__const.PHY_RF6052SetOFDMTxPower.RegOffset to i8*), i64 24, i1 false)
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 14
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %38 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 15
  %41 = add nsw i32 %36, %40
  store i32 %41, i32* %7, align 4
  br label %108

42:                                               ; preds = %2
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %107

47:                                               ; preds = %42
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 2
  %50 = load i32**, i32*** %49, align 8
  %51 = load i64, i64* @RF90_PATH_A, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %106

66:                                               ; preds = %47
  store i32 1, i32* %20, align 4
  store i32 11, i32* %21, align 4
  store i32 0, i32* %19, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %20, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %72 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %71, i32 0, i32 4
  %73 = load i32**, i32*** %72, align 8
  %74 = load i64, i64* @RF90_PATH_A, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %19, align 4
  br label %93

79:                                               ; preds = %66
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %21, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 4
  %86 = load i32**, i32*** %85, align 8
  %87 = load i64, i64* @RF90_PATH_A, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %19, align 4
  br label %92

92:                                               ; preds = %83, %79
  br label %93

93:                                               ; preds = %92, %70
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %21, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %93
  br label %105

105:                                              ; preds = %104, %100
  br label %106

106:                                              ; preds = %105, %47
  br label %107

107:                                              ; preds = %106, %42
  br label %108

108:                                              ; preds = %107, %35
  %109 = load i32, i32* %7, align 4
  %110 = shl i32 %109, 24
  %111 = load i32, i32* %7, align 4
  %112 = shl i32 %111, 16
  %113 = or i32 %110, %112
  %114 = load i32, i32* %7, align 4
  %115 = shl i32 %114, 8
  %116 = or i32 %113, %115
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %7, align 4
  %119 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %120 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %242

123:                                              ; preds = %108
  %124 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %125 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %123
  %130 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %131 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %130, i32 0, i32 6
  %132 = load i32**, i32*** %131, align 8
  %133 = load i64, i64* @RF90_PATH_A, align 8
  %134 = getelementptr inbounds i32*, i32** %132, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp slt i32 %141, 8
  br i1 %142, label %143, label %147

143:                                              ; preds = %129
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %4, align 4
  br label %152

147:                                              ; preds = %129
  %148 = load i32, i32* %18, align 4
  %149 = sub nsw i32 16, %148
  %150 = load i32, i32* %4, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %147, %143
  br label %153

153:                                              ; preds = %152, %123
  %154 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %155 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %241

158:                                              ; preds = %153
  store i32 0, i32* %19, align 4
  %159 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %160 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %197

164:                                              ; preds = %158
  %165 = load i32, i32* %11, align 4
  %166 = icmp sle i32 %165, 3
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %169 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %168, i32 0, i32 7
  %170 = load i32**, i32*** %169, align 8
  %171 = load i64, i64* @RF90_PATH_A, align 8
  %172 = getelementptr inbounds i32*, i32** %170, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %19, align 4
  br label %189

176:                                              ; preds = %164
  %177 = load i32, i32* %11, align 4
  %178 = icmp sge i32 %177, 9
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %181 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %180, i32 0, i32 7
  %182 = load i32**, i32*** %181, align 8
  %183 = load i64, i64* @RF90_PATH_A, align 8
  %184 = getelementptr inbounds i32*, i32** %182, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %19, align 4
  br label %188

188:                                              ; preds = %179, %176
  br label %189

189:                                              ; preds = %188, %167
  %190 = load i32, i32* %11, align 4
  %191 = icmp sle i32 %190, 3
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %11, align 4
  %194 = icmp sge i32 %193, 9
  br i1 %194, label %195, label %196

195:                                              ; preds = %192, %189
  br label %196

196:                                              ; preds = %195, %192
  br label %237

197:                                              ; preds = %158
  %198 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %199 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %236

203:                                              ; preds = %197
  %204 = load i32, i32* %11, align 4
  %205 = icmp sle i32 %204, 1
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %208 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %207, i32 0, i32 8
  %209 = load i32**, i32*** %208, align 8
  %210 = load i64, i64* @RF90_PATH_A, align 8
  %211 = getelementptr inbounds i32*, i32** %209, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %19, align 4
  br label %228

215:                                              ; preds = %203
  %216 = load i32, i32* %11, align 4
  %217 = icmp sge i32 %216, 11
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %220 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %219, i32 0, i32 8
  %221 = load i32**, i32*** %220, align 8
  %222 = load i64, i64* @RF90_PATH_A, align 8
  %223 = getelementptr inbounds i32*, i32** %221, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %19, align 4
  br label %227

227:                                              ; preds = %218, %215
  br label %228

228:                                              ; preds = %227, %206
  %229 = load i32, i32* %11, align 4
  %230 = icmp sle i32 %229, 1
  br i1 %230, label %234, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %11, align 4
  %233 = icmp sge i32 %232, 11
  br i1 %233, label %234, label %235

234:                                              ; preds = %231, %228
  br label %235

235:                                              ; preds = %234, %231
  br label %236

236:                                              ; preds = %235, %197
  br label %237

237:                                              ; preds = %236, %196
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* %4, align 4
  %240 = sub nsw i32 %239, %238
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %237, %153
  br label %242

242:                                              ; preds = %241, %108
  %243 = load i32, i32* %4, align 4
  store i32 %243, i32* %8, align 4
  %244 = load i32, i32* %8, align 4
  %245 = shl i32 %244, 24
  %246 = load i32, i32* %8, align 4
  %247 = shl i32 %246, 16
  %248 = or i32 %245, %247
  %249 = load i32, i32* %8, align 4
  %250 = shl i32 %249, 8
  %251 = or i32 %248, %250
  %252 = load i32, i32* %8, align 4
  %253 = or i32 %251, %252
  store i32 %253, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %254

254:                                              ; preds = %434, %242
  %255 = load i32, i32* %9, align 4
  %256 = icmp slt i32 %255, 6
  br i1 %256, label %257, label %437

257:                                              ; preds = %254
  %258 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %259 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %258, i32 0, i32 13
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %257
  %263 = load i32, i32* %9, align 4
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %265, label %267

265:                                              ; preds = %262
  %266 = load i32, i32* %7, align 4
  br label %269

267:                                              ; preds = %262
  %268 = load i32, i32* %8, align 4
  br label %269

269:                                              ; preds = %267, %265
  %270 = phi i32 [ %266, %265 ], [ %268, %267 ]
  store i32 %270, i32* %6, align 4
  br label %288

271:                                              ; preds = %257
  %272 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %273 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %272, i32 0, i32 9
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp slt i32 %279, 2
  br i1 %280, label %281, label %283

281:                                              ; preds = %271
  %282 = load i32, i32* %7, align 4
  br label %285

283:                                              ; preds = %271
  %284 = load i32, i32* %8, align 4
  br label %285

285:                                              ; preds = %283, %281
  %286 = phi i32 [ %282, %281 ], [ %284, %283 ]
  %287 = add nsw i32 %278, %286
  store i32 %287, i32* %6, align 4
  br label %288

288:                                              ; preds = %285, %269
  %289 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %290 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %289, i32 0, i32 10
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @RF_2T2R, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %314

294:                                              ; preds = %288
  %295 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %296 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %295, i32 0, i32 11
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %16, align 4
  %300 = load i32, i32* %16, align 4
  %301 = icmp sge i32 %300, 8
  br i1 %301, label %302, label %305

302:                                              ; preds = %294
  %303 = load i32, i32* %16, align 4
  %304 = sub nsw i32 16, %303
  store i32 %304, i32* %13, align 4
  br label %313

305:                                              ; preds = %294
  %306 = load i32, i32* %16, align 4
  %307 = icmp sge i32 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %305
  %309 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %310 = load i32, i32* %16, align 4
  %311 = sub nsw i32 %309, %310
  store i32 %311, i32* %14, align 4
  br label %312

312:                                              ; preds = %308, %305
  br label %313

313:                                              ; preds = %312, %302
  br label %314

314:                                              ; preds = %313, %288
  store i32 0, i32* %15, align 4
  br label %315

315:                                              ; preds = %382, %314
  %316 = load i32, i32* %15, align 4
  %317 = icmp slt i32 %316, 4
  br i1 %317, label %318, label %385

318:                                              ; preds = %315
  %319 = load i32, i32* %6, align 4
  %320 = load i32, i32* %15, align 4
  %321 = mul nsw i32 %320, 8
  %322 = shl i32 127, %321
  %323 = and i32 %319, %322
  %324 = load i32, i32* %15, align 4
  %325 = mul nsw i32 %324, 8
  %326 = ashr i32 %323, %325
  %327 = load i32, i32* %15, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %328
  store i32 %326, i32* %329, align 4
  %330 = load i32, i32* %15, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %335 = icmp sgt i32 %333, %334
  br i1 %335, label %336, label %341

336:                                              ; preds = %318
  %337 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %338 = load i32, i32* %15, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %339
  store i32 %337, i32* %340, align 4
  br label %341

341:                                              ; preds = %336, %318
  %342 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %343 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %342, i32 0, i32 10
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @RF_2T2R, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %381

347:                                              ; preds = %341
  %348 = load i32, i32* %16, align 4
  %349 = icmp sge i32 %348, 8
  br i1 %349, label %350, label %363

350:                                              ; preds = %347
  %351 = load i32, i32* %15, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* %13, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %362

357:                                              ; preds = %350
  %358 = load i32, i32* %13, align 4
  %359 = load i32, i32* %15, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %360
  store i32 %358, i32* %361, align 4
  br label %362

362:                                              ; preds = %357, %350
  br label %380

363:                                              ; preds = %347
  %364 = load i32, i32* %16, align 4
  %365 = icmp sge i32 %364, 1
  br i1 %365, label %366, label %379

366:                                              ; preds = %363
  %367 = load i32, i32* %15, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %14, align 4
  %372 = icmp sgt i32 %370, %371
  br i1 %372, label %373, label %378

373:                                              ; preds = %366
  %374 = load i32, i32* %14, align 4
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %376
  store i32 %374, i32* %377, align 4
  br label %378

378:                                              ; preds = %373, %366
  br label %379

379:                                              ; preds = %378, %363
  br label %380

380:                                              ; preds = %379, %362
  br label %381

381:                                              ; preds = %380, %341
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %15, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %15, align 4
  br label %315

385:                                              ; preds = %315
  %386 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %387 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %386, i32 0, i32 12
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @TRUE, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %411

391:                                              ; preds = %385
  %392 = load i32, i32* %9, align 4
  %393 = icmp sgt i32 %392, 1
  br i1 %393, label %394, label %395

394:                                              ; preds = %391
  store i32 50529027, i32* %6, align 4
  br label %410

395:                                              ; preds = %391
  %396 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %397 = load i32, i32* %396, align 4
  %398 = shl i32 %397, 24
  %399 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %400 = load i32, i32* %399, align 8
  %401 = shl i32 %400, 16
  %402 = or i32 %398, %401
  %403 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %404 = load i32, i32* %403, align 4
  %405 = shl i32 %404, 8
  %406 = or i32 %402, %405
  %407 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %408 = load i32, i32* %407, align 16
  %409 = or i32 %406, %408
  store i32 %409, i32* %6, align 4
  br label %410

410:                                              ; preds = %395, %394
  br label %426

411:                                              ; preds = %385
  %412 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %413 = load i32, i32* %412, align 4
  %414 = shl i32 %413, 24
  %415 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %416 = load i32, i32* %415, align 8
  %417 = shl i32 %416, 16
  %418 = or i32 %414, %417
  %419 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %420 = load i32, i32* %419, align 4
  %421 = shl i32 %420, 8
  %422 = or i32 %418, %421
  %423 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %424 = load i32, i32* %423, align 16
  %425 = or i32 %422, %424
  store i32 %425, i32* %6, align 4
  br label %426

426:                                              ; preds = %411, %410
  %427 = load %struct.net_device*, %struct.net_device** %3, align 8
  %428 = load i32, i32* %9, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* %6, align 4
  %433 = call i32 @rtl8192_setBBreg(%struct.net_device* %427, i32 %431, i32 2139062143, i32 %432)
  br label %434

434:                                              ; preds = %426
  %435 = load i32, i32* %9, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %9, align 4
  br label %254

437:                                              ; preds = %254
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
