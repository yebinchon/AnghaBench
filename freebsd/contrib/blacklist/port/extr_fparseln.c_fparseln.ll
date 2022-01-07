; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_fparseln.c_fparseln.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_fparseln.c_fparseln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fparseln.dstr = internal constant [3 x i8] c"\\\\#", align 1
@FPARSELN_UNESCALL = common dso_local global i32 0, align 4
@FPARSELN_UNESCCOMM = common dso_local global i32 0, align 4
@FPARSELN_UNESCCONT = common dso_local global i32 0, align 4
@FPARSELN_UNESCESC = common dso_local global i32 0, align 4
@FPARSELN_UNESCREST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fparseln(i32* %0, i64* %1, i64* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  store i8* null, i8** %14, align 8
  store i32 1, i32* %17, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fparseln.dstr, i64 0, i64 0), i8** %10, align 8
  br label %26

26:                                               ; preds = %25, %5
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %18, align 1
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %19, align 1
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %21, align 1
  store i8 10, i8* %20, align 1
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @FLOCKFILE(i32* %36)
  br label %38

38:                                               ; preds = %174, %159, %26
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %188

41:                                               ; preds = %38
  store i32 0, i32* %17, align 4
  %42 = load i64*, i64** %9, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32*, i32** %7, align 8
  %50 = call i8* @__fgetln(i32* %49, i64* %12)
  store i8* %50, i8** %15, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %188

53:                                               ; preds = %48
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %53
  %57 = load i8, i8* %21, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %56
  %61 = load i8*, i8** %15, align 8
  store i8* %61, i8** %16, align 8
  br label %62

62:                                               ; preds = %96, %60
  %63 = load i8*, i8** %16, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = icmp ult i8* %63, %66
  br i1 %67, label %68, label %99

68:                                               ; preds = %62
  %69 = load i8*, i8** %16, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* %21, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %68
  %76 = load i8*, i8** %15, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = load i8, i8* %18, align 1
  %79 = call i32 @isescaped(i8* %76, i8* %77, i8 signext %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %16, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i8*, i8** %14, align 8
  %91 = icmp eq i8* %90, null
  br label %92

92:                                               ; preds = %89, %81
  %93 = phi i1 [ false, %81 ], [ %91, %89 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %17, align 4
  br label %99

95:                                               ; preds = %75, %68
  br label %96

96:                                               ; preds = %95
  %97 = load i8*, i8** %16, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %16, align 8
  br label %62

99:                                               ; preds = %92, %62
  br label %100

100:                                              ; preds = %99, %56, %53
  %101 = load i64, i64* %12, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %100
  %104 = load i8, i8* %20, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = load i8*, i8** %15, align 8
  %109 = load i64, i64* %12, align 8
  %110 = sub i64 %109, 1
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8* %111, i8** %16, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = load i8, i8* %20, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = load i64, i64* %12, align 8
  %120 = add i64 %119, -1
  store i64 %120, i64* %12, align 8
  br label %121

121:                                              ; preds = %118, %107
  br label %122

122:                                              ; preds = %121, %103, %100
  %123 = load i64, i64* %12, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %122
  %126 = load i8, i8* %19, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %125
  %130 = load i8*, i8** %15, align 8
  %131 = load i64, i64* %12, align 8
  %132 = sub i64 %131, 1
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8* %133, i8** %16, align 8
  %134 = load i8*, i8** %16, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = load i8, i8* %19, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %129
  %141 = load i8*, i8** %15, align 8
  %142 = load i8*, i8** %16, align 8
  %143 = load i8, i8* %18, align 1
  %144 = call i32 @isescaped(i8* %141, i8* %142, i8 signext %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = load i64, i64* %12, align 8
  %148 = add i64 %147, -1
  store i64 %148, i64* %12, align 8
  store i32 1, i32* %17, align 4
  br label %149

149:                                              ; preds = %146, %140, %129
  br label %150

150:                                              ; preds = %149, %125, %122
  %151 = load i64, i64* %12, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load i32, i32* %17, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i8*, i8** %14, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %156, %153
  br label %38

160:                                              ; preds = %156
  br label %161

161:                                              ; preds = %160, %150
  %162 = load i8*, i8** %14, align 8
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* %12, align 8
  %165 = add i64 %163, %164
  %166 = add i64 %165, 1
  %167 = call i8* @realloc(i8* %162, i64 %166)
  store i8* %167, i8** %16, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %161
  %170 = load i32*, i32** %7, align 8
  %171 = call i32 @FUNLOCKFILE(i32* %170)
  %172 = load i8*, i8** %14, align 8
  %173 = call i32 @free(i8* %172)
  store i8* null, i8** %6, align 8
  br label %351

174:                                              ; preds = %161
  %175 = load i8*, i8** %16, align 8
  store i8* %175, i8** %14, align 8
  %176 = load i8*, i8** %14, align 8
  %177 = load i64, i64* %13, align 8
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  %179 = load i8*, i8** %15, align 8
  %180 = load i64, i64* %12, align 8
  %181 = call i32 @memcpy(i8* %178, i8* %179, i64 %180)
  %182 = load i64, i64* %12, align 8
  %183 = load i64, i64* %13, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %13, align 8
  %185 = load i8*, i8** %14, align 8
  %186 = load i64, i64* %13, align 8
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8 0, i8* %187, align 1
  br label %38

188:                                              ; preds = %52, %38
  %189 = load i32*, i32** %7, align 8
  %190 = call i32 @FUNLOCKFILE(i32* %189)
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @FPARSELN_UNESCALL, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %343

195:                                              ; preds = %188
  %196 = load i8, i8* %18, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %343

199:                                              ; preds = %195
  %200 = load i8*, i8** %14, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %343

202:                                              ; preds = %199
  %203 = load i8*, i8** %14, align 8
  %204 = load i8, i8* %18, align 1
  %205 = call i32* @strchr(i8* %203, i8 signext %204)
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %343

207:                                              ; preds = %202
  %208 = load i8*, i8** %14, align 8
  store i8* %208, i8** %16, align 8
  store i8* %208, i8** %15, align 8
  br label %209

209:                                              ; preds = %333, %207
  %210 = load i8*, i8** %16, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 0
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %339

215:                                              ; preds = %209
  br label %216

216:                                              ; preds = %232, %215
  %217 = load i8*, i8** %16, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %216
  %223 = load i8*, i8** %16, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = load i8, i8* %18, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %226, %228
  br label %230

230:                                              ; preds = %222, %216
  %231 = phi i1 [ false, %216 ], [ %229, %222 ]
  br i1 %231, label %232, label %238

232:                                              ; preds = %230
  %233 = load i8*, i8** %16, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %16, align 8
  %235 = load i8, i8* %233, align 1
  %236 = load i8*, i8** %15, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %15, align 8
  store i8 %235, i8* %236, align 1
  br label %216

238:                                              ; preds = %230
  %239 = load i8*, i8** %16, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 0
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %238
  %245 = load i8*, i8** %16, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %244, %238
  br label %339

251:                                              ; preds = %244
  store i32 0, i32* %22, align 4
  %252 = load i8*, i8** %16, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 1
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = load i8, i8* %21, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %255, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %251
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* @FPARSELN_UNESCCOMM, align 4
  %262 = and i32 %260, %261
  %263 = load i32, i32* %22, align 4
  %264 = add nsw i32 %263, %262
  store i32 %264, i32* %22, align 4
  br label %265

265:                                              ; preds = %259, %251
  %266 = load i8*, i8** %16, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 1
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = load i8, i8* %19, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %269, %271
  br i1 %272, label %273, label %279

273:                                              ; preds = %265
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* @FPARSELN_UNESCCONT, align 4
  %276 = and i32 %274, %275
  %277 = load i32, i32* %22, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %22, align 4
  br label %279

279:                                              ; preds = %273, %265
  %280 = load i8*, i8** %16, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 1
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = load i8, i8* %18, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %283, %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %279
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* @FPARSELN_UNESCESC, align 4
  %290 = and i32 %288, %289
  %291 = load i32, i32* %22, align 4
  %292 = add nsw i32 %291, %290
  store i32 %292, i32* %22, align 4
  br label %293

293:                                              ; preds = %287, %279
  %294 = load i8*, i8** %16, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 1
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = load i8, i8* %21, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp ne i32 %297, %299
  br i1 %300, label %301, label %321

301:                                              ; preds = %293
  %302 = load i8*, i8** %16, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 1
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = load i8, i8* %19, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp ne i32 %305, %307
  br i1 %308, label %309, label %321

309:                                              ; preds = %301
  %310 = load i8*, i8** %16, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 1
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = load i8, i8* %18, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp ne i32 %313, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %309
  %318 = load i32, i32* %11, align 4
  %319 = load i32, i32* @FPARSELN_UNESCREST, align 4
  %320 = and i32 %318, %319
  store i32 %320, i32* %22, align 4
  br label %321

321:                                              ; preds = %317, %309, %301, %293
  %322 = load i32, i32* %22, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i8*, i8** %16, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %16, align 8
  br label %333

327:                                              ; preds = %321
  %328 = load i8*, i8** %16, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %16, align 8
  %330 = load i8, i8* %328, align 1
  %331 = load i8*, i8** %15, align 8
  %332 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %332, i8** %15, align 8
  store i8 %330, i8* %331, align 1
  br label %333

333:                                              ; preds = %327, %324
  %334 = load i8*, i8** %16, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %16, align 8
  %336 = load i8, i8* %334, align 1
  %337 = load i8*, i8** %15, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %15, align 8
  store i8 %336, i8* %337, align 1
  br label %209

339:                                              ; preds = %250, %209
  %340 = load i8*, i8** %15, align 8
  store i8 0, i8* %340, align 1
  %341 = load i8*, i8** %14, align 8
  %342 = call i64 @strlen(i8* %341)
  store i64 %342, i64* %13, align 8
  br label %343

343:                                              ; preds = %339, %202, %199, %195, %188
  %344 = load i64*, i64** %8, align 8
  %345 = icmp ne i64* %344, null
  br i1 %345, label %346, label %349

346:                                              ; preds = %343
  %347 = load i64, i64* %13, align 8
  %348 = load i64*, i64** %8, align 8
  store i64 %347, i64* %348, align 8
  br label %349

349:                                              ; preds = %346, %343
  %350 = load i8*, i8** %14, align 8
  store i8* %350, i8** %6, align 8
  br label %351

351:                                              ; preds = %349, %169
  %352 = load i8*, i8** %6, align 8
  ret i8* %352
}

declare dso_local i32 @FLOCKFILE(i32*) #1

declare dso_local i8* @__fgetln(i32*, i64*) #1

declare dso_local i32 @isescaped(i8*, i8*, i8 signext) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @FUNLOCKFILE(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
