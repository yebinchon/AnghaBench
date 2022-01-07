; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_sha1.c_br_sha1_round.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_sha1.c_br_sha1_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K1 = common dso_local global i32 0, align 4
@K2 = common dso_local global i32 0, align 4
@K3 = common dso_local global i32 0, align 4
@K4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_sha1_round(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [80 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 0
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @br_range_dec32be(i32* %28, i32 16, i8* %29)
  store i32 16, i32* %11, align 4
  br label %31

31:                                               ; preds = %63, %2
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 80
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %39, %44
  %46 = load i32, i32* %11, align 4
  %47 = sub nsw i32 %46, 14
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %45, %50
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 16
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %51, %56
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @ROTL(i32 %58, i32 1)
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %61
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %34
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %31

66:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %166, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 20
  br i1 %69, label %70, label %169

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @ROTL(i32 %71, i32 5)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @F(i32 %73, i32 %74, i32 %75)
  %77 = add nsw i32 %72, %76
  %78 = load i32, i32* @K1, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 0
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %79, %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @ROTL(i32 %88, i32 30)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @ROTL(i32 %90, i32 5)
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @F(i32 %92, i32 %93, i32 %94)
  %96 = add nsw i32 %91, %95
  %97 = load i32, i32* @K1, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %98, %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @ROTL(i32 %107, i32 30)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @ROTL(i32 %109, i32 5)
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @F(i32 %111, i32 %112, i32 %113)
  %115 = add nsw i32 %110, %114
  %116 = load i32, i32* @K1, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 2
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %117, %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @ROTL(i32 %126, i32 30)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @ROTL(i32 %128, i32 5)
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @F(i32 %130, i32 %131, i32 %132)
  %134 = add nsw i32 %129, %133
  %135 = load i32, i32* @K1, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %136, %141
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @ROTL(i32 %145, i32 30)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @ROTL(i32 %147, i32 5)
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @F(i32 %149, i32 %150, i32 %151)
  %153 = add nsw i32 %148, %152
  %154 = load i32, i32* @K1, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %155, %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @ROTL(i32 %164, i32 30)
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %70
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 5
  store i32 %168, i32* %11, align 4
  br label %67

169:                                              ; preds = %67
  store i32 20, i32* %11, align 4
  br label %170

170:                                              ; preds = %269, %169
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %171, 40
  br i1 %172, label %173, label %272

173:                                              ; preds = %170
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @ROTL(i32 %174, i32 5)
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @G(i32 %176, i32 %177, i32 %178)
  %180 = add nsw i32 %175, %179
  %181 = load i32, i32* @K2, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 0
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %182, %187
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @ROTL(i32 %191, i32 30)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i32 @ROTL(i32 %193, i32 5)
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @G(i32 %195, i32 %196, i32 %197)
  %199 = add nsw i32 %194, %198
  %200 = load i32, i32* @K2, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %201, %206
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @ROTL(i32 %210, i32 30)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @ROTL(i32 %212, i32 5)
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @G(i32 %214, i32 %215, i32 %216)
  %218 = add nsw i32 %213, %217
  %219 = load i32, i32* @K2, align 4
  %220 = add nsw i32 %218, %219
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %220, %225
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @ROTL(i32 %229, i32 30)
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* %8, align 4
  %232 = call i32 @ROTL(i32 %231, i32 5)
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* %6, align 4
  %236 = call i32 @G(i32 %233, i32 %234, i32 %235)
  %237 = add nsw i32 %232, %236
  %238 = load i32, i32* @K2, align 4
  %239 = add nsw i32 %237, %238
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 3
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %239, %244
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %7, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @ROTL(i32 %248, i32 30)
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @ROTL(i32 %250, i32 5)
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %10, align 4
  %255 = call i32 @G(i32 %252, i32 %253, i32 %254)
  %256 = add nsw i32 %251, %255
  %257 = load i32, i32* @K2, align 4
  %258 = add nsw i32 %256, %257
  %259 = load i32, i32* %11, align 4
  %260 = add nsw i32 %259, 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %258, %263
  %265 = load i32, i32* %6, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %6, align 4
  %267 = load i32, i32* %8, align 4
  %268 = call i32 @ROTL(i32 %267, i32 30)
  store i32 %268, i32* %8, align 4
  br label %269

269:                                              ; preds = %173
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, 5
  store i32 %271, i32* %11, align 4
  br label %170

272:                                              ; preds = %170
  store i32 40, i32* %11, align 4
  br label %273

273:                                              ; preds = %372, %272
  %274 = load i32, i32* %11, align 4
  %275 = icmp slt i32 %274, 60
  br i1 %275, label %276, label %375

276:                                              ; preds = %273
  %277 = load i32, i32* %6, align 4
  %278 = call i32 @ROTL(i32 %277, i32 5)
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* %9, align 4
  %282 = call i32 @H(i32 %279, i32 %280, i32 %281)
  %283 = add nsw i32 %278, %282
  %284 = load i32, i32* @K3, align 4
  %285 = add nsw i32 %283, %284
  %286 = load i32, i32* %11, align 4
  %287 = add nsw i32 %286, 0
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %285, %290
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %10, align 4
  %294 = load i32, i32* %7, align 4
  %295 = call i32 @ROTL(i32 %294, i32 30)
  store i32 %295, i32* %7, align 4
  %296 = load i32, i32* %10, align 4
  %297 = call i32 @ROTL(i32 %296, i32 5)
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* %7, align 4
  %300 = load i32, i32* %8, align 4
  %301 = call i32 @H(i32 %298, i32 %299, i32 %300)
  %302 = add nsw i32 %297, %301
  %303 = load i32, i32* @K3, align 4
  %304 = add nsw i32 %302, %303
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %304, %309
  %311 = load i32, i32* %9, align 4
  %312 = add nsw i32 %311, %310
  store i32 %312, i32* %9, align 4
  %313 = load i32, i32* %6, align 4
  %314 = call i32 @ROTL(i32 %313, i32 30)
  store i32 %314, i32* %6, align 4
  %315 = load i32, i32* %9, align 4
  %316 = call i32 @ROTL(i32 %315, i32 5)
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* %7, align 4
  %320 = call i32 @H(i32 %317, i32 %318, i32 %319)
  %321 = add nsw i32 %316, %320
  %322 = load i32, i32* @K3, align 4
  %323 = add nsw i32 %321, %322
  %324 = load i32, i32* %11, align 4
  %325 = add nsw i32 %324, 2
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %323, %328
  %330 = load i32, i32* %8, align 4
  %331 = add nsw i32 %330, %329
  store i32 %331, i32* %8, align 4
  %332 = load i32, i32* %10, align 4
  %333 = call i32 @ROTL(i32 %332, i32 30)
  store i32 %333, i32* %10, align 4
  %334 = load i32, i32* %8, align 4
  %335 = call i32 @ROTL(i32 %334, i32 5)
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* %6, align 4
  %339 = call i32 @H(i32 %336, i32 %337, i32 %338)
  %340 = add nsw i32 %335, %339
  %341 = load i32, i32* @K3, align 4
  %342 = add nsw i32 %340, %341
  %343 = load i32, i32* %11, align 4
  %344 = add nsw i32 %343, 3
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %342, %347
  %349 = load i32, i32* %7, align 4
  %350 = add nsw i32 %349, %348
  store i32 %350, i32* %7, align 4
  %351 = load i32, i32* %9, align 4
  %352 = call i32 @ROTL(i32 %351, i32 30)
  store i32 %352, i32* %9, align 4
  %353 = load i32, i32* %7, align 4
  %354 = call i32 @ROTL(i32 %353, i32 5)
  %355 = load i32, i32* %8, align 4
  %356 = load i32, i32* %9, align 4
  %357 = load i32, i32* %10, align 4
  %358 = call i32 @H(i32 %355, i32 %356, i32 %357)
  %359 = add nsw i32 %354, %358
  %360 = load i32, i32* @K3, align 4
  %361 = add nsw i32 %359, %360
  %362 = load i32, i32* %11, align 4
  %363 = add nsw i32 %362, 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = add nsw i32 %361, %366
  %368 = load i32, i32* %6, align 4
  %369 = add nsw i32 %368, %367
  store i32 %369, i32* %6, align 4
  %370 = load i32, i32* %8, align 4
  %371 = call i32 @ROTL(i32 %370, i32 30)
  store i32 %371, i32* %8, align 4
  br label %372

372:                                              ; preds = %276
  %373 = load i32, i32* %11, align 4
  %374 = add nsw i32 %373, 5
  store i32 %374, i32* %11, align 4
  br label %273

375:                                              ; preds = %273
  store i32 60, i32* %11, align 4
  br label %376

376:                                              ; preds = %475, %375
  %377 = load i32, i32* %11, align 4
  %378 = icmp slt i32 %377, 80
  br i1 %378, label %379, label %478

379:                                              ; preds = %376
  %380 = load i32, i32* %6, align 4
  %381 = call i32 @ROTL(i32 %380, i32 5)
  %382 = load i32, i32* %7, align 4
  %383 = load i32, i32* %8, align 4
  %384 = load i32, i32* %9, align 4
  %385 = call i32 @I(i32 %382, i32 %383, i32 %384)
  %386 = add nsw i32 %381, %385
  %387 = load i32, i32* @K4, align 4
  %388 = add nsw i32 %386, %387
  %389 = load i32, i32* %11, align 4
  %390 = add nsw i32 %389, 0
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = add nsw i32 %388, %393
  %395 = load i32, i32* %10, align 4
  %396 = add nsw i32 %395, %394
  store i32 %396, i32* %10, align 4
  %397 = load i32, i32* %7, align 4
  %398 = call i32 @ROTL(i32 %397, i32 30)
  store i32 %398, i32* %7, align 4
  %399 = load i32, i32* %10, align 4
  %400 = call i32 @ROTL(i32 %399, i32 5)
  %401 = load i32, i32* %6, align 4
  %402 = load i32, i32* %7, align 4
  %403 = load i32, i32* %8, align 4
  %404 = call i32 @I(i32 %401, i32 %402, i32 %403)
  %405 = add nsw i32 %400, %404
  %406 = load i32, i32* @K4, align 4
  %407 = add nsw i32 %405, %406
  %408 = load i32, i32* %11, align 4
  %409 = add nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = add nsw i32 %407, %412
  %414 = load i32, i32* %9, align 4
  %415 = add nsw i32 %414, %413
  store i32 %415, i32* %9, align 4
  %416 = load i32, i32* %6, align 4
  %417 = call i32 @ROTL(i32 %416, i32 30)
  store i32 %417, i32* %6, align 4
  %418 = load i32, i32* %9, align 4
  %419 = call i32 @ROTL(i32 %418, i32 5)
  %420 = load i32, i32* %10, align 4
  %421 = load i32, i32* %6, align 4
  %422 = load i32, i32* %7, align 4
  %423 = call i32 @I(i32 %420, i32 %421, i32 %422)
  %424 = add nsw i32 %419, %423
  %425 = load i32, i32* @K4, align 4
  %426 = add nsw i32 %424, %425
  %427 = load i32, i32* %11, align 4
  %428 = add nsw i32 %427, 2
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = add nsw i32 %426, %431
  %433 = load i32, i32* %8, align 4
  %434 = add nsw i32 %433, %432
  store i32 %434, i32* %8, align 4
  %435 = load i32, i32* %10, align 4
  %436 = call i32 @ROTL(i32 %435, i32 30)
  store i32 %436, i32* %10, align 4
  %437 = load i32, i32* %8, align 4
  %438 = call i32 @ROTL(i32 %437, i32 5)
  %439 = load i32, i32* %9, align 4
  %440 = load i32, i32* %10, align 4
  %441 = load i32, i32* %6, align 4
  %442 = call i32 @I(i32 %439, i32 %440, i32 %441)
  %443 = add nsw i32 %438, %442
  %444 = load i32, i32* @K4, align 4
  %445 = add nsw i32 %443, %444
  %446 = load i32, i32* %11, align 4
  %447 = add nsw i32 %446, 3
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = add nsw i32 %445, %450
  %452 = load i32, i32* %7, align 4
  %453 = add nsw i32 %452, %451
  store i32 %453, i32* %7, align 4
  %454 = load i32, i32* %9, align 4
  %455 = call i32 @ROTL(i32 %454, i32 30)
  store i32 %455, i32* %9, align 4
  %456 = load i32, i32* %7, align 4
  %457 = call i32 @ROTL(i32 %456, i32 5)
  %458 = load i32, i32* %8, align 4
  %459 = load i32, i32* %9, align 4
  %460 = load i32, i32* %10, align 4
  %461 = call i32 @I(i32 %458, i32 %459, i32 %460)
  %462 = add nsw i32 %457, %461
  %463 = load i32, i32* @K4, align 4
  %464 = add nsw i32 %462, %463
  %465 = load i32, i32* %11, align 4
  %466 = add nsw i32 %465, 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [80 x i32], [80 x i32]* %5, i64 0, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = add nsw i32 %464, %469
  %471 = load i32, i32* %6, align 4
  %472 = add nsw i32 %471, %470
  store i32 %472, i32* %6, align 4
  %473 = load i32, i32* %8, align 4
  %474 = call i32 @ROTL(i32 %473, i32 30)
  store i32 %474, i32* %8, align 4
  br label %475

475:                                              ; preds = %379
  %476 = load i32, i32* %11, align 4
  %477 = add nsw i32 %476, 5
  store i32 %477, i32* %11, align 4
  br label %376

478:                                              ; preds = %376
  %479 = load i32, i32* %6, align 4
  %480 = load i32*, i32** %4, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 0
  %482 = load i32, i32* %481, align 4
  %483 = add nsw i32 %482, %479
  store i32 %483, i32* %481, align 4
  %484 = load i32, i32* %7, align 4
  %485 = load i32*, i32** %4, align 8
  %486 = getelementptr inbounds i32, i32* %485, i64 1
  %487 = load i32, i32* %486, align 4
  %488 = add nsw i32 %487, %484
  store i32 %488, i32* %486, align 4
  %489 = load i32, i32* %8, align 4
  %490 = load i32*, i32** %4, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 2
  %492 = load i32, i32* %491, align 4
  %493 = add nsw i32 %492, %489
  store i32 %493, i32* %491, align 4
  %494 = load i32, i32* %9, align 4
  %495 = load i32*, i32** %4, align 8
  %496 = getelementptr inbounds i32, i32* %495, i64 3
  %497 = load i32, i32* %496, align 4
  %498 = add nsw i32 %497, %494
  store i32 %498, i32* %496, align 4
  %499 = load i32, i32* %10, align 4
  %500 = load i32*, i32** %4, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 4
  %502 = load i32, i32* %501, align 4
  %503 = add nsw i32 %502, %499
  store i32 %503, i32* %501, align 4
  ret void
}

declare dso_local i32 @br_range_dec32be(i32*, i32, i8*) #1

declare dso_local i32 @ROTL(i32, i32) #1

declare dso_local i32 @F(i32, i32, i32) #1

declare dso_local i32 @G(i32, i32, i32) #1

declare dso_local i32 @H(i32, i32, i32) #1

declare dso_local i32 @I(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
