; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_mainQSort3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_mainQSort3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAIN_QSORT_STACK_SIZE = common dso_local global i32 0, align 4
@MAIN_QSORT_SMALL_THRESH = common dso_local global i64 0, align 8
@MAIN_QSORT_DEPTH_THRESH = common dso_local global i64 0, align 8
@True = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"mainQSort3(2)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"mainQSort3(8)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"mainQSort3(9)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i32*, i64, i64, i64, i64, i64*)* @mainQSort3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mainQSort3(i64* %0, i64* %1, i32* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64* %7) #0 {
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca [3 x i64], align 16
  %33 = alloca [3 x i64], align 16
  %34 = alloca [3 x i64], align 16
  %35 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64* %7, i64** %16, align 8
  %36 = load i32, i32* @MAIN_QSORT_STACK_SIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %28, align 8
  %39 = alloca i64, i64 %37, align 16
  store i64 %37, i64* %29, align 8
  %40 = load i32, i32* @MAIN_QSORT_STACK_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i64, i64 %41, align 16
  store i64 %41, i64* %30, align 8
  %43 = load i32, i32* @MAIN_QSORT_STACK_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i64, i64 %44, align 16
  store i64 %44, i64* %31, align 8
  store i64 0, i64* %24, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @mpush(i64 %46, i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %327, %243, %88, %8
  %51 = load i64, i64* %24, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %359

53:                                               ; preds = %50
  %54 = load i64, i64* %24, align 8
  %55 = load i32, i32* @MAIN_QSORT_STACK_SIZE, align 4
  %56 = sub nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @AssertH(i32 %59, i32 1001)
  %61 = load i64, i64* %25, align 8
  %62 = load i64, i64* %26, align 8
  %63 = load i64, i64* %27, align 8
  %64 = call i32 @mpop(i64 %61, i64 %62, i64 %63)
  %65 = load i64, i64* %26, align 8
  %66 = load i64, i64* %25, align 8
  %67 = sub nsw i64 %65, %66
  %68 = load i64, i64* @MAIN_QSORT_SMALL_THRESH, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %53
  %71 = load i64, i64* %27, align 8
  %72 = load i64, i64* @MAIN_QSORT_DEPTH_THRESH, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70, %53
  %75 = load i64*, i64** %9, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %25, align 8
  %80 = load i64, i64* %26, align 8
  %81 = load i64, i64* %27, align 8
  %82 = load i64*, i64** %16, align 8
  %83 = call i32 @mainSimpleSort(i64* %75, i64* %76, i32* %77, i64 %78, i64 %79, i64 %80, i64 %81, i64* %82)
  %84 = load i64*, i64** %16, align 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  store i32 1, i32* %35, align 4
  br label %360

88:                                               ; preds = %74
  br label %50

89:                                               ; preds = %70
  %90 = load i64*, i64** %10, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = load i64, i64* %25, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %27, align 8
  %96 = add nsw i64 %94, %95
  %97 = getelementptr inbounds i64, i64* %90, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = load i64*, i64** %9, align 8
  %101 = load i64, i64* %26, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %27, align 8
  %105 = add nsw i64 %103, %104
  %106 = getelementptr inbounds i64, i64* %99, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %10, align 8
  %109 = load i64*, i64** %9, align 8
  %110 = load i64, i64* %25, align 8
  %111 = load i64, i64* %26, align 8
  %112 = add nsw i64 %110, %111
  %113 = ashr i64 %112, 1
  %114 = getelementptr inbounds i64, i64* %109, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %27, align 8
  %117 = add nsw i64 %115, %116
  %118 = getelementptr inbounds i64, i64* %108, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @mmed3(i64 %98, i64 %107, i64 %119)
  store i64 %120, i64* %23, align 8
  %121 = load i64, i64* %25, align 8
  store i64 %121, i64* %19, align 8
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %26, align 8
  store i64 %122, i64* %20, align 8
  store i64 %122, i64* %18, align 8
  br label %123

123:                                              ; preds = %219, %89
  %124 = load i64, i64* @True, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %233

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %167, %149, %126
  %128 = load i64, i64* @True, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %170

130:                                              ; preds = %127
  %131 = load i64, i64* %17, align 8
  %132 = load i64, i64* %18, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %170

135:                                              ; preds = %130
  %136 = load i64*, i64** %10, align 8
  %137 = load i64*, i64** %9, align 8
  %138 = load i64, i64* %17, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %27, align 8
  %142 = add nsw i64 %140, %141
  %143 = getelementptr inbounds i64, i64* %136, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %23, align 8
  %146 = sub nsw i64 %144, %145
  store i64 %146, i64* %21, align 8
  %147 = load i64, i64* %21, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %135
  %150 = load i64*, i64** %9, align 8
  %151 = load i64, i64* %17, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** %9, align 8
  %155 = load i64, i64* %19, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @mswap(i64 %153, i64 %157)
  %159 = load i64, i64* %19, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %19, align 8
  %161 = load i64, i64* %17, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %17, align 8
  br label %127

163:                                              ; preds = %135
  %164 = load i64, i64* %21, align 8
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %170

167:                                              ; preds = %163
  %168 = load i64, i64* %17, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %17, align 8
  br label %127

170:                                              ; preds = %166, %134, %127
  br label %171

171:                                              ; preds = %211, %193, %170
  %172 = load i64, i64* @True, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %214

174:                                              ; preds = %171
  %175 = load i64, i64* %17, align 8
  %176 = load i64, i64* %18, align 8
  %177 = icmp sgt i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  br label %214

179:                                              ; preds = %174
  %180 = load i64*, i64** %10, align 8
  %181 = load i64*, i64** %9, align 8
  %182 = load i64, i64* %18, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %27, align 8
  %186 = add nsw i64 %184, %185
  %187 = getelementptr inbounds i64, i64* %180, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %23, align 8
  %190 = sub nsw i64 %188, %189
  store i64 %190, i64* %21, align 8
  %191 = load i64, i64* %21, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %179
  %194 = load i64*, i64** %9, align 8
  %195 = load i64, i64* %18, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = load i64*, i64** %9, align 8
  %199 = load i64, i64* %20, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @mswap(i64 %197, i64 %201)
  %203 = load i64, i64* %20, align 8
  %204 = add nsw i64 %203, -1
  store i64 %204, i64* %20, align 8
  %205 = load i64, i64* %18, align 8
  %206 = add nsw i64 %205, -1
  store i64 %206, i64* %18, align 8
  br label %171

207:                                              ; preds = %179
  %208 = load i64, i64* %21, align 8
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  br label %214

211:                                              ; preds = %207
  %212 = load i64, i64* %18, align 8
  %213 = add nsw i64 %212, -1
  store i64 %213, i64* %18, align 8
  br label %171

214:                                              ; preds = %210, %178, %171
  %215 = load i64, i64* %17, align 8
  %216 = load i64, i64* %18, align 8
  %217 = icmp sgt i64 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  br label %233

219:                                              ; preds = %214
  %220 = load i64*, i64** %9, align 8
  %221 = load i64, i64* %17, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = load i64*, i64** %9, align 8
  %225 = load i64, i64* %18, align 8
  %226 = getelementptr inbounds i64, i64* %224, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @mswap(i64 %223, i64 %227)
  %229 = load i64, i64* %17, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %17, align 8
  %231 = load i64, i64* %18, align 8
  %232 = add nsw i64 %231, -1
  store i64 %232, i64* %18, align 8
  br label %123

233:                                              ; preds = %218, %123
  %234 = load i64, i64* %18, align 8
  %235 = load i64, i64* %17, align 8
  %236 = sub nsw i64 %235, 1
  %237 = icmp eq i64 %234, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @AssertD(i32 %238, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %240 = load i64, i64* %20, align 8
  %241 = load i64, i64* %19, align 8
  %242 = icmp slt i64 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %233
  %244 = load i64, i64* %25, align 8
  %245 = load i64, i64* %26, align 8
  %246 = load i64, i64* %27, align 8
  %247 = add nsw i64 %246, 1
  %248 = call i32 @mpush(i64 %244, i64 %245, i64 %247)
  br label %50

249:                                              ; preds = %233
  %250 = load i64, i64* %19, align 8
  %251 = load i64, i64* %25, align 8
  %252 = sub nsw i64 %250, %251
  %253 = load i64, i64* %17, align 8
  %254 = load i64, i64* %19, align 8
  %255 = sub nsw i64 %253, %254
  %256 = call i64 @mmin(i64 %252, i64 %255)
  store i64 %256, i64* %21, align 8
  %257 = load i64, i64* %25, align 8
  %258 = load i64, i64* %17, align 8
  %259 = load i64, i64* %21, align 8
  %260 = sub nsw i64 %258, %259
  %261 = load i64, i64* %21, align 8
  %262 = call i32 @mvswap(i64 %257, i64 %260, i64 %261)
  %263 = load i64, i64* %26, align 8
  %264 = load i64, i64* %20, align 8
  %265 = sub nsw i64 %263, %264
  %266 = load i64, i64* %20, align 8
  %267 = load i64, i64* %18, align 8
  %268 = sub nsw i64 %266, %267
  %269 = call i64 @mmin(i64 %265, i64 %268)
  store i64 %269, i64* %22, align 8
  %270 = load i64, i64* %17, align 8
  %271 = load i64, i64* %26, align 8
  %272 = load i64, i64* %22, align 8
  %273 = sub nsw i64 %271, %272
  %274 = add nsw i64 %273, 1
  %275 = load i64, i64* %22, align 8
  %276 = call i32 @mvswap(i64 %270, i64 %274, i64 %275)
  %277 = load i64, i64* %25, align 8
  %278 = load i64, i64* %17, align 8
  %279 = add nsw i64 %277, %278
  %280 = load i64, i64* %19, align 8
  %281 = sub nsw i64 %279, %280
  %282 = sub nsw i64 %281, 1
  store i64 %282, i64* %21, align 8
  %283 = load i64, i64* %26, align 8
  %284 = load i64, i64* %20, align 8
  %285 = load i64, i64* %18, align 8
  %286 = sub nsw i64 %284, %285
  %287 = sub nsw i64 %283, %286
  %288 = add nsw i64 %287, 1
  store i64 %288, i64* %22, align 8
  %289 = load i64, i64* %25, align 8
  %290 = getelementptr inbounds [3 x i64], [3 x i64]* %32, i64 0, i64 0
  store i64 %289, i64* %290, align 16
  %291 = load i64, i64* %21, align 8
  %292 = getelementptr inbounds [3 x i64], [3 x i64]* %33, i64 0, i64 0
  store i64 %291, i64* %292, align 16
  %293 = load i64, i64* %27, align 8
  %294 = getelementptr inbounds [3 x i64], [3 x i64]* %34, i64 0, i64 0
  store i64 %293, i64* %294, align 16
  %295 = load i64, i64* %22, align 8
  %296 = getelementptr inbounds [3 x i64], [3 x i64]* %32, i64 0, i64 1
  store i64 %295, i64* %296, align 8
  %297 = load i64, i64* %26, align 8
  %298 = getelementptr inbounds [3 x i64], [3 x i64]* %33, i64 0, i64 1
  store i64 %297, i64* %298, align 8
  %299 = load i64, i64* %27, align 8
  %300 = getelementptr inbounds [3 x i64], [3 x i64]* %34, i64 0, i64 1
  store i64 %299, i64* %300, align 8
  %301 = load i64, i64* %21, align 8
  %302 = add nsw i64 %301, 1
  %303 = getelementptr inbounds [3 x i64], [3 x i64]* %32, i64 0, i64 2
  store i64 %302, i64* %303, align 16
  %304 = load i64, i64* %22, align 8
  %305 = sub nsw i64 %304, 1
  %306 = getelementptr inbounds [3 x i64], [3 x i64]* %33, i64 0, i64 2
  store i64 %305, i64* %306, align 16
  %307 = load i64, i64* %27, align 8
  %308 = add nsw i64 %307, 1
  %309 = getelementptr inbounds [3 x i64], [3 x i64]* %34, i64 0, i64 2
  store i64 %308, i64* %309, align 16
  %310 = call i64 @mnextsize(i32 0)
  %311 = call i64 @mnextsize(i32 1)
  %312 = icmp slt i64 %310, %311
  br i1 %312, label %313, label %315

313:                                              ; preds = %249
  %314 = call i32 @mnextswap(i32 0, i32 1)
  br label %315

315:                                              ; preds = %313, %249
  %316 = call i64 @mnextsize(i32 1)
  %317 = call i64 @mnextsize(i32 2)
  %318 = icmp slt i64 %316, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %315
  %320 = call i32 @mnextswap(i32 1, i32 2)
  br label %321

321:                                              ; preds = %319, %315
  %322 = call i64 @mnextsize(i32 0)
  %323 = call i64 @mnextsize(i32 1)
  %324 = icmp slt i64 %322, %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %321
  %326 = call i32 @mnextswap(i32 0, i32 1)
  br label %327

327:                                              ; preds = %325, %321
  %328 = call i64 @mnextsize(i32 0)
  %329 = call i64 @mnextsize(i32 1)
  %330 = icmp sge i64 %328, %329
  %331 = zext i1 %330 to i32
  %332 = call i32 @AssertD(i32 %331, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %333 = call i64 @mnextsize(i32 1)
  %334 = call i64 @mnextsize(i32 2)
  %335 = icmp sge i64 %333, %334
  %336 = zext i1 %335 to i32
  %337 = call i32 @AssertD(i32 %336, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %338 = getelementptr inbounds [3 x i64], [3 x i64]* %32, i64 0, i64 0
  %339 = load i64, i64* %338, align 16
  %340 = getelementptr inbounds [3 x i64], [3 x i64]* %33, i64 0, i64 0
  %341 = load i64, i64* %340, align 16
  %342 = getelementptr inbounds [3 x i64], [3 x i64]* %34, i64 0, i64 0
  %343 = load i64, i64* %342, align 16
  %344 = call i32 @mpush(i64 %339, i64 %341, i64 %343)
  %345 = getelementptr inbounds [3 x i64], [3 x i64]* %32, i64 0, i64 1
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds [3 x i64], [3 x i64]* %33, i64 0, i64 1
  %348 = load i64, i64* %347, align 8
  %349 = getelementptr inbounds [3 x i64], [3 x i64]* %34, i64 0, i64 1
  %350 = load i64, i64* %349, align 8
  %351 = call i32 @mpush(i64 %346, i64 %348, i64 %350)
  %352 = getelementptr inbounds [3 x i64], [3 x i64]* %32, i64 0, i64 2
  %353 = load i64, i64* %352, align 16
  %354 = getelementptr inbounds [3 x i64], [3 x i64]* %33, i64 0, i64 2
  %355 = load i64, i64* %354, align 16
  %356 = getelementptr inbounds [3 x i64], [3 x i64]* %34, i64 0, i64 2
  %357 = load i64, i64* %356, align 16
  %358 = call i32 @mpush(i64 %353, i64 %355, i64 %357)
  br label %50

359:                                              ; preds = %50
  store i32 0, i32* %35, align 4
  br label %360

360:                                              ; preds = %359, %87
  %361 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %361)
  %362 = load i32, i32* %35, align 4
  switch i32 %362, label %364 [
    i32 0, label %363
    i32 1, label %363
  ]

363:                                              ; preds = %360, %360
  ret void

364:                                              ; preds = %360
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mpush(i64, i64, i64) #2

declare dso_local i32 @AssertH(i32, i32) #2

declare dso_local i32 @mpop(i64, i64, i64) #2

declare dso_local i32 @mainSimpleSort(i64*, i64*, i32*, i64, i64, i64, i64, i64*) #2

declare dso_local i64 @mmed3(i64, i64, i64) #2

declare dso_local i32 @mswap(i64, i64) #2

declare dso_local i32 @AssertD(i32, i8*) #2

declare dso_local i64 @mmin(i64, i64) #2

declare dso_local i32 @mvswap(i64, i64, i64) #2

declare dso_local i64 @mnextsize(i32) #2

declare dso_local i32 @mnextswap(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
