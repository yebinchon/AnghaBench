; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decToString.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64*, i32, i32 }

@DECSPECIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@DECSNAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@DECDPUN = common dso_local global i32 0, align 4
@DECUNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i32)* @decToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decToString(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %11, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @D2U(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  %30 = getelementptr inbounds i64, i64* %29, i64 -1
  store i64* %30, i64** %12, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = call i64 @decNumberIsNegative(%struct.TYPE_7__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i8*, i8** %11, align 8
  store i8 45, i8* %35, align 1
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %34, %3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DECSPECIAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = call i64 @decNumberIsInfinite(%struct.TYPE_7__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %387

52:                                               ; preds = %45
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DECSNAN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i8*, i8** %11, align 8
  store i8 115, i8* %60, align 1
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 8
  br label %63

63:                                               ; preds = %59, %52
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  store i8* %67, i8** %11, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %63
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %63
  br label %387

82:                                               ; preds = %76, %70
  br label %83

83:                                               ; preds = %82, %38
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DECDPUN, align 4
  %88 = srem i32 %86, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @DECDPUN, align 4
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %92, %83
  %96 = load i64, i64* %10, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %10, align 8
  %98 = load i64, i64* %7, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %127, %100
  %102 = load i64*, i64** %12, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = icmp uge i64* %102, %105
  br i1 %106, label %107, label %130

107:                                              ; preds = %101
  %108 = load i64*, i64** %12, align 8
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %13, align 8
  br label %110

110:                                              ; preds = %118, %107
  %111 = load i64, i64* %10, align 8
  %112 = icmp sge i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @TODIGIT(i64 %114, i64 %115, i8* %116)
  br label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = add nsw i64 %121, -1
  store i64 %122, i64* %10, align 8
  br label %110

123:                                              ; preds = %110
  %124 = load i32, i32* @DECDPUN, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %10, align 8
  br label %127

127:                                              ; preds = %123
  %128 = load i64*, i64** %12, align 8
  %129 = getelementptr inbounds i64, i64* %128, i32 -1
  store i64* %129, i64** %12, align 8
  br label %101

130:                                              ; preds = %101
  %131 = load i8*, i8** %11, align 8
  store i8 0, i8* %131, align 1
  br label %387

132:                                              ; preds = %95
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %7, align 8
  %138 = add nsw i64 %136, %137
  store i64 %138, i64* %9, align 8
  store i64 0, i64* %8, align 8
  %139 = load i64, i64* %7, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %132
  %142 = load i64, i64* %9, align 8
  %143 = icmp slt i64 %142, -5
  br i1 %143, label %144, label %196

144:                                              ; preds = %141, %132
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %145, %149
  %151 = sub nsw i64 %150, 1
  store i64 %151, i64* %8, align 8
  store i64 1, i64* %9, align 8
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %195

154:                                              ; preds = %144
  %155 = load i64, i64* %8, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %195

157:                                              ; preds = %154
  %158 = load i64, i64* %8, align 8
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load i64, i64* %8, align 8
  %162 = sub nsw i64 0, %161
  %163 = srem i64 %162, 3
  store i64 %163, i64* %15, align 8
  %164 = load i64, i64* %15, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i64, i64* %15, align 8
  %168 = sub nsw i64 3, %167
  store i64 %168, i64* %15, align 8
  br label %169

169:                                              ; preds = %166, %160
  br label %173

170:                                              ; preds = %157
  %171 = load i64, i64* %8, align 8
  %172 = srem i64 %171, 3
  store i64 %172, i64* %15, align 8
  br label %173

173:                                              ; preds = %170, %169
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* %15, align 8
  %176 = sub nsw i64 %174, %175
  store i64 %176, i64* %8, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %178 = call i32 @ISZERO(%struct.TYPE_7__* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %173
  %181 = load i64, i64* %15, align 8
  %182 = load i64, i64* %9, align 8
  %183 = add nsw i64 %182, %181
  store i64 %183, i64* %9, align 8
  br label %194

184:                                              ; preds = %173
  %185 = load i64, i64* %15, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load i64, i64* %8, align 8
  %189 = add nsw i64 %188, 3
  store i64 %189, i64* %8, align 8
  %190 = load i64, i64* %15, align 8
  %191 = sub nsw i64 2, %190
  %192 = sub nsw i64 0, %191
  store i64 %192, i64* %9, align 8
  br label %193

193:                                              ; preds = %187, %184
  br label %194

194:                                              ; preds = %193, %180
  br label %195

195:                                              ; preds = %194, %154, %144
  br label %196

196:                                              ; preds = %195, %141
  %197 = load i64*, i64** %12, align 8
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %13, align 8
  %199 = load i64, i64* %9, align 8
  %200 = icmp sgt i64 %199, 0
  br i1 %200, label %201, label %296

201:                                              ; preds = %196
  br label %202

202:                                              ; preds = %228, %201
  %203 = load i64, i64* %9, align 8
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %235

205:                                              ; preds = %202
  %206 = load i64, i64* %10, align 8
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %205
  %209 = load i64*, i64** %12, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i64*, i64** %211, align 8
  %213 = icmp eq i64* %209, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %235

215:                                              ; preds = %208
  %216 = load i64*, i64** %12, align 8
  %217 = getelementptr inbounds i64, i64* %216, i32 -1
  store i64* %217, i64** %12, align 8
  %218 = load i32, i32* @DECDPUN, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %10, align 8
  %221 = load i64*, i64** %12, align 8
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %13, align 8
  br label %223

223:                                              ; preds = %215, %205
  %224 = load i64, i64* %13, align 8
  %225 = load i64, i64* %10, align 8
  %226 = load i8*, i8** %11, align 8
  %227 = call i32 @TODIGIT(i64 %224, i64 %225, i8* %226)
  br label %228

228:                                              ; preds = %223
  %229 = load i64, i64* %9, align 8
  %230 = add nsw i64 %229, -1
  store i64 %230, i64* %9, align 8
  %231 = load i8*, i8** %11, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %11, align 8
  %233 = load i64, i64* %10, align 8
  %234 = add nsw i64 %233, -1
  store i64 %234, i64* %10, align 8
  br label %202

235:                                              ; preds = %214, %202
  %236 = load i64*, i64** %12, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  %239 = load i64*, i64** %238, align 8
  %240 = icmp ugt i64* %236, %239
  br i1 %240, label %250, label %241

241:                                              ; preds = %235
  %242 = load i64*, i64** %12, align 8
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i64*, i64** %244, align 8
  %246 = icmp eq i64* %242, %245
  br i1 %246, label %247, label %283

247:                                              ; preds = %241
  %248 = load i64, i64* %10, align 8
  %249 = icmp sge i64 %248, 0
  br i1 %249, label %250, label %283

250:                                              ; preds = %247, %235
  %251 = load i8*, i8** %11, align 8
  store i8 46, i8* %251, align 1
  %252 = load i8*, i8** %11, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %11, align 8
  br label %254

254:                                              ; preds = %277, %250
  %255 = load i64, i64* %10, align 8
  %256 = icmp slt i64 %255, 0
  br i1 %256, label %257, label %272

257:                                              ; preds = %254
  %258 = load i64*, i64** %12, align 8
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  %261 = load i64*, i64** %260, align 8
  %262 = icmp eq i64* %258, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %282

264:                                              ; preds = %257
  %265 = load i64*, i64** %12, align 8
  %266 = getelementptr inbounds i64, i64* %265, i32 -1
  store i64* %266, i64** %12, align 8
  %267 = load i32, i32* @DECDPUN, align 4
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  store i64 %269, i64* %10, align 8
  %270 = load i64*, i64** %12, align 8
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %13, align 8
  br label %272

272:                                              ; preds = %264, %254
  %273 = load i64, i64* %13, align 8
  %274 = load i64, i64* %10, align 8
  %275 = load i8*, i8** %11, align 8
  %276 = call i32 @TODIGIT(i64 %273, i64 %274, i8* %275)
  br label %277

277:                                              ; preds = %272
  %278 = load i8*, i8** %11, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %11, align 8
  %280 = load i64, i64* %10, align 8
  %281 = add nsw i64 %280, -1
  store i64 %281, i64* %10, align 8
  br label %254

282:                                              ; preds = %263
  br label %295

283:                                              ; preds = %247, %241
  br label %284

284:                                              ; preds = %289, %283
  %285 = load i64, i64* %9, align 8
  %286 = icmp sgt i64 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %284
  %288 = load i8*, i8** %11, align 8
  store i8 48, i8* %288, align 1
  br label %289

289:                                              ; preds = %287
  %290 = load i64, i64* %9, align 8
  %291 = add nsw i64 %290, -1
  store i64 %291, i64* %9, align 8
  %292 = load i8*, i8** %11, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %11, align 8
  br label %284

294:                                              ; preds = %284
  br label %295

295:                                              ; preds = %294, %282
  br label %343

296:                                              ; preds = %196
  %297 = load i8*, i8** %11, align 8
  store i8 48, i8* %297, align 1
  %298 = load i8*, i8** %11, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %11, align 8
  %300 = load i8*, i8** %11, align 8
  store i8 46, i8* %300, align 1
  %301 = load i8*, i8** %11, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %11, align 8
  br label %303

303:                                              ; preds = %308, %296
  %304 = load i64, i64* %9, align 8
  %305 = icmp slt i64 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %303
  %307 = load i8*, i8** %11, align 8
  store i8 48, i8* %307, align 1
  br label %308

308:                                              ; preds = %306
  %309 = load i64, i64* %9, align 8
  %310 = add nsw i64 %309, 1
  store i64 %310, i64* %9, align 8
  %311 = load i8*, i8** %11, align 8
  %312 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %312, i8** %11, align 8
  br label %303

313:                                              ; preds = %303
  br label %314

314:                                              ; preds = %337, %313
  %315 = load i64, i64* %10, align 8
  %316 = icmp slt i64 %315, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %314
  %318 = load i64*, i64** %12, align 8
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 1
  %321 = load i64*, i64** %320, align 8
  %322 = icmp eq i64* %318, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %317
  br label %342

324:                                              ; preds = %317
  %325 = load i64*, i64** %12, align 8
  %326 = getelementptr inbounds i64, i64* %325, i32 -1
  store i64* %326, i64** %12, align 8
  %327 = load i32, i32* @DECDPUN, align 4
  %328 = sub nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %10, align 8
  %330 = load i64*, i64** %12, align 8
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %13, align 8
  br label %332

332:                                              ; preds = %324, %314
  %333 = load i64, i64* %13, align 8
  %334 = load i64, i64* %10, align 8
  %335 = load i8*, i8** %11, align 8
  %336 = call i32 @TODIGIT(i64 %333, i64 %334, i8* %335)
  br label %337

337:                                              ; preds = %332
  %338 = load i8*, i8** %11, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %339, i8** %11, align 8
  %340 = load i64, i64* %10, align 8
  %341 = add nsw i64 %340, -1
  store i64 %341, i64* %10, align 8
  br label %314

342:                                              ; preds = %323
  br label %343

343:                                              ; preds = %342, %295
  %344 = load i64, i64* %8, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %385

346:                                              ; preds = %343
  store i32 0, i32* %16, align 4
  %347 = load i8*, i8** %11, align 8
  store i8 69, i8* %347, align 1
  %348 = load i8*, i8** %11, align 8
  %349 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %349, i8** %11, align 8
  %350 = load i8*, i8** %11, align 8
  store i8 43, i8* %350, align 1
  %351 = load i8*, i8** %11, align 8
  %352 = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %352, i8** %11, align 8
  %353 = load i64, i64* %8, align 8
  store i64 %353, i64* %13, align 8
  %354 = load i64, i64* %8, align 8
  %355 = icmp slt i64 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %346
  %357 = load i8*, i8** %11, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 -1
  store i8 45, i8* %358, align 1
  %359 = load i64, i64* %8, align 8
  %360 = sub nsw i64 0, %359
  store i64 %360, i64* %13, align 8
  br label %361

361:                                              ; preds = %356, %346
  store i64 9, i64* %10, align 8
  br label %362

362:                                              ; preds = %381, %361
  %363 = load i64, i64* %10, align 8
  %364 = icmp sge i64 %363, 0
  br i1 %364, label %365, label %384

365:                                              ; preds = %362
  %366 = load i64, i64* %13, align 8
  %367 = load i64, i64* %10, align 8
  %368 = load i8*, i8** %11, align 8
  %369 = call i32 @TODIGIT(i64 %366, i64 %367, i8* %368)
  %370 = load i8*, i8** %11, align 8
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp eq i32 %372, 48
  br i1 %373, label %374, label %378

374:                                              ; preds = %365
  %375 = load i32, i32* %16, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %374
  br label %381

378:                                              ; preds = %374, %365
  store i32 1, i32* %16, align 4
  %379 = load i8*, i8** %11, align 8
  %380 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %380, i8** %11, align 8
  br label %381

381:                                              ; preds = %378, %377
  %382 = load i64, i64* %10, align 8
  %383 = add nsw i64 %382, -1
  store i64 %383, i64* %10, align 8
  br label %362

384:                                              ; preds = %362
  br label %385

385:                                              ; preds = %384, %343
  %386 = load i8*, i8** %11, align 8
  store i8 0, i8* %386, align 1
  br label %387

387:                                              ; preds = %385, %130, %81, %49
  ret void
}

declare dso_local i32 @D2U(i32) #1

declare dso_local i64 @decNumberIsNegative(%struct.TYPE_7__*) #1

declare dso_local i64 @decNumberIsInfinite(%struct.TYPE_7__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @TODIGIT(i64, i64, i8*) #1

declare dso_local i32 @ISZERO(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
