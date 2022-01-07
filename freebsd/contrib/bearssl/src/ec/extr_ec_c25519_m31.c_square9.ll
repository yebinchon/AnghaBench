; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_m31.c_square9.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_m31.c_square9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @square9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @square9(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [17 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MUL31(i32 %11, i32 %14)
  %16 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MUL31(i32 %19, i32 %22)
  %24 = shl i32 %23, 1
  %25 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MUL31(i32 %28, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MUL31(i32 %35, i32 %38)
  %40 = shl i32 %39, 1
  %41 = add nsw i32 %32, %40
  %42 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 2
  store i32 %41, i32* %42, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @MUL31(i32 %45, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @MUL31(i32 %52, i32 %55)
  %57 = add nsw i32 %49, %56
  %58 = shl i32 %57, 1
  %59 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 3
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MUL31(i32 %62, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @MUL31(i32 %69, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @MUL31(i32 %76, i32 %79)
  %81 = add nsw i32 %73, %80
  %82 = shl i32 %81, 1
  %83 = add nsw i32 %66, %82
  %84 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 4
  store i32 %83, i32* %84, align 16
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @MUL31(i32 %87, i32 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @MUL31(i32 %94, i32 %97)
  %99 = add nsw i32 %91, %98
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @MUL31(i32 %102, i32 %105)
  %107 = add nsw i32 %99, %106
  %108 = shl i32 %107, 1
  %109 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 5
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @MUL31(i32 %112, i32 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 6
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @MUL31(i32 %119, i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 5
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @MUL31(i32 %126, i32 %129)
  %131 = add nsw i32 %123, %130
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %4, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @MUL31(i32 %134, i32 %137)
  %139 = add nsw i32 %131, %138
  %140 = shl i32 %139, 1
  %141 = add nsw i32 %116, %140
  %142 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 6
  store i32 %141, i32* %142, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %4, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 7
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @MUL31(i32 %145, i32 %148)
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 6
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @MUL31(i32 %152, i32 %155)
  %157 = add nsw i32 %149, %156
  %158 = load i32*, i32** %4, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %4, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @MUL31(i32 %160, i32 %163)
  %165 = add nsw i32 %157, %164
  %166 = load i32*, i32** %4, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %4, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @MUL31(i32 %168, i32 %171)
  %173 = add nsw i32 %165, %172
  %174 = shl i32 %173, 1
  %175 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 7
  store i32 %174, i32* %175, align 4
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 4
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %4, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 4
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @MUL31(i32 %178, i32 %181)
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %4, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 8
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @MUL31(i32 %185, i32 %188)
  %190 = load i32*, i32** %4, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %4, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 7
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @MUL31(i32 %192, i32 %195)
  %197 = add nsw i32 %189, %196
  %198 = load i32*, i32** %4, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %4, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 6
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @MUL31(i32 %200, i32 %203)
  %205 = add nsw i32 %197, %204
  %206 = load i32*, i32** %4, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 3
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %4, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 5
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @MUL31(i32 %208, i32 %211)
  %213 = add nsw i32 %205, %212
  %214 = shl i32 %213, 1
  %215 = add nsw i32 %182, %214
  %216 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 8
  store i32 %215, i32* %216, align 16
  %217 = load i32*, i32** %4, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %4, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 8
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @MUL31(i32 %219, i32 %222)
  %224 = load i32*, i32** %4, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %4, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 7
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @MUL31(i32 %226, i32 %229)
  %231 = add nsw i32 %223, %230
  %232 = load i32*, i32** %4, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 3
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %4, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 6
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @MUL31(i32 %234, i32 %237)
  %239 = add nsw i32 %231, %238
  %240 = load i32*, i32** %4, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 4
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %4, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 5
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @MUL31(i32 %242, i32 %245)
  %247 = add nsw i32 %239, %246
  %248 = shl i32 %247, 1
  %249 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 9
  store i32 %248, i32* %249, align 4
  %250 = load i32*, i32** %4, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 5
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %4, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 5
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @MUL31(i32 %252, i32 %255)
  %257 = load i32*, i32** %4, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** %4, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 8
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @MUL31(i32 %259, i32 %262)
  %264 = load i32*, i32** %4, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** %4, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 7
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @MUL31(i32 %266, i32 %269)
  %271 = add nsw i32 %263, %270
  %272 = load i32*, i32** %4, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 4
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %4, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 6
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @MUL31(i32 %274, i32 %277)
  %279 = add nsw i32 %271, %278
  %280 = shl i32 %279, 1
  %281 = add nsw i32 %256, %280
  %282 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 10
  store i32 %281, i32* %282, align 8
  %283 = load i32*, i32** %4, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 3
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** %4, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 8
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @MUL31(i32 %285, i32 %288)
  %290 = load i32*, i32** %4, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 4
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** %4, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 7
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @MUL31(i32 %292, i32 %295)
  %297 = add nsw i32 %289, %296
  %298 = load i32*, i32** %4, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 5
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %4, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 6
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @MUL31(i32 %300, i32 %303)
  %305 = add nsw i32 %297, %304
  %306 = shl i32 %305, 1
  %307 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 11
  store i32 %306, i32* %307, align 4
  %308 = load i32*, i32** %4, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 6
  %310 = load i32, i32* %309, align 4
  %311 = load i32*, i32** %4, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 6
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @MUL31(i32 %310, i32 %313)
  %315 = load i32*, i32** %4, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 4
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** %4, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 8
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @MUL31(i32 %317, i32 %320)
  %322 = load i32*, i32** %4, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 5
  %324 = load i32, i32* %323, align 4
  %325 = load i32*, i32** %4, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 7
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @MUL31(i32 %324, i32 %327)
  %329 = add nsw i32 %321, %328
  %330 = shl i32 %329, 1
  %331 = add nsw i32 %314, %330
  %332 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 12
  store i32 %331, i32* %332, align 16
  %333 = load i32*, i32** %4, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 5
  %335 = load i32, i32* %334, align 4
  %336 = load i32*, i32** %4, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 8
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @MUL31(i32 %335, i32 %338)
  %340 = load i32*, i32** %4, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 6
  %342 = load i32, i32* %341, align 4
  %343 = load i32*, i32** %4, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 7
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @MUL31(i32 %342, i32 %345)
  %347 = add nsw i32 %339, %346
  %348 = shl i32 %347, 1
  %349 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 13
  store i32 %348, i32* %349, align 4
  %350 = load i32*, i32** %4, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 7
  %352 = load i32, i32* %351, align 4
  %353 = load i32*, i32** %4, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 7
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @MUL31(i32 %352, i32 %355)
  %357 = load i32*, i32** %4, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 6
  %359 = load i32, i32* %358, align 4
  %360 = load i32*, i32** %4, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 8
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @MUL31(i32 %359, i32 %362)
  %364 = shl i32 %363, 1
  %365 = add nsw i32 %356, %364
  %366 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 14
  store i32 %365, i32* %366, align 8
  %367 = load i32*, i32** %4, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 7
  %369 = load i32, i32* %368, align 4
  %370 = load i32*, i32** %4, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 8
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @MUL31(i32 %369, i32 %372)
  %374 = shl i32 %373, 1
  %375 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 15
  store i32 %374, i32* %375, align 4
  %376 = load i32*, i32** %4, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 8
  %378 = load i32, i32* %377, align 4
  %379 = load i32*, i32** %4, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 8
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @MUL31(i32 %378, i32 %381)
  %383 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 16
  store i32 %382, i32* %383, align 16
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %384

384:                                              ; preds = %402, %2
  %385 = load i32, i32* %7, align 4
  %386 = icmp slt i32 %385, 17
  br i1 %386, label %387, label %405

387:                                              ; preds = %384
  %388 = load i32, i32* %7, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %6, align 4
  %393 = add nsw i32 %391, %392
  store i32 %393, i32* %8, align 4
  %394 = load i32, i32* %8, align 4
  %395 = and i32 %394, 1073741823
  %396 = load i32*, i32** %3, align 8
  %397 = load i32, i32* %7, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  store i32 %395, i32* %399, align 4
  %400 = load i32, i32* %8, align 4
  %401 = ashr i32 %400, 30
  store i32 %401, i32* %6, align 4
  br label %402

402:                                              ; preds = %387
  %403 = load i32, i32* %7, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %7, align 4
  br label %384

405:                                              ; preds = %384
  %406 = load i32, i32* %6, align 4
  %407 = load i32*, i32** %3, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 17
  store i32 %406, i32* %408, align 4
  ret void
}

declare dso_local i32 @MUL31(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
