; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_ct.c_Fconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_ct.c_Fconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @Fconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Fconf(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 286331153
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %3, align 4
  %46 = ashr i32 %45, 1
  %47 = and i32 %46, 286331153
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %3, align 4
  %49 = ashr i32 %48, 2
  %50 = and i32 %49, 286331153
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %3, align 4
  %52 = ashr i32 %51, 3
  %53 = and i32 %52, 286331153
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 %54, 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %58, 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %62, 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 %66, 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 %70, 4
  %72 = load i32, i32* %9, align 4
  %73 = ashr i32 %72, 28
  %74 = or i32 %71, %73
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = ashr i32 %75, 4
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 %77, 28
  %79 = or i32 %76, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = xor i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = xor i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = xor i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = xor i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = xor i32 %103, %102
  store i32 %104, i32* %9, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 5
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = xor i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, -327498084
  %112 = xor i32 -274256819, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, 1343207457
  %115 = xor i32 -1364529665, %114
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %5, align 4
  %117 = and i32 %116, 1089447945
  %118 = xor i32 926508645, %117
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, -1511257304
  %121 = xor i32 1758967859, %120
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, 623704096
  %124 = xor i32 -909683269, %123
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, 1075861505
  %127 = xor i32 1945908742, %126
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %5, align 4
  %129 = and i32 %128, -501155543
  %130 = xor i32 -1566529256, %129
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %5, align 4
  %132 = and i32 %131, 1151597025
  %133 = xor i32 -2111652464, %132
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, 2035224650
  %136 = xor i32 -692671369, %135
  store i32 %136, i32* %20, align 4
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, 40841739
  %139 = xor i32 812199948, %138
  store i32 %139, i32* %21, align 4
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, 1983950874
  %142 = xor i32 1826674124, %141
  store i32 %142, i32* %22, align 4
  %143 = load i32, i32* %5, align 4
  %144 = and i32 %143, 596579698
  %145 = xor i32 1504289325, %144
  store i32 %145, i32* %23, align 4
  %146 = load i32, i32* %5, align 4
  %147 = and i32 %146, 2053357699
  %148 = xor i32 -1402139692, %147
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* %5, align 4
  %150 = and i32 %149, 298622976
  %151 = xor i32 566768128, %150
  store i32 %151, i32* %25, align 4
  %152 = load i32, i32* %5, align 4
  %153 = and i32 %152, 539978154
  %154 = xor i32 -1595530872, %153
  store i32 %154, i32* %26, align 4
  %155 = load i32, i32* %5, align 4
  %156 = and i32 %155, 1370700777
  %157 = xor i32 -1350736550, %156
  store i32 %157, i32* %28, align 4
  %158 = load i32, i32* %5, align 4
  %159 = and i32 %158, 990898350
  %160 = xor i32 -266958173, %159
  store i32 %160, i32* %29, align 4
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, -1866495978
  %163 = xor i32 -1867894586, %162
  store i32 %163, i32* %30, align 4
  %164 = load i32, i32* %5, align 4
  %165 = and i32 %164, 165891995
  %166 = xor i32 1521644810, %165
  store i32 %166, i32* %31, align 4
  %167 = load i32, i32* %5, align 4
  %168 = and i32 %167, 17022600
  %169 = xor i32 1402060389, %168
  store i32 %169, i32* %32, align 4
  %170 = load i32, i32* %5, align 4
  %171 = and i32 %170, 1236045349
  %172 = xor i32 -1825100881, %171
  store i32 %172, i32* %33, align 4
  %173 = load i32, i32* %5, align 4
  %174 = and i32 %173, -1842597571
  %175 = xor i32 -225959668, %174
  store i32 %175, i32* %34, align 4
  %176 = load i32, i32* %5, align 4
  %177 = and i32 %176, 1894724016
  %178 = xor i32 -1844775488, %177
  store i32 %178, i32* %35, align 4
  %179 = load i32, i32* %5, align 4
  %180 = and i32 %179, 1785753856
  %181 = xor i32 1674777280, %180
  store i32 %181, i32* %36, align 4
  %182 = load i32, i32* %5, align 4
  %183 = and i32 %182, -1183018991
  %184 = xor i32 1400582150, %183
  store i32 %184, i32* %37, align 4
  %185 = load i32, i32* %5, align 4
  %186 = and i32 %185, -1558132391
  %187 = xor i32 -1561349979, %186
  store i32 %187, i32* %38, align 4
  %188 = load i32, i32* %5, align 4
  %189 = and i32 %188, 1856023370
  %190 = xor i32 -1131440475, %189
  store i32 %190, i32* %39, align 4
  %191 = load i32, i32* %5, align 4
  %192 = and i32 %191, 1767103992
  %193 = xor i32 -86935899, %192
  store i32 %193, i32* %40, align 4
  %194 = load i32, i32* %5, align 4
  %195 = and i32 %194, -145801685
  %196 = xor i32 1717179555, %195
  store i32 %196, i32* %41, align 4
  %197 = load i32, i32* %5, align 4
  %198 = and i32 %197, -265261907
  %199 = xor i32 -219156276, %198
  store i32 %199, i32* %42, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %13, align 4
  %203 = and i32 %201, %202
  %204 = xor i32 %200, %203
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* %15, align 4
  %208 = and i32 %206, %207
  %209 = xor i32 %205, %208
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %17, align 4
  %213 = and i32 %211, %212
  %214 = xor i32 %210, %213
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %19, align 4
  %218 = and i32 %216, %217
  %219 = xor i32 %215, %218
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* %21, align 4
  %223 = and i32 %221, %222
  %224 = xor i32 %220, %223
  store i32 %224, i32* %16, align 4
  %225 = load i32, i32* %22, align 4
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* %23, align 4
  %228 = and i32 %226, %227
  %229 = xor i32 %225, %228
  store i32 %229, i32* %17, align 4
  %230 = load i32, i32* %24, align 4
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* %25, align 4
  %233 = and i32 %231, %232
  %234 = xor i32 %230, %233
  store i32 %234, i32* %18, align 4
  %235 = load i32, i32* %26, align 4
  store i32 %235, i32* %19, align 4
  %236 = load i32, i32* %28, align 4
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* %29, align 4
  %239 = and i32 %237, %238
  %240 = xor i32 %236, %239
  store i32 %240, i32* %20, align 4
  %241 = load i32, i32* %30, align 4
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %31, align 4
  %244 = and i32 %242, %243
  %245 = xor i32 %241, %244
  store i32 %245, i32* %21, align 4
  %246 = load i32, i32* %32, align 4
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %33, align 4
  %249 = and i32 %247, %248
  %250 = xor i32 %246, %249
  store i32 %250, i32* %22, align 4
  %251 = load i32, i32* %34, align 4
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* %35, align 4
  %254 = and i32 %252, %253
  %255 = xor i32 %251, %254
  store i32 %255, i32* %23, align 4
  %256 = load i32, i32* %36, align 4
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %37, align 4
  %259 = and i32 %257, %258
  %260 = xor i32 %256, %259
  store i32 %260, i32* %24, align 4
  %261 = load i32, i32* %38, align 4
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* %39, align 4
  %264 = and i32 %262, %263
  %265 = xor i32 %261, %264
  store i32 %265, i32* %25, align 4
  %266 = load i32, i32* %40, align 4
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* %41, align 4
  %269 = and i32 %267, %268
  %270 = xor i32 %266, %269
  store i32 %270, i32* %26, align 4
  %271 = load i32, i32* %42, align 4
  store i32 %271, i32* %27, align 4
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %13, align 4
  %275 = and i32 %273, %274
  %276 = xor i32 %272, %275
  store i32 %276, i32* %12, align 4
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* %15, align 4
  %280 = and i32 %278, %279
  %281 = xor i32 %277, %280
  store i32 %281, i32* %13, align 4
  %282 = load i32, i32* %16, align 4
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* %17, align 4
  %285 = and i32 %283, %284
  %286 = xor i32 %282, %285
  store i32 %286, i32* %14, align 4
  %287 = load i32, i32* %18, align 4
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* %19, align 4
  %290 = and i32 %288, %289
  %291 = xor i32 %287, %290
  store i32 %291, i32* %15, align 4
  %292 = load i32, i32* %20, align 4
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* %21, align 4
  %295 = and i32 %293, %294
  %296 = xor i32 %292, %295
  store i32 %296, i32* %16, align 4
  %297 = load i32, i32* %22, align 4
  %298 = load i32, i32* %7, align 4
  %299 = load i32, i32* %23, align 4
  %300 = and i32 %298, %299
  %301 = xor i32 %297, %300
  store i32 %301, i32* %17, align 4
  %302 = load i32, i32* %24, align 4
  %303 = load i32, i32* %7, align 4
  %304 = load i32, i32* %25, align 4
  %305 = and i32 %303, %304
  %306 = xor i32 %302, %305
  store i32 %306, i32* %18, align 4
  %307 = load i32, i32* %26, align 4
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %27, align 4
  %310 = and i32 %308, %309
  %311 = xor i32 %307, %310
  store i32 %311, i32* %19, align 4
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %8, align 4
  %314 = load i32, i32* %13, align 4
  %315 = and i32 %313, %314
  %316 = xor i32 %312, %315
  store i32 %316, i32* %12, align 4
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %15, align 4
  %320 = and i32 %318, %319
  %321 = xor i32 %317, %320
  store i32 %321, i32* %13, align 4
  %322 = load i32, i32* %16, align 4
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* %17, align 4
  %325 = and i32 %323, %324
  %326 = xor i32 %322, %325
  store i32 %326, i32* %14, align 4
  %327 = load i32, i32* %18, align 4
  %328 = load i32, i32* %8, align 4
  %329 = load i32, i32* %19, align 4
  %330 = and i32 %328, %329
  %331 = xor i32 %327, %330
  store i32 %331, i32* %15, align 4
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %9, align 4
  %334 = load i32, i32* %13, align 4
  %335 = and i32 %333, %334
  %336 = xor i32 %332, %335
  store i32 %336, i32* %12, align 4
  %337 = load i32, i32* %14, align 4
  %338 = load i32, i32* %9, align 4
  %339 = load i32, i32* %15, align 4
  %340 = and i32 %338, %339
  %341 = xor i32 %337, %340
  store i32 %341, i32* %13, align 4
  %342 = load i32, i32* %12, align 4
  %343 = load i32, i32* %10, align 4
  %344 = load i32, i32* %13, align 4
  %345 = and i32 %343, %344
  %346 = xor i32 %342, %345
  store i32 %346, i32* %12, align 4
  %347 = load i32, i32* %12, align 4
  %348 = and i32 %347, 4
  %349 = shl i32 %348, 3
  store i32 %349, i32* %11, align 4
  %350 = load i32, i32* %12, align 4
  %351 = and i32 %350, 16384
  %352 = shl i32 %351, 4
  %353 = load i32, i32* %11, align 4
  %354 = or i32 %353, %352
  store i32 %354, i32* %11, align 4
  %355 = load i32, i32* %12, align 4
  %356 = and i32 %355, 302121248
  %357 = call i32 @rotl(i32 %356, i32 5)
  %358 = load i32, i32* %11, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %11, align 4
  %360 = load i32, i32* %12, align 4
  %361 = and i32 %360, 1048576
  %362 = shl i32 %361, 6
  %363 = load i32, i32* %11, align 4
  %364 = or i32 %363, %362
  store i32 %364, i32* %11, align 4
  %365 = load i32, i32* %12, align 4
  %366 = and i32 %365, 32768
  %367 = shl i32 %366, 9
  %368 = load i32, i32* %11, align 4
  %369 = or i32 %368, %367
  store i32 %369, i32* %11, align 4
  %370 = load i32, i32* %12, align 4
  %371 = and i32 %370, 67108864
  %372 = ashr i32 %371, 22
  %373 = load i32, i32* %11, align 4
  %374 = or i32 %373, %372
  store i32 %374, i32* %11, align 4
  %375 = load i32, i32* %12, align 4
  %376 = and i32 %375, 1
  %377 = shl i32 %376, 11
  %378 = load i32, i32* %11, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %11, align 4
  %380 = load i32, i32* %12, align 4
  %381 = and i32 %380, 536871424
  %382 = call i32 @rotl(i32 %381, i32 12)
  %383 = load i32, i32* %11, align 4
  %384 = or i32 %383, %382
  store i32 %384, i32* %11, align 4
  %385 = load i32, i32* %12, align 4
  %386 = and i32 %385, 2097152
  %387 = ashr i32 %386, 19
  %388 = load i32, i32* %11, align 4
  %389 = or i32 %388, %387
  store i32 %389, i32* %11, align 4
  %390 = load i32, i32* %12, align 4
  %391 = and i32 %390, 64
  %392 = shl i32 %391, 14
  %393 = load i32, i32* %11, align 4
  %394 = or i32 %393, %392
  store i32 %394, i32* %11, align 4
  %395 = load i32, i32* %12, align 4
  %396 = and i32 %395, 65536
  %397 = shl i32 %396, 15
  %398 = load i32, i32* %11, align 4
  %399 = or i32 %398, %397
  store i32 %399, i32* %11, align 4
  %400 = load i32, i32* %12, align 4
  %401 = and i32 %400, 2
  %402 = shl i32 %401, 16
  %403 = load i32, i32* %11, align 4
  %404 = or i32 %403, %402
  store i32 %404, i32* %11, align 4
  %405 = load i32, i32* %12, align 4
  %406 = and i32 %405, 1082136576
  %407 = call i32 @rotl(i32 %406, i32 17)
  %408 = load i32, i32* %11, align 4
  %409 = or i32 %408, %407
  store i32 %409, i32* %11, align 4
  %410 = load i32, i32* %12, align 4
  %411 = and i32 %410, 524288
  %412 = ashr i32 %411, 13
  %413 = load i32, i32* %11, align 4
  %414 = or i32 %413, %412
  store i32 %414, i32* %11, align 4
  %415 = load i32, i32* %12, align 4
  %416 = and i32 %415, 16
  %417 = shl i32 %416, 21
  %418 = load i32, i32* %11, align 4
  %419 = or i32 %418, %417
  store i32 %419, i32* %11, align 4
  %420 = load i32, i32* %12, align 4
  %421 = and i32 %420, 16777216
  %422 = ashr i32 %421, 10
  %423 = load i32, i32* %11, align 4
  %424 = or i32 %423, %422
  store i32 %424, i32* %11, align 4
  %425 = load i32, i32* %12, align 4
  %426 = and i32 %425, -2013265912
  %427 = call i32 @rotl(i32 %426, i32 24)
  %428 = load i32, i32* %11, align 4
  %429 = or i32 %428, %427
  store i32 %429, i32* %11, align 4
  %430 = load i32, i32* %12, align 4
  %431 = and i32 %430, 1152
  %432 = ashr i32 %431, 7
  %433 = load i32, i32* %11, align 4
  %434 = or i32 %433, %432
  store i32 %434, i32* %11, align 4
  %435 = load i32, i32* %12, align 4
  %436 = and i32 %435, 4464640
  %437 = ashr i32 %436, 6
  %438 = load i32, i32* %11, align 4
  %439 = or i32 %438, %437
  store i32 %439, i32* %11, align 4
  %440 = load i32, i32* %11, align 4
  ret i32 %440
}

declare dso_local i32 @rotl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
