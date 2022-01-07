; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfAdjustCtrlSetting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfAdjustCtrlSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, %struct.TYPE_3__, %struct.zsHpPriv* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.zsHpPriv = type { i32, i32, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i64 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_HP_CAP_11N_ONE_TX_STREAM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_LV_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"old phy ctrl = \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"new phy ctrl = \00", align 1
@ZM_MIN_TPC = common dso_local global i32 0, align 4
@ZM_SIGNAL_THRESHOLD = common dso_local global i64 0, align 8
@ZM_TPC_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfAdjustCtrlSetting(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  %17 = load %struct.zsHpPriv*, %struct.zsHpPriv** %16, align 8
  store %struct.zsHpPriv* %17, %struct.zsHpPriv** %12, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @zmw_buf_readh(i32* %21, i32* %22, i32 4)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @zmw_buf_readh(i32* %24, i32* %25, i32 6)
  %27 = shl i32 %26, 16
  %28 = or i32 %23, %27
  store i32 %28, i32* %10, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %32, %36
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %29, %20
  store i32 0, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 3
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 8388608
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 6
  %63 = load %struct.zsHpPriv*, %struct.zsHpPriv** %62, align 8
  %64 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %63, i32 0, i32 10
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, 16
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %60, %57
  br label %74

71:                                               ; preds = %49
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 2147483647
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %71, %70
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 8323072
  %77 = ashr i32 %76, 16
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = shl i32 %78, 18
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = and i32 %82, -2147483648
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %87 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ZM_HP_CAP_11N_ONE_TX_STREAM, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, 32768
  store i32 %94, i32* %9, align 4
  br label %134

95:                                               ; preds = %74
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %101, label %104

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, 163840
  store i32 %103, i32* %9, align 4
  br label %133

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 11
  br i1 %109, label %122, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 15
  br i1 %112, label %122, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 10
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, 14
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 9
  br i1 %121, label %122, label %125

122:                                              ; preds = %119, %116, %113, %110, %107
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, 163840
  store i32 %124, i32* %9, align 4
  br label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, 32768
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %125, %122
  br label %132

129:                                              ; preds = %104
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %130, 163840
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %129, %128
  br label %133

133:                                              ; preds = %132, %101
  br label %134

134:                                              ; preds = %133, %92
  %135 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %136 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %137, 3000
  br i1 %138, label %139, label %240

139:                                              ; preds = %134
  %140 = load i32, i32* %7, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %144 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 63
  store i32 %150, i32* %11, align 4
  br label %239

151:                                              ; preds = %139
  %152 = load i32, i32* %7, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %209

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 12
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %159 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 63
  store i32 %163, i32* %11, align 4
  br label %208

164:                                              ; preds = %154
  %165 = load i32, i32* %8, align 4
  %166 = icmp eq i32 %165, 8
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  %168 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %169 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 63
  store i32 %173, i32* %11, align 4
  br label %207

174:                                              ; preds = %164
  %175 = load i32, i32* %8, align 4
  %176 = icmp eq i32 %175, 13
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %179 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 63
  store i32 %183, i32* %11, align 4
  br label %206

184:                                              ; preds = %174
  %185 = load i32, i32* %8, align 4
  %186 = icmp eq i32 %185, 9
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %189 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %194 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %192, %195
  %197 = and i32 %196, 63
  store i32 %197, i32* %11, align 4
  br label %205

198:                                              ; preds = %184
  %199 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %200 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 63
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %198, %187
  br label %206

206:                                              ; preds = %205, %177
  br label %207

207:                                              ; preds = %206, %167
  br label %208

208:                                              ; preds = %207, %157
  br label %238

209:                                              ; preds = %151
  %210 = load i32, i32* %7, align 4
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %237

212:                                              ; preds = %209
  %213 = load i32, i32* %10, align 4
  %214 = and i32 %213, 8388608
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %212
  %217 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %218 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %217, i32 0, i32 5
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = and i32 %220, 7
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, 63
  store i32 %225, i32* %11, align 4
  br label %236

226:                                              ; preds = %212
  %227 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %228 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %227, i32 0, i32 6
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = and i32 %230, 7
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, 63
  store i32 %235, i32* %11, align 4
  br label %236

236:                                              ; preds = %226, %216
  br label %237

237:                                              ; preds = %236, %209
  br label %238

238:                                              ; preds = %237, %208
  br label %239

239:                                              ; preds = %238, %142
  br label %313

240:                                              ; preds = %134
  %241 = load i32, i32* %7, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %283

243:                                              ; preds = %240
  %244 = load i32, i32* %8, align 4
  %245 = icmp eq i32 %244, 12
  br i1 %245, label %246, label %253

246:                                              ; preds = %243
  %247 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %248 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %247, i32 0, i32 7
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 3
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 63
  store i32 %252, i32* %11, align 4
  br label %282

253:                                              ; preds = %243
  %254 = load i32, i32* %8, align 4
  %255 = icmp eq i32 %254, 8
  br i1 %255, label %256, label %263

256:                                              ; preds = %253
  %257 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %258 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %257, i32 0, i32 7
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, 63
  store i32 %262, i32* %11, align 4
  br label %281

263:                                              ; preds = %253
  %264 = load i32, i32* %8, align 4
  %265 = icmp eq i32 %264, 13
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %268 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %267, i32 0, i32 7
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, 63
  store i32 %272, i32* %11, align 4
  br label %280

273:                                              ; preds = %263
  %274 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %275 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %274, i32 0, i32 7
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 63
  store i32 %279, i32* %11, align 4
  br label %280

280:                                              ; preds = %273, %266
  br label %281

281:                                              ; preds = %280, %256
  br label %282

282:                                              ; preds = %281, %246
  br label %312

283:                                              ; preds = %240
  %284 = load i32, i32* %7, align 4
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %286, label %311

286:                                              ; preds = %283
  %287 = load i32, i32* %10, align 4
  %288 = and i32 %287, 8388608
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %300

290:                                              ; preds = %286
  %291 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %292 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %291, i32 0, i32 8
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %8, align 4
  %295 = and i32 %294, 7
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, 63
  store i32 %299, i32* %11, align 4
  br label %310

300:                                              ; preds = %286
  %301 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %302 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %301, i32 0, i32 9
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %8, align 4
  %305 = and i32 %304, 7
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, 63
  store i32 %309, i32* %11, align 4
  br label %310

310:                                              ; preds = %300, %290
  br label %311

311:                                              ; preds = %310, %283
  br label %312

312:                                              ; preds = %311, %282
  br label %313

313:                                              ; preds = %312, %239
  %314 = load i32, i32* %7, align 4
  %315 = icmp eq i32 %314, 2
  br i1 %315, label %316, label %323

316:                                              ; preds = %313
  %317 = load i32, i32* %10, align 4
  %318 = and i32 %317, 8388608
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %316
  %321 = load i32, i32* %11, align 4
  %322 = add nsw i32 %321, 2
  store i32 %322, i32* %11, align 4
  br label %323

323:                                              ; preds = %320, %316, %313
  %324 = load i32, i32* %11, align 4
  %325 = and i32 %324, 63
  store i32 %325, i32* %11, align 4
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %323
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = and i32 %333, 63
  store i32 %334, i32* %11, align 4
  br label %335

335:                                              ; preds = %330, %323
  %336 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %337 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp slt i32 %338, 3000
  br i1 %339, label %340, label %358

340:                                              ; preds = %335
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = and i32 %343, 63
  store i32 %344, i32* %342, align 4
  %345 = load i32, i32* %11, align 4
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp sgt i32 %345, %348
  br i1 %349, label %350, label %354

350:                                              ; preds = %340
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  br label %356

354:                                              ; preds = %340
  %355 = load i32, i32* %11, align 4
  br label %356

356:                                              ; preds = %354, %350
  %357 = phi i32 [ %353, %350 ], [ %355, %354 ]
  store i32 %357, i32* %11, align 4
  br label %376

358:                                              ; preds = %335
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = and i32 %361, 63
  store i32 %362, i32* %360, align 8
  %363 = load i32, i32* %11, align 4
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = icmp sgt i32 %363, %366
  br i1 %367, label %368, label %372

368:                                              ; preds = %358
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  br label %374

372:                                              ; preds = %358
  %373 = load i32, i32* %11, align 4
  br label %374

374:                                              ; preds = %372, %368
  %375 = phi i32 [ %371, %368 ], [ %373, %372 ]
  store i32 %375, i32* %11, align 4
  br label %376

376:                                              ; preds = %374, %356
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @FALSE, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %418

383:                                              ; preds = %376
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 5
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @FALSE, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %418

390:                                              ; preds = %383
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %417

396:                                              ; preds = %390
  %397 = load i32*, i32** %4, align 8
  %398 = call i64 @zfStaIsConnected(i32* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %417

400:                                              ; preds = %396
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 4
  %403 = load i64, i64* %402, align 8
  %404 = icmp sgt i64 %403, 56
  br i1 %404, label %405, label %417

405:                                              ; preds = %400
  %406 = load i32, i32* %11, align 4
  %407 = icmp sgt i32 %406, 20
  br i1 %407, label %408, label %411

408:                                              ; preds = %405
  %409 = load i32, i32* %11, align 4
  %410 = sub nsw i32 %409, 10
  store i32 %410, i32* %11, align 4
  br label %416

411:                                              ; preds = %405
  %412 = load i32, i32* %11, align 4
  %413 = icmp sgt i32 %412, 10
  br i1 %413, label %414, label %415

414:                                              ; preds = %411
  store i32 10, i32* %11, align 4
  br label %415

415:                                              ; preds = %414, %411
  br label %416

416:                                              ; preds = %415, %408
  br label %417

417:                                              ; preds = %416, %400, %396, %390
  br label %418

418:                                              ; preds = %417, %383, %376
  %419 = load i32, i32* %11, align 4
  %420 = and i32 %419, 63
  %421 = shl i32 %420, 9
  %422 = load i32, i32* %9, align 4
  %423 = or i32 %422, %421
  store i32 %423, i32* %9, align 4
  %424 = load i32, i32* %9, align 4
  %425 = and i32 %424, 3
  %426 = icmp eq i32 %425, 2
  br i1 %426, label %427, label %433

427:                                              ; preds = %418
  %428 = load i32, i32* %9, align 4
  %429 = ashr i32 %428, 12
  %430 = and i32 %429, 448
  %431 = load i32, i32* %9, align 4
  %432 = or i32 %431, %430
  store i32 %432, i32* %9, align 4
  br label %433

433:                                              ; preds = %427, %418
  %434 = load i32*, i32** %5, align 8
  %435 = icmp eq i32* %434, null
  br i1 %435, label %436, label %447

436:                                              ; preds = %433
  %437 = load i32*, i32** %4, align 8
  %438 = load i32*, i32** %6, align 8
  %439 = load i32, i32* %9, align 4
  %440 = and i32 %439, 65535
  %441 = call i32 @zmw_buf_writeh(i32* %437, i32* %438, i32 4, i32 %440)
  %442 = load i32*, i32** %4, align 8
  %443 = load i32*, i32** %6, align 8
  %444 = load i32, i32* %9, align 4
  %445 = ashr i32 %444, 16
  %446 = call i32 @zmw_buf_writeh(i32* %442, i32* %443, i32 6, i32 %445)
  br label %456

447:                                              ; preds = %433
  %448 = load i32, i32* %9, align 4
  %449 = and i32 %448, 65535
  %450 = load i32*, i32** %5, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 2
  store i32 %449, i32* %451, align 4
  %452 = load i32, i32* %9, align 4
  %453 = ashr i32 %452, 16
  %454 = load i32*, i32** %5, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 3
  store i32 %453, i32* %455, align 4
  br label %456

456:                                              ; preds = %447, %436
  %457 = load i32, i32* @ZM_LV_2, align 4
  %458 = load i32, i32* %10, align 4
  %459 = call i32 @zm_msg2_tx(i32 %457, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %458)
  %460 = load i32, i32* @ZM_LV_2, align 4
  %461 = load i32, i32* %9, align 4
  %462 = call i32 @zm_msg2_tx(i32 %460, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %461)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_buf_readh(i32*, i32*, i32) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zmw_buf_writeh(i32*, i32*, i32, i32) #1

declare dso_local i32 @zm_msg2_tx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
