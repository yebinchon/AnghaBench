; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_classify_argument.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_classify_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32, i64)* }

@MAX_CLASSES = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@X86_64_NO_CLASS = common dso_local global i32 0, align 4
@FIELD_DECL = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@X86_64_INTEGER_CLASS = common dso_local global i32 0, align 4
@X86_64_SSESF_CLASS = common dso_local global i32 0, align 4
@X86_64_SSE_CLASS = common dso_local global i32 0, align 4
@X86_64_INTEGERSI_CLASS = common dso_local global i32 0, align 4
@X86_64_MEMORY_CLASS = common dso_local global i32 0, align 4
@X86_64_SSEUP_CLASS = common dso_local global i32 0, align 4
@X86_64_X87UP_CLASS = common dso_local global i32 0, align 4
@X86_64_X87_CLASS = common dso_local global i32 0, align 4
@X86_64_SSEDF_CLASS = common dso_local global i32 0, align 4
@X86_64_COMPLEX_X87_CLASS = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*, i32)* @classify_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @classify_argument(i32 %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %29 = load i32, i32* @MAX_CLASSES, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 163
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @int_size_in_bytes(i64 %34)
  br label %39

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @GET_MODE_SIZE(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %35, %33 ], [ %38, %36 ]
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = srem i32 %42, 64
  %44 = sdiv i32 %43, 8
  %45 = add nsw i32 %41, %44
  %46 = load i32, i32* @UNITS_PER_WORD, align 4
  %47 = add nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @UNITS_PER_WORD, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %661

54:                                               ; preds = %39
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 130
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i64 (i32, i64)*, i64 (i32, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i64, i64* %7, align 8
  %61 = call i64 %58(i32 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %661

64:                                               ; preds = %57, %54
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %487

67:                                               ; preds = %64
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @AGGREGATE_TYPE_P(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %487

71:                                               ; preds = %67
  %72 = load i32, i32* @MAX_CLASSES, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %14, align 8
  %75 = alloca i32, i64 %73, align 16
  store i64 %73, i64* %15, align 8
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 16
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %485

79:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %90, %79
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* @X86_64_NO_CLASS, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %80

93:                                               ; preds = %80
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @X86_64_NO_CLASS, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %97, i32* %99, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %485

100:                                              ; preds = %93
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @TREE_CODE(i64 %101)
  switch i32 %102, label %411 [
    i32 150, label %103
    i32 164, label %288
    i32 141, label %341
    i32 151, label %341
  ]

103:                                              ; preds = %100
  %104 = load i64, i64* %7, align 8
  %105 = call i64 @TYPE_BINFO(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %172

107:                                              ; preds = %103
  %108 = load i64, i64* %7, align 8
  %109 = call i64 @TYPE_BINFO(i64 %108)
  store i64 %109, i64* %17, align 8
  store i32 0, i32* %19, align 4
  br label %110

110:                                              ; preds = %168, %107
  %111 = load i64, i64* %17, align 8
  %112 = load i32, i32* %19, align 4
  %113 = load i64, i64* %18, align 8
  %114 = call i32 @BINFO_BASE_ITERATE(i64 %111, i32 %112, i64 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %171

116:                                              ; preds = %110
  %117 = load i64, i64* %18, align 8
  %118 = call i32 @BINFO_OFFSET(i64 %117)
  %119 = call i32 @tree_low_cst(i32 %118, i32 0)
  %120 = mul nsw i32 %119, 8
  store i32 %120, i32* %21, align 4
  %121 = load i64, i64* %18, align 8
  %122 = call i64 @BINFO_TYPE(i64 %121)
  store i64 %122, i64* %22, align 8
  %123 = load i64, i64* %22, align 8
  %124 = call i32 @TYPE_MODE(i64 %123)
  %125 = load i64, i64* %22, align 8
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %126, %127
  %129 = srem i32 %128, 256
  %130 = call i32 @classify_argument(i32 %124, i64 %125, i32* %75, i32 %129)
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %485

134:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %164, %134
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %20, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %167

139:                                              ; preds = %135
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* %9, align 4
  %142 = srem i32 %141, 64
  %143 = add nsw i32 %140, %142
  %144 = sdiv i32 %143, 8
  %145 = sdiv i32 %144, 8
  store i32 %145, i32* %23, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %75, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %23, align 4
  %153 = add nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @merge_classes(i32 %149, i32 %156)
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %23, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %158, i64 %162
  store i32 %157, i32* %163, align 4
  br label %164

164:                                              ; preds = %139
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %135

167:                                              ; preds = %135
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %19, align 4
  br label %110

171:                                              ; preds = %110
  br label %172

172:                                              ; preds = %171, %103
  %173 = load i64, i64* %7, align 8
  %174 = call i64 @TYPE_FIELDS(i64 %173)
  store i64 %174, i64* %13, align 8
  br label %175

175:                                              ; preds = %284, %172
  %176 = load i64, i64* %13, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %287

178:                                              ; preds = %175
  %179 = load i64, i64* %13, align 8
  %180 = call i32 @TREE_CODE(i64 %179)
  %181 = load i32, i32* @FIELD_DECL, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %283

183:                                              ; preds = %178
  %184 = load i64, i64* %13, align 8
  %185 = call i64 @TREE_TYPE(i64 %184)
  %186 = load i64, i64* @error_mark_node, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %284

189:                                              ; preds = %183
  %190 = load i64, i64* %13, align 8
  %191 = call i32 @DECL_BIT_FIELD(i64 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %232

193:                                              ; preds = %189
  %194 = load i64, i64* %13, align 8
  %195 = call i32 @int_bit_position(i64 %194)
  %196 = load i32, i32* %9, align 4
  %197 = srem i32 %196, 64
  %198 = add nsw i32 %195, %197
  %199 = sdiv i32 %198, 8
  %200 = sdiv i32 %199, 8
  store i32 %200, i32* %12, align 4
  br label %201

201:                                              ; preds = %228, %193
  %202 = load i32, i32* %12, align 4
  %203 = load i64, i64* %13, align 8
  %204 = call i32 @int_bit_position(i64 %203)
  %205 = load i32, i32* %9, align 4
  %206 = srem i32 %205, 64
  %207 = add nsw i32 %204, %206
  %208 = load i64, i64* %13, align 8
  %209 = call i32 @DECL_SIZE(i64 %208)
  %210 = call i32 @tree_low_cst(i32 %209, i32 0)
  %211 = add nsw i32 %207, %210
  %212 = add nsw i32 %211, 63
  %213 = sdiv i32 %212, 8
  %214 = sdiv i32 %213, 8
  %215 = icmp slt i32 %202, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %201
  %217 = load i32, i32* @X86_64_INTEGER_CLASS, align 4
  %218 = load i32*, i32** %8, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @merge_classes(i32 %217, i32 %222)
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %223, i32* %227, align 4
  br label %228

228:                                              ; preds = %216
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %201

231:                                              ; preds = %201
  br label %282

232:                                              ; preds = %189
  %233 = load i64, i64* %13, align 8
  %234 = call i64 @TREE_TYPE(i64 %233)
  %235 = call i32 @TYPE_MODE(i64 %234)
  %236 = load i64, i64* %13, align 8
  %237 = call i64 @TREE_TYPE(i64 %236)
  %238 = load i64, i64* %13, align 8
  %239 = call i32 @int_bit_position(i64 %238)
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %239, %240
  %242 = srem i32 %241, 256
  %243 = call i32 @classify_argument(i32 %235, i64 %237, i32* %75, i32 %242)
  store i32 %243, i32* %24, align 4
  %244 = load i32, i32* %24, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %232
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %485

247:                                              ; preds = %232
  store i32 0, i32* %12, align 4
  br label %248

248:                                              ; preds = %278, %247
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %24, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %281

252:                                              ; preds = %248
  %253 = load i64, i64* %13, align 8
  %254 = call i32 @int_bit_position(i64 %253)
  %255 = load i32, i32* %9, align 4
  %256 = srem i32 %255, 64
  %257 = add nsw i32 %254, %256
  %258 = sdiv i32 %257, 8
  %259 = sdiv i32 %258, 8
  store i32 %259, i32* %25, align 4
  %260 = load i32, i32* %12, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %75, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %8, align 8
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %25, align 4
  %267 = add nsw i32 %265, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %264, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @merge_classes(i32 %263, i32 %270)
  %272 = load i32*, i32** %8, align 8
  %273 = load i32, i32* %12, align 4
  %274 = load i32, i32* %25, align 4
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %272, i64 %276
  store i32 %271, i32* %277, align 4
  br label %278

278:                                              ; preds = %252
  %279 = load i32, i32* %12, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %12, align 4
  br label %248

281:                                              ; preds = %248
  br label %282

282:                                              ; preds = %281, %231
  br label %283

283:                                              ; preds = %282, %178
  br label %284

284:                                              ; preds = %283, %188
  %285 = load i64, i64* %13, align 8
  %286 = call i64 @TREE_CHAIN(i64 %285)
  store i64 %286, i64* %13, align 8
  br label %175

287:                                              ; preds = %175
  br label %413

288:                                              ; preds = %100
  %289 = load i64, i64* %7, align 8
  %290 = call i64 @TREE_TYPE(i64 %289)
  %291 = call i32 @TYPE_MODE(i64 %290)
  %292 = load i64, i64* %7, align 8
  %293 = call i64 @TREE_TYPE(i64 %292)
  %294 = load i32, i32* %9, align 4
  %295 = call i32 @classify_argument(i32 %291, i64 %293, i32* %75, i32 %294)
  store i32 %295, i32* %26, align 4
  %296 = load i32, i32* %26, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %288
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %485

299:                                              ; preds = %288
  %300 = getelementptr inbounds i32, i32* %75, i64 0
  %301 = load i32, i32* %300, align 16
  %302 = load i32, i32* @X86_64_SSESF_CLASS, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %299
  %305 = load i32, i32* %10, align 4
  %306 = icmp ne i32 %305, 4
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load i32, i32* @X86_64_SSE_CLASS, align 4
  %309 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %308, i32* %309, align 16
  br label %310

310:                                              ; preds = %307, %304, %299
  %311 = getelementptr inbounds i32, i32* %75, i64 0
  %312 = load i32, i32* %311, align 16
  %313 = load i32, i32* @X86_64_INTEGERSI_CLASS, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = load i32, i32* %10, align 4
  %317 = icmp ne i32 %316, 4
  br i1 %317, label %318, label %321

318:                                              ; preds = %315
  %319 = load i32, i32* @X86_64_INTEGER_CLASS, align 4
  %320 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %319, i32* %320, align 16
  br label %321

321:                                              ; preds = %318, %315, %310
  store i32 0, i32* %12, align 4
  br label %322

322:                                              ; preds = %337, %321
  %323 = load i32, i32* %12, align 4
  %324 = load i32, i32* %11, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %340

326:                                              ; preds = %322
  %327 = load i32, i32* %12, align 4
  %328 = load i32, i32* %26, align 4
  %329 = srem i32 %327, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %75, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32*, i32** %8, align 8
  %334 = load i32, i32* %12, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  store i32 %332, i32* %336, align 4
  br label %337

337:                                              ; preds = %326
  %338 = load i32, i32* %12, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %12, align 4
  br label %322

340:                                              ; preds = %322
  br label %413

341:                                              ; preds = %100, %100
  %342 = load i64, i64* %7, align 8
  %343 = call i64 @TYPE_BINFO(i64 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %341
  %346 = load i64, i64* %7, align 8
  %347 = call i64 @TYPE_BINFO(i64 %346)
  %348 = call i32 @BINFO_N_BASE_BINFOS(i64 %347)
  %349 = icmp ne i32 %348, 0
  %350 = xor i1 %349, true
  br label %351

351:                                              ; preds = %345, %341
  %352 = phi i1 [ true, %341 ], [ %350, %345 ]
  %353 = zext i1 %352 to i32
  %354 = call i32 @gcc_assert(i32 %353)
  %355 = load i64, i64* %7, align 8
  %356 = call i64 @TYPE_FIELDS(i64 %355)
  store i64 %356, i64* %13, align 8
  br label %357

357:                                              ; preds = %407, %351
  %358 = load i64, i64* %13, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %410

360:                                              ; preds = %357
  %361 = load i64, i64* %13, align 8
  %362 = call i32 @TREE_CODE(i64 %361)
  %363 = load i32, i32* @FIELD_DECL, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %406

365:                                              ; preds = %360
  %366 = load i64, i64* %13, align 8
  %367 = call i64 @TREE_TYPE(i64 %366)
  %368 = load i64, i64* @error_mark_node, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %365
  br label %407

371:                                              ; preds = %365
  %372 = load i64, i64* %13, align 8
  %373 = call i64 @TREE_TYPE(i64 %372)
  %374 = call i32 @TYPE_MODE(i64 %373)
  %375 = load i64, i64* %13, align 8
  %376 = call i64 @TREE_TYPE(i64 %375)
  %377 = load i32, i32* %9, align 4
  %378 = call i32 @classify_argument(i32 %374, i64 %376, i32* %75, i32 %377)
  store i32 %378, i32* %27, align 4
  %379 = load i32, i32* %27, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %371
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %485

382:                                              ; preds = %371
  store i32 0, i32* %12, align 4
  br label %383

383:                                              ; preds = %402, %382
  %384 = load i32, i32* %12, align 4
  %385 = load i32, i32* %27, align 4
  %386 = icmp slt i32 %384, %385
  br i1 %386, label %387, label %405

387:                                              ; preds = %383
  %388 = load i32, i32* %12, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %75, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %8, align 8
  %393 = load i32, i32* %12, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @merge_classes(i32 %391, i32 %396)
  %398 = load i32*, i32** %8, align 8
  %399 = load i32, i32* %12, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  store i32 %397, i32* %401, align 4
  br label %402

402:                                              ; preds = %387
  %403 = load i32, i32* %12, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %12, align 4
  br label %383

405:                                              ; preds = %383
  br label %406

406:                                              ; preds = %405, %360
  br label %407

407:                                              ; preds = %406, %370
  %408 = load i64, i64* %13, align 8
  %409 = call i64 @TREE_CHAIN(i64 %408)
  store i64 %409, i64* %13, align 8
  br label %357

410:                                              ; preds = %357
  br label %413

411:                                              ; preds = %100
  %412 = call i32 (...) @gcc_unreachable()
  br label %413

413:                                              ; preds = %411, %410, %340, %287
  store i32 0, i32* %12, align 4
  br label %414

414:                                              ; preds = %480, %413
  %415 = load i32, i32* %12, align 4
  %416 = load i32, i32* %11, align 4
  %417 = icmp slt i32 %415, %416
  br i1 %417, label %418, label %483

418:                                              ; preds = %414
  %419 = load i32*, i32** %8, align 8
  %420 = load i32, i32* %12, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @X86_64_MEMORY_CLASS, align 4
  %425 = icmp eq i32 %423, %424
  br i1 %425, label %426, label %427

426:                                              ; preds = %418
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %485

427:                                              ; preds = %418
  %428 = load i32*, i32** %8, align 8
  %429 = load i32, i32* %12, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* @X86_64_SSEUP_CLASS, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %453

435:                                              ; preds = %427
  %436 = load i32, i32* %12, align 4
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %447, label %438

438:                                              ; preds = %435
  %439 = load i32*, i32** %8, align 8
  %440 = load i32, i32* %12, align 4
  %441 = sub nsw i32 %440, 1
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %439, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* @X86_64_SSE_CLASS, align 4
  %446 = icmp ne i32 %444, %445
  br i1 %446, label %447, label %453

447:                                              ; preds = %438, %435
  %448 = load i32, i32* @X86_64_SSE_CLASS, align 4
  %449 = load i32*, i32** %8, align 8
  %450 = load i32, i32* %12, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %449, i64 %451
  store i32 %448, i32* %452, align 4
  br label %453

453:                                              ; preds = %447, %438, %427
  %454 = load i32*, i32** %8, align 8
  %455 = load i32, i32* %12, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @X86_64_X87UP_CLASS, align 4
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %479

461:                                              ; preds = %453
  %462 = load i32, i32* %12, align 4
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %473, label %464

464:                                              ; preds = %461
  %465 = load i32*, i32** %8, align 8
  %466 = load i32, i32* %12, align 4
  %467 = sub nsw i32 %466, 1
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %465, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* @X86_64_X87_CLASS, align 4
  %472 = icmp ne i32 %470, %471
  br i1 %472, label %473, label %479

473:                                              ; preds = %464, %461
  %474 = load i32, i32* @X86_64_SSE_CLASS, align 4
  %475 = load i32*, i32** %8, align 8
  %476 = load i32, i32* %12, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  store i32 %474, i32* %478, align 4
  br label %479

479:                                              ; preds = %473, %464, %453
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %12, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %12, align 4
  br label %414

483:                                              ; preds = %414
  %484 = load i32, i32* %11, align 4
  store i32 %484, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %485

485:                                              ; preds = %483, %426, %381, %298, %246, %133, %96, %78
  %486 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %486)
  br label %661

487:                                              ; preds = %67, %64
  %488 = load i32, i32* %6, align 4
  %489 = icmp ne i32 %488, 130
  br i1 %489, label %490, label %518

490:                                              ; preds = %487
  %491 = load i32, i32* %6, align 4
  %492 = icmp ne i32 %491, 163
  br i1 %492, label %493, label %518

493:                                              ; preds = %490
  %494 = load i32, i32* %6, align 4
  %495 = call i32 @GET_MODE_BITSIZE(i32 %494)
  store i32 %495, i32* %28, align 4
  %496 = load i32, i32* %6, align 4
  %497 = icmp eq i32 %496, 128
  br i1 %497, label %498, label %499

498:                                              ; preds = %493
  store i32 128, i32* %28, align 4
  br label %504

499:                                              ; preds = %493
  %500 = load i32, i32* %6, align 4
  %501 = icmp eq i32 %500, 129
  br i1 %501, label %502, label %503

502:                                              ; preds = %499
  store i32 256, i32* %28, align 4
  br label %503

503:                                              ; preds = %502, %499
  br label %504

504:                                              ; preds = %503, %498
  %505 = load i32, i32* %6, align 4
  %506 = call i64 @COMPLEX_MODE_P(i32 %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %511

508:                                              ; preds = %504
  %509 = load i32, i32* %28, align 4
  %510 = sdiv i32 %509, 2
  store i32 %510, i32* %28, align 4
  br label %511

511:                                              ; preds = %508, %504
  %512 = load i32, i32* %9, align 4
  %513 = load i32, i32* %28, align 4
  %514 = srem i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %517

516:                                              ; preds = %511
  store i32 0, i32* %5, align 4
  br label %661

517:                                              ; preds = %511
  br label %518

518:                                              ; preds = %517, %490, %487
  %519 = load i32, i32* %6, align 4
  %520 = call i32 @VECTOR_MODE_P(i32 %519)
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %531

522:                                              ; preds = %518
  %523 = load i32, i32* %6, align 4
  %524 = call i32 @GET_MODE_INNER(i32 %523)
  %525 = call i32 @GET_MODE_SIZE(i32 %524)
  %526 = load i32, i32* %10, align 4
  %527 = icmp eq i32 %525, %526
  br i1 %527, label %528, label %531

528:                                              ; preds = %522
  %529 = load i32, i32* %6, align 4
  %530 = call i32 @GET_MODE_INNER(i32 %529)
  store i32 %530, i32* %6, align 4
  br label %531

531:                                              ; preds = %528, %522, %518
  %532 = load i32, i32* %6, align 4
  switch i32 %532, label %625 [
    i32 148, label %533
    i32 156, label %533
    i32 144, label %537
    i32 154, label %544
    i32 146, label %544
    i32 153, label %544
    i32 152, label %544
    i32 159, label %544
    i32 161, label %544
    i32 160, label %544
    i32 162, label %559
    i32 142, label %559
    i32 158, label %565
    i32 147, label %566
    i32 155, label %579
    i32 128, label %583
    i32 143, label %590
    i32 149, label %597
    i32 157, label %601
    i32 129, label %608
    i32 145, label %612
    i32 134, label %613
    i32 133, label %613
    i32 140, label %613
    i32 132, label %613
    i32 139, label %613
    i32 138, label %613
    i32 137, label %620
    i32 136, label %620
    i32 135, label %620
    i32 131, label %620
    i32 163, label %624
    i32 130, label %624
  ]

533:                                              ; preds = %531, %531
  %534 = load i32, i32* @X86_64_SSE_CLASS, align 4
  %535 = load i32*, i32** %8, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 0
  store i32 %534, i32* %536, align 4
  store i32 1, i32* %5, align 4
  br label %661

537:                                              ; preds = %531
  %538 = load i32, i32* @X86_64_SSE_CLASS, align 4
  %539 = load i32*, i32** %8, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 0
  store i32 %538, i32* %540, align 4
  %541 = load i32, i32* @X86_64_SSEUP_CLASS, align 4
  %542 = load i32*, i32** %8, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 1
  store i32 %541, i32* %543, align 4
  store i32 2, i32* %5, align 4
  br label %661

544:                                              ; preds = %531, %531, %531, %531, %531, %531, %531
  %545 = load i32, i32* %9, align 4
  %546 = load i32, i32* %6, align 4
  %547 = call i32 @GET_MODE_BITSIZE(i32 %546)
  %548 = add nsw i32 %545, %547
  %549 = icmp sle i32 %548, 32
  br i1 %549, label %550, label %554

550:                                              ; preds = %544
  %551 = load i32, i32* @X86_64_INTEGERSI_CLASS, align 4
  %552 = load i32*, i32** %8, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 0
  store i32 %551, i32* %553, align 4
  br label %558

554:                                              ; preds = %544
  %555 = load i32, i32* @X86_64_INTEGER_CLASS, align 4
  %556 = load i32*, i32** %8, align 8
  %557 = getelementptr inbounds i32, i32* %556, i64 0
  store i32 %555, i32* %557, align 4
  br label %558

558:                                              ; preds = %554, %550
  store i32 1, i32* %5, align 4
  br label %661

559:                                              ; preds = %531, %531
  %560 = load i32, i32* @X86_64_INTEGER_CLASS, align 4
  %561 = load i32*, i32** %8, align 8
  %562 = getelementptr inbounds i32, i32* %561, i64 1
  store i32 %560, i32* %562, align 4
  %563 = load i32*, i32** %8, align 8
  %564 = getelementptr inbounds i32, i32* %563, i64 0
  store i32 %560, i32* %564, align 4
  store i32 2, i32* %5, align 4
  br label %661

565:                                              ; preds = %531
  store i32 0, i32* %5, align 4
  br label %661

566:                                              ; preds = %531
  %567 = load i32, i32* %9, align 4
  %568 = srem i32 %567, 64
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %574, label %570

570:                                              ; preds = %566
  %571 = load i32, i32* @X86_64_SSESF_CLASS, align 4
  %572 = load i32*, i32** %8, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 0
  store i32 %571, i32* %573, align 4
  br label %578

574:                                              ; preds = %566
  %575 = load i32, i32* @X86_64_SSE_CLASS, align 4
  %576 = load i32*, i32** %8, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 0
  store i32 %575, i32* %577, align 4
  br label %578

578:                                              ; preds = %574, %570
  store i32 1, i32* %5, align 4
  br label %661

579:                                              ; preds = %531
  %580 = load i32, i32* @X86_64_SSEDF_CLASS, align 4
  %581 = load i32*, i32** %8, align 8
  %582 = getelementptr inbounds i32, i32* %581, i64 0
  store i32 %580, i32* %582, align 4
  store i32 1, i32* %5, align 4
  br label %661

583:                                              ; preds = %531
  %584 = load i32, i32* @X86_64_X87_CLASS, align 4
  %585 = load i32*, i32** %8, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 0
  store i32 %584, i32* %586, align 4
  %587 = load i32, i32* @X86_64_X87UP_CLASS, align 4
  %588 = load i32*, i32** %8, align 8
  %589 = getelementptr inbounds i32, i32* %588, i64 1
  store i32 %587, i32* %589, align 4
  store i32 2, i32* %5, align 4
  br label %661

590:                                              ; preds = %531
  %591 = load i32, i32* @X86_64_SSE_CLASS, align 4
  %592 = load i32*, i32** %8, align 8
  %593 = getelementptr inbounds i32, i32* %592, i64 0
  store i32 %591, i32* %593, align 4
  %594 = load i32, i32* @X86_64_SSEUP_CLASS, align 4
  %595 = load i32*, i32** %8, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 1
  store i32 %594, i32* %596, align 4
  store i32 2, i32* %5, align 4
  br label %661

597:                                              ; preds = %531
  %598 = load i32, i32* @X86_64_SSE_CLASS, align 4
  %599 = load i32*, i32** %8, align 8
  %600 = getelementptr inbounds i32, i32* %599, i64 0
  store i32 %598, i32* %600, align 4
  store i32 1, i32* %5, align 4
  br label %661

601:                                              ; preds = %531
  %602 = load i32, i32* @X86_64_SSEDF_CLASS, align 4
  %603 = load i32*, i32** %8, align 8
  %604 = getelementptr inbounds i32, i32* %603, i64 0
  store i32 %602, i32* %604, align 4
  %605 = load i32, i32* @X86_64_SSEDF_CLASS, align 4
  %606 = load i32*, i32** %8, align 8
  %607 = getelementptr inbounds i32, i32* %606, i64 1
  store i32 %605, i32* %607, align 4
  store i32 2, i32* %5, align 4
  br label %661

608:                                              ; preds = %531
  %609 = load i32, i32* @X86_64_COMPLEX_X87_CLASS, align 4
  %610 = load i32*, i32** %8, align 8
  %611 = getelementptr inbounds i32, i32* %610, i64 0
  store i32 %609, i32* %611, align 4
  store i32 1, i32* %5, align 4
  br label %661

612:                                              ; preds = %531
  store i32 0, i32* %5, align 4
  br label %661

613:                                              ; preds = %531, %531, %531, %531, %531, %531
  %614 = load i32, i32* @X86_64_SSE_CLASS, align 4
  %615 = load i32*, i32** %8, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 0
  store i32 %614, i32* %616, align 4
  %617 = load i32, i32* @X86_64_SSEUP_CLASS, align 4
  %618 = load i32*, i32** %8, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 1
  store i32 %617, i32* %619, align 4
  store i32 2, i32* %5, align 4
  br label %661

620:                                              ; preds = %531, %531, %531, %531
  %621 = load i32, i32* @X86_64_SSE_CLASS, align 4
  %622 = load i32*, i32** %8, align 8
  %623 = getelementptr inbounds i32, i32* %622, i64 0
  store i32 %621, i32* %623, align 4
  store i32 1, i32* %5, align 4
  br label %661

624:                                              ; preds = %531, %531
  store i32 0, i32* %5, align 4
  br label %661

625:                                              ; preds = %531
  %626 = load i32, i32* %6, align 4
  %627 = call i32 @VECTOR_MODE_P(i32 %626)
  %628 = call i32 @gcc_assert(i32 %627)
  %629 = load i32, i32* %10, align 4
  %630 = icmp sgt i32 %629, 16
  br i1 %630, label %631, label %632

631:                                              ; preds = %625
  store i32 0, i32* %5, align 4
  br label %661

632:                                              ; preds = %625
  %633 = load i32, i32* %6, align 4
  %634 = call i32 @GET_MODE_INNER(i32 %633)
  %635 = call i32 @GET_MODE_CLASS(i32 %634)
  %636 = load i32, i32* @MODE_INT, align 4
  %637 = icmp eq i32 %635, %636
  %638 = zext i1 %637 to i32
  %639 = call i32 @gcc_assert(i32 %638)
  %640 = load i32, i32* %9, align 4
  %641 = load i32, i32* %6, align 4
  %642 = call i32 @GET_MODE_BITSIZE(i32 %641)
  %643 = add nsw i32 %640, %642
  %644 = icmp sle i32 %643, 32
  br i1 %644, label %645, label %649

645:                                              ; preds = %632
  %646 = load i32, i32* @X86_64_INTEGERSI_CLASS, align 4
  %647 = load i32*, i32** %8, align 8
  %648 = getelementptr inbounds i32, i32* %647, i64 0
  store i32 %646, i32* %648, align 4
  br label %653

649:                                              ; preds = %632
  %650 = load i32, i32* @X86_64_INTEGER_CLASS, align 4
  %651 = load i32*, i32** %8, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 0
  store i32 %650, i32* %652, align 4
  br label %653

653:                                              ; preds = %649, %645
  %654 = load i32, i32* @X86_64_INTEGER_CLASS, align 4
  %655 = load i32*, i32** %8, align 8
  %656 = getelementptr inbounds i32, i32* %655, i64 1
  store i32 %654, i32* %656, align 4
  %657 = load i32, i32* %10, align 4
  %658 = icmp sgt i32 %657, 8
  %659 = zext i1 %658 to i32
  %660 = add nsw i32 1, %659
  store i32 %660, i32* %5, align 4
  br label %661

661:                                              ; preds = %653, %631, %624, %620, %613, %612, %608, %601, %597, %590, %583, %579, %578, %565, %559, %558, %537, %533, %516, %485, %63, %53
  %662 = load i32, i32* %5, align 4
  ret i32 %662
}

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i32 @BINFO_BASE_ITERATE(i64, i32, i64) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @BINFO_OFFSET(i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i32 @merge_classes(i32, i32) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @DECL_BIT_FIELD(i64) #1

declare dso_local i32 @int_bit_position(i64) #1

declare dso_local i32 @DECL_SIZE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @BINFO_N_BASE_BINFOS(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @COMPLEX_MODE_P(i32) #1

declare dso_local i32 @VECTOR_MODE_P(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
