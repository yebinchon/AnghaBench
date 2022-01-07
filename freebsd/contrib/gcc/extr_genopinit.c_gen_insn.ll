; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genopinit.c_gen_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genopinit.c_gen_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optabs = common dso_local global i8** null, align 8
@NUM_RTX_CODE = common dso_local global i32 0, align 4
@RTX_COMPARE = common dso_local global i32 0, align 4
@RTX_COMM_COMPARE = common dso_local global i32 0, align 4
@mode_class = common dso_local global i32* null, align 8
@MODE_INT = common dso_local global i32 0, align 4
@MODE_VECTOR_INT = common dso_local global i32 0, align 4
@MODE_PARTIAL_INT = common dso_local global i32 0, align 4
@MODE_FLOAT = common dso_local global i32 0, align 4
@MODE_DECIMAL_FLOAT = common dso_local global i32 0, align 4
@MODE_COMPLEX_FLOAT = common dso_local global i32 0, align 4
@MODE_VECTOR_FLOAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"  if (HAVE_%s)\0A  \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%smode\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gen_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_insn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i64* @XSTR(i32 %18, i32 0)
  %20 = bitcast i64* %19 to i8*
  store i8* %20, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %471

26:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %355, %26
  %28 = load i64, i64* %7, align 8
  %29 = load i8**, i8*** @optabs, align 8
  %30 = call i64 @ARRAY_SIZE(i8** %29)
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %358

32:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %33 = load i8**, i8*** @optabs, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %52, %32
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 36
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 40
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ true, %37 ], [ %48, %43 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  br label %37

55:                                               ; preds = %49
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %3, align 8
  store i8* %58, i8** %9, align 8
  br label %59

59:                                               ; preds = %321, %55
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 36
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 41
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i1 [ false, %62 ], [ %73, %68 ]
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %74, %59
  %78 = phi i1 [ false, %59 ], [ %76, %74 ]
  br i1 %78, label %79, label %324

79:                                               ; preds = %77
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 36
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %9, align 8
  %90 = load i8, i8* %88, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %324

94:                                               ; preds = %84
  br label %320

95:                                               ; preds = %79
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %10, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  switch i32 %99, label %317 [
    i32 78, label %100
    i32 73, label %101
    i32 80, label %102
    i32 70, label %103
    i32 86, label %104
    i32 99, label %105
    i32 97, label %171
    i32 98, label %171
  ]

100:                                              ; preds = %95
  store i32 1, i32* %16, align 4
  br label %319

101:                                              ; preds = %95
  store i32 1, i32* %14, align 4
  br label %319

102:                                              ; preds = %95
  store i32 1, i32* %15, align 4
  br label %319

103:                                              ; preds = %95
  store i32 1, i32* %13, align 4
  br label %319

104:                                              ; preds = %95
  br label %319

105:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %155, %105
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @NUM_RTX_CODE, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %158

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = call i8* @GET_RTX_NAME(i32 %111)
  store i8* %112, i8** %11, align 8
  %113 = load i8*, i8** %9, align 8
  store i8* %113, i8** %12, align 8
  br label %114

114:                                              ; preds = %128, %110
  %115 = load i8*, i8** %11, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load i8*, i8** %11, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8*, i8** %12, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %133

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %11, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %12, align 8
  br label %114

133:                                              ; preds = %126, %114
  %134 = load i8*, i8** %11, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load i8*, i8** %12, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @GET_RTX_CLASS(i32 %144)
  %146 = load i32, i32* @RTX_COMPARE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @GET_RTX_CLASS(i32 %149)
  %151 = load i32, i32* @RTX_COMM_COMPARE, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %148, %143
  br label %158

154:                                              ; preds = %148, %138, %133
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %106

158:                                              ; preds = %153, %106
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @NUM_RTX_CODE, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 0, i32* %17, align 4
  br label %170

163:                                              ; preds = %158
  %164 = load i32, i32* %6, align 4
  %165 = call i8* @GET_RTX_NAME(i32 %164)
  %166 = call i32 @strlen(i8* %165)
  %167 = load i8*, i8** %9, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8* %169, i8** %9, align 8
  br label %170

170:                                              ; preds = %163, %162
  br label %319

171:                                              ; preds = %95, %95
  store i32 -1, i32* %8, align 4
  br label %172

172:                                              ; preds = %287, %171
  %173 = load i32, i32* %8, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %290

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = call i8* @GET_MODE_NAME(i32 %176)
  store i8* %177, i8** %11, align 8
  %178 = load i8*, i8** %9, align 8
  store i8* %178, i8** %12, align 8
  br label %179

179:                                              ; preds = %194, %175
  %180 = load i8*, i8** %11, align 8
  %181 = load i8, i8* %180, align 1
  %182 = icmp ne i8 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %179
  %184 = load i8*, i8** %11, align 8
  %185 = load i8, i8* %184, align 1
  %186 = call signext i8 @TOLOWER(i8 signext %185)
  %187 = sext i8 %186 to i32
  %188 = load i8*, i8** %12, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %187, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %183
  br label %199

193:                                              ; preds = %183
  br label %194

194:                                              ; preds = %193
  %195 = load i8*, i8** %11, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %11, align 8
  %197 = load i8*, i8** %12, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %12, align 8
  br label %179

199:                                              ; preds = %192, %179
  %200 = load i8*, i8** %11, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %286

204:                                              ; preds = %199
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %223

207:                                              ; preds = %204
  %208 = load i32*, i32** @mode_class, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @MODE_INT, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %223, label %215

215:                                              ; preds = %207
  %216 = load i32*, i32** @mode_class, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @MODE_VECTOR_INT, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %286

223:                                              ; preds = %215, %207, %204
  %224 = load i32, i32* %15, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %250

226:                                              ; preds = %223
  %227 = load i32*, i32** @mode_class, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @MODE_INT, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %250, label %234

234:                                              ; preds = %226
  %235 = load i32*, i32** @mode_class, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @MODE_PARTIAL_INT, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %250, label %242

242:                                              ; preds = %234
  %243 = load i32*, i32** @mode_class, align 8
  %244 = load i32, i32* %8, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @MODE_VECTOR_INT, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %286

250:                                              ; preds = %242, %234, %226, %223
  %251 = load i32, i32* %13, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %285

253:                                              ; preds = %250
  %254 = load i32*, i32** @mode_class, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @MODE_FLOAT, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %285, label %261

261:                                              ; preds = %253
  %262 = load i32*, i32** @mode_class, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %285, label %269

269:                                              ; preds = %261
  %270 = load i32*, i32** @mode_class, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @MODE_COMPLEX_FLOAT, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %285, label %277

277:                                              ; preds = %269
  %278 = load i32*, i32** @mode_class, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @MODE_VECTOR_FLOAT, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %277, %269, %261, %253, %250
  br label %290

286:                                              ; preds = %277, %242, %215, %199
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %8, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %8, align 4
  br label %172

290:                                              ; preds = %285, %172
  %291 = load i32, i32* %8, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %290
  store i32 0, i32* %17, align 4
  br label %316

294:                                              ; preds = %290
  %295 = load i8*, i8** %10, align 8
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp eq i32 %297, 97
  br i1 %298, label %299, label %307

299:                                              ; preds = %294
  %300 = load i32, i32* %8, align 4
  store i32 %300, i32* %4, align 4
  %301 = load i32, i32* %8, align 4
  %302 = call i8* @GET_MODE_NAME(i32 %301)
  %303 = call i32 @strlen(i8* %302)
  %304 = load i8*, i8** %9, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  store i8* %306, i8** %9, align 8
  br label %315

307:                                              ; preds = %294
  %308 = load i32, i32* %8, align 4
  store i32 %308, i32* %5, align 4
  %309 = load i32, i32* %8, align 4
  %310 = call i8* @GET_MODE_NAME(i32 %309)
  %311 = call i32 @strlen(i8* %310)
  %312 = load i8*, i8** %9, align 8
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i8, i8* %312, i64 %313
  store i8* %314, i8** %9, align 8
  br label %315

315:                                              ; preds = %307, %299
  br label %316

316:                                              ; preds = %315, %293
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %319

317:                                              ; preds = %95
  %318 = call i32 (...) @gcc_unreachable()
  br label %319

319:                                              ; preds = %317, %316, %170, %104, %103, %102, %101, %100
  br label %320

320:                                              ; preds = %319, %94
  br label %321

321:                                              ; preds = %320
  %322 = load i8*, i8** %10, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %10, align 8
  br label %59

324:                                              ; preds = %93, %77
  %325 = load i32, i32* %17, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %354

327:                                              ; preds = %324
  %328 = load i8*, i8** %10, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 0
  %330 = load i8, i8* %329, align 1
  %331 = sext i8 %330 to i32
  %332 = icmp eq i32 %331, 36
  br i1 %332, label %333, label %354

333:                                              ; preds = %327
  %334 = load i8*, i8** %10, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 1
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = icmp eq i32 %337, 41
  br i1 %338, label %339, label %354

339:                                              ; preds = %333
  %340 = load i8*, i8** %9, align 8
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %354

344:                                              ; preds = %339
  %345 = load i32, i32* %16, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %344
  %348 = load i32, i32* %4, align 4
  %349 = call i64 @GET_MODE_WIDER_MODE(i32 %348)
  %350 = trunc i64 %349 to i32
  %351 = load i32, i32* %5, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %347, %344
  br label %358

354:                                              ; preds = %347, %339, %333, %327, %324
  br label %355

355:                                              ; preds = %354
  %356 = load i64, i64* %7, align 8
  %357 = add i64 %356, 1
  store i64 %357, i64* %7, align 8
  br label %27

358:                                              ; preds = %353, %27
  %359 = load i64, i64* %7, align 8
  %360 = load i8**, i8*** @optabs, align 8
  %361 = call i64 @ARRAY_SIZE(i8** %360)
  %362 = icmp eq i64 %359, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %358
  br label %471

364:                                              ; preds = %358
  %365 = load i32, i32* %2, align 4
  %366 = call i64* @XSTR(i32 %365, i32 2)
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %364
  %370 = load i8*, i8** %3, align 8
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %370)
  br label %372

372:                                              ; preds = %369, %364
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %374 = load i8**, i8*** @optabs, align 8
  %375 = load i64, i64* %7, align 8
  %376 = getelementptr inbounds i8*, i8** %374, i64 %375
  %377 = load i8*, i8** %376, align 8
  store i8* %377, i8** %10, align 8
  br label %378

378:                                              ; preds = %466, %372
  %379 = load i8*, i8** %10, align 8
  %380 = load i8, i8* %379, align 1
  %381 = icmp ne i8 %380, 0
  br i1 %381, label %382, label %469

382:                                              ; preds = %378
  %383 = load i8*, i8** %10, align 8
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp ne i32 %385, 36
  br i1 %386, label %387, label %391

387:                                              ; preds = %382
  %388 = load i8*, i8** %10, align 8
  %389 = load i8, i8* %388, align 1
  %390 = call i32 @putchar(i8 signext %389)
  br label %465

391:                                              ; preds = %382
  %392 = load i8*, i8** %10, align 8
  %393 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %393, i8** %10, align 8
  %394 = load i8, i8* %393, align 1
  %395 = sext i8 %394 to i32
  switch i32 %395, label %464 [
    i32 40, label %396
    i32 41, label %396
    i32 73, label %396
    i32 70, label %396
    i32 78, label %396
    i32 86, label %397
    i32 97, label %404
    i32 98, label %420
    i32 65, label %436
    i32 66, label %440
    i32 99, label %444
    i32 67, label %448
  ]

396:                                              ; preds = %391, %391, %391, %391, %391
  br label %464

397:                                              ; preds = %391
  %398 = load i32, i32* %4, align 4
  %399 = call i32 @SCALAR_FLOAT_MODE_P(i32 %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %397
  %402 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %403

403:                                              ; preds = %401, %397
  br label %464

404:                                              ; preds = %391
  %405 = load i32, i32* %4, align 4
  %406 = call i8* @GET_MODE_NAME(i32 %405)
  store i8* %406, i8** %9, align 8
  br label %407

407:                                              ; preds = %416, %404
  %408 = load i8*, i8** %9, align 8
  %409 = load i8, i8* %408, align 1
  %410 = icmp ne i8 %409, 0
  br i1 %410, label %411, label %419

411:                                              ; preds = %407
  %412 = load i8*, i8** %9, align 8
  %413 = load i8, i8* %412, align 1
  %414 = call signext i8 @TOLOWER(i8 signext %413)
  %415 = call i32 @putchar(i8 signext %414)
  br label %416

416:                                              ; preds = %411
  %417 = load i8*, i8** %9, align 8
  %418 = getelementptr inbounds i8, i8* %417, i32 1
  store i8* %418, i8** %9, align 8
  br label %407

419:                                              ; preds = %407
  br label %464

420:                                              ; preds = %391
  %421 = load i32, i32* %5, align 4
  %422 = call i8* @GET_MODE_NAME(i32 %421)
  store i8* %422, i8** %9, align 8
  br label %423

423:                                              ; preds = %432, %420
  %424 = load i8*, i8** %9, align 8
  %425 = load i8, i8* %424, align 1
  %426 = icmp ne i8 %425, 0
  br i1 %426, label %427, label %435

427:                                              ; preds = %423
  %428 = load i8*, i8** %9, align 8
  %429 = load i8, i8* %428, align 1
  %430 = call signext i8 @TOLOWER(i8 signext %429)
  %431 = call i32 @putchar(i8 signext %430)
  br label %432

432:                                              ; preds = %427
  %433 = load i8*, i8** %9, align 8
  %434 = getelementptr inbounds i8, i8* %433, i32 1
  store i8* %434, i8** %9, align 8
  br label %423

435:                                              ; preds = %423
  br label %464

436:                                              ; preds = %391
  %437 = load i32, i32* %4, align 4
  %438 = call i8* @GET_MODE_NAME(i32 %437)
  %439 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %438)
  br label %464

440:                                              ; preds = %391
  %441 = load i32, i32* %5, align 4
  %442 = call i8* @GET_MODE_NAME(i32 %441)
  %443 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %442)
  br label %464

444:                                              ; preds = %391
  %445 = load i32, i32* %6, align 4
  %446 = call i8* @GET_RTX_NAME(i32 %445)
  %447 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %446)
  br label %464

448:                                              ; preds = %391
  %449 = load i32, i32* %6, align 4
  %450 = call i8* @GET_RTX_NAME(i32 %449)
  store i8* %450, i8** %9, align 8
  br label %451

451:                                              ; preds = %460, %448
  %452 = load i8*, i8** %9, align 8
  %453 = load i8, i8* %452, align 1
  %454 = icmp ne i8 %453, 0
  br i1 %454, label %455, label %463

455:                                              ; preds = %451
  %456 = load i8*, i8** %9, align 8
  %457 = load i8, i8* %456, align 1
  %458 = call signext i8 @TOUPPER(i8 signext %457)
  %459 = call i32 @putchar(i8 signext %458)
  br label %460

460:                                              ; preds = %455
  %461 = load i8*, i8** %9, align 8
  %462 = getelementptr inbounds i8, i8* %461, i32 1
  store i8* %462, i8** %9, align 8
  br label %451

463:                                              ; preds = %451
  br label %464

464:                                              ; preds = %391, %463, %444, %440, %436, %435, %419, %403, %396
  br label %465

465:                                              ; preds = %464, %387
  br label %466

466:                                              ; preds = %465
  %467 = load i8*, i8** %10, align 8
  %468 = getelementptr inbounds i8, i8* %467, i32 1
  store i8* %468, i8** %10, align 8
  br label %378

469:                                              ; preds = %378
  %470 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %471

471:                                              ; preds = %469, %363, %25
  ret void
}

declare dso_local i64* @XSTR(i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i8* @GET_RTX_NAME(i32) #1

declare dso_local i32 @GET_RTX_CLASS(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local signext i8 @TOUPPER(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
