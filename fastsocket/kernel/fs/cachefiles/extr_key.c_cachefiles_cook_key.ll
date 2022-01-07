; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_key.c_cachefiles_cook_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_key.c_cachefiles_cook_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@cachefiles_filecharmap = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"max: %d\00", align 1
@cachefiles_gfp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"@%02x%c+\00", align 1
@cachefiles_charmap = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"acc: %06x\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" = %p %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cachefiles_cook_key(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @_enter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 514
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i1 [ true, %3 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %32, %36
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %8, align 1
  store i32 1, i32* %17, align 4
  store i32 2, i32* %12, align 4
  br label %39

39:                                               ; preds = %62, %25
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %9, align 1
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* %8, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %8, align 1
  %55 = load i32*, i32** @cachefiles_filecharmap, align 8
  %56 = load i8, i8* %9, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %17, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %39

65:                                               ; preds = %39
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 2
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 5
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 6
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %91

79:                                               ; preds = %65
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 2
  %82 = sdiv i32 %81, 3
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 %83, 4
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 5
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 6
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %79, %68
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @cachefiles_gfp, align 4
  %98 = call i8* @kmalloc(i32 %96, i32 %97)
  store i8* %98, i8** %11, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %91
  store i8* null, i8** %4, align 8
  br label %309

102:                                              ; preds = %91
  store i32 0, i32* %13, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = load i8, i8* %8, align 1
  %105 = zext i8 %104 to i32
  %106 = call i32 @sprintf(i8* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 0)
  store i32 5, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %184

111:                                              ; preds = %102
  %112 = load i8*, i8** %5, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %10, align 4
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  store i8* %116, i8** %5, align 8
  %117 = load i8*, i8** @cachefiles_charmap, align 8
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, 63
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 %122, i8* %127, align 1
  %128 = load i32, i32* %10, align 4
  %129 = lshr i32 %128, 6
  store i32 %129, i32* %10, align 4
  %130 = load i8*, i8** @cachefiles_charmap, align 8
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, 63
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = load i8*, i8** %11, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 %135, i8* %139, align 1
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 2
  store i32 %141, i32* %13, align 4
  store i32 250, i32* %15, align 4
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %175, %111
  %144 = load i32, i32* %12, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %178

146:                                              ; preds = %143
  %147 = load i32, i32* %15, align 4
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %146
  %150 = load i8*, i8** %11, align 8
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %16, align 4
  %156 = load i8*, i8** %11, align 8
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  store i8 43, i8* %160, align 1
  store i32 252, i32* %15, align 4
  br label %161

161:                                              ; preds = %149, %146
  %162 = load i8*, i8** %5, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %5, align 8
  %164 = load i8, i8* %162, align 1
  %165 = load i8*, i8** %11, align 8
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 %164, i8* %169, align 1
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp slt i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @ASSERT(i32 %173)
  br label %175

175:                                              ; preds = %161
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %12, align 4
  br label %143

178:                                              ; preds = %143
  %179 = load i32, i32* %7, align 4
  switch i32 %179, label %182 [
    i32 128, label %180
    i32 129, label %181
  ]

180:                                              ; preds = %178
  store i32 73, i32* %7, align 4
  br label %183

181:                                              ; preds = %178
  store i32 68, i32* %7, align 4
  br label %183

182:                                              ; preds = %178
  store i32 83, i32* %7, align 4
  br label %183

183:                                              ; preds = %182, %181, %180
  br label %289

184:                                              ; preds = %102
  store i32 252, i32* %15, align 4
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %280, %184
  %187 = load i32, i32* %12, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %283

189:                                              ; preds = %186
  %190 = load i32, i32* %15, align 4
  %191 = icmp sle i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %189
  %193 = load i8*, i8** %11, align 8
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  store i8 0, i8* %197, align 1
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %16, align 4
  %199 = load i8*, i8** %11, align 8
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %13, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  store i8 43, i8* %203, align 1
  store i32 252, i32* %15, align 4
  br label %204

204:                                              ; preds = %192, %189
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %5, align 8
  %207 = load i8, i8* %205, align 1
  %208 = zext i8 %207 to i32
  store i32 %208, i32* %10, align 4
  %209 = load i8*, i8** %5, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %5, align 8
  %211 = load i8, i8* %209, align 1
  %212 = zext i8 %211 to i32
  %213 = shl i32 %212, 8
  %214 = load i32, i32* %10, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %10, align 4
  %216 = load i8*, i8** %5, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %5, align 8
  %218 = load i8, i8* %216, align 1
  %219 = zext i8 %218 to i32
  %220 = shl i32 %219, 16
  %221 = load i32, i32* %10, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %223)
  %225 = load i8*, i8** @cachefiles_charmap, align 8
  %226 = load i32, i32* %10, align 4
  %227 = and i32 %226, 63
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = load i8*, i8** %11, align 8
  %232 = load i32, i32* %13, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %13, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %231, i64 %234
  store i8 %230, i8* %235, align 1
  %236 = load i32, i32* %10, align 4
  %237 = lshr i32 %236, 6
  store i32 %237, i32* %10, align 4
  %238 = load i8*, i8** @cachefiles_charmap, align 8
  %239 = load i32, i32* %10, align 4
  %240 = and i32 %239, 63
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = load i8*, i8** %11, align 8
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %13, align 4
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  store i8 %243, i8* %248, align 1
  %249 = load i32, i32* %10, align 4
  %250 = lshr i32 %249, 6
  store i32 %250, i32* %10, align 4
  %251 = load i8*, i8** @cachefiles_charmap, align 8
  %252 = load i32, i32* %10, align 4
  %253 = and i32 %252, 63
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %251, i64 %254
  %256 = load i8, i8* %255, align 1
  %257 = load i8*, i8** %11, align 8
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %13, align 4
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %257, i64 %260
  store i8 %256, i8* %261, align 1
  %262 = load i32, i32* %10, align 4
  %263 = lshr i32 %262, 6
  store i32 %263, i32* %10, align 4
  %264 = load i8*, i8** @cachefiles_charmap, align 8
  %265 = load i32, i32* %10, align 4
  %266 = and i32 %265, 63
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %264, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = load i8*, i8** %11, align 8
  %271 = load i32, i32* %13, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %13, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i8, i8* %270, i64 %273
  store i8 %269, i8* %274, align 1
  %275 = load i32, i32* %13, align 4
  %276 = load i32, i32* %14, align 4
  %277 = icmp slt i32 %275, %276
  %278 = zext i1 %277 to i32
  %279 = call i32 @ASSERT(i32 %278)
  br label %280

280:                                              ; preds = %204
  %281 = load i32, i32* %12, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %12, align 4
  br label %186

283:                                              ; preds = %186
  %284 = load i32, i32* %7, align 4
  switch i32 %284, label %287 [
    i32 128, label %285
    i32 129, label %286
  ]

285:                                              ; preds = %283
  store i32 74, i32* %7, align 4
  br label %288

286:                                              ; preds = %283
  store i32 69, i32* %7, align 4
  br label %288

287:                                              ; preds = %283
  store i32 84, i32* %7, align 4
  br label %288

288:                                              ; preds = %287, %286, %285
  br label %289

289:                                              ; preds = %288, %183
  %290 = load i32, i32* %7, align 4
  %291 = trunc i32 %290 to i8
  %292 = load i8*, i8** %11, align 8
  %293 = load i32, i32* %16, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  store i8 %291, i8* %295, align 1
  %296 = load i8*, i8** %11, align 8
  %297 = load i32, i32* %13, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %13, align 4
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i8, i8* %296, i64 %299
  store i8 0, i8* %300, align 1
  %301 = load i8*, i8** %11, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  store i8 0, i8* %304, align 1
  %305 = load i8*, i8** %11, align 8
  %306 = load i32, i32* %13, align 4
  %307 = call i32 @_leave(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %305, i32 %306)
  %308 = load i8*, i8** %11, align 8
  store i8* %308, i8** %4, align 8
  br label %309

309:                                              ; preds = %289, %101
  %310 = load i8*, i8** %4, align 8
  ret i8* %310
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @_leave(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
