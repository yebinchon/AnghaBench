; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_dec.c_inv_mix_columns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_dec.c_inv_mix_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @inv_mix_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inv_mix_columns(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  store i32* %0, i32** %2, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 7
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %3, align 4
  %44 = ashr i32 %43, 16
  %45 = load i32, i32* %3, align 4
  %46 = shl i32 %45, 48
  %47 = or i32 %44, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 16
  %50 = load i32, i32* %4, align 4
  %51 = shl i32 %50, 48
  %52 = or i32 %49, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %53, 16
  %55 = load i32, i32* %5, align 4
  %56 = shl i32 %55, 48
  %57 = or i32 %54, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 16
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 %60, 48
  %62 = or i32 %59, %61
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 16
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 %65, 48
  %67 = or i32 %64, %66
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %8, align 4
  %69 = ashr i32 %68, 16
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 %70, 48
  %72 = or i32 %69, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 16
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %75, 48
  %77 = or i32 %74, %76
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %78, 16
  %80 = load i32, i32* %10, align 4
  %81 = shl i32 %80, 48
  %82 = or i32 %79, %81
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = xor i32 %83, %84
  %86 = load i32, i32* %10, align 4
  %87 = xor i32 %85, %86
  %88 = load i32, i32* %11, align 4
  %89 = xor i32 %87, %88
  %90 = load i32, i32* %16, align 4
  %91 = xor i32 %89, %90
  %92 = load i32, i32* %18, align 4
  %93 = xor i32 %91, %92
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %8, align 4
  %96 = xor i32 %94, %95
  %97 = load i32, i32* %9, align 4
  %98 = xor i32 %96, %97
  %99 = load i32, i32* %11, align 4
  %100 = xor i32 %98, %99
  %101 = load i32, i32* %16, align 4
  %102 = xor i32 %100, %101
  %103 = call i32 @rotr32(i32 %102)
  %104 = xor i32 %93, %103
  %105 = load i32*, i32** %2, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %8, align 4
  %109 = xor i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = xor i32 %109, %110
  %112 = load i32, i32* %12, align 4
  %113 = xor i32 %111, %112
  %114 = load i32, i32* %16, align 4
  %115 = xor i32 %113, %114
  %116 = load i32, i32* %17, align 4
  %117 = xor i32 %115, %116
  %118 = load i32, i32* %18, align 4
  %119 = xor i32 %117, %118
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %8, align 4
  %122 = xor i32 %120, %121
  %123 = load i32, i32* %10, align 4
  %124 = xor i32 %122, %123
  %125 = load i32, i32* %12, align 4
  %126 = xor i32 %124, %125
  %127 = load i32, i32* %16, align 4
  %128 = xor i32 %126, %127
  %129 = load i32, i32* %17, align 4
  %130 = xor i32 %128, %129
  %131 = call i32 @rotr32(i32 %130)
  %132 = xor i32 %119, %131
  %133 = load i32*, i32** %2, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* %4, align 4
  %137 = xor i32 %135, %136
  %138 = load i32, i32* %9, align 4
  %139 = xor i32 %137, %138
  %140 = load i32, i32* %12, align 4
  %141 = xor i32 %139, %140
  %142 = load i32, i32* %13, align 4
  %143 = xor i32 %141, %142
  %144 = load i32, i32* %17, align 4
  %145 = xor i32 %143, %144
  %146 = load i32, i32* %18, align 4
  %147 = xor i32 %145, %146
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* %5, align 4
  %150 = xor i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = xor i32 %150, %151
  %153 = load i32, i32* %13, align 4
  %154 = xor i32 %152, %153
  %155 = load i32, i32* %17, align 4
  %156 = xor i32 %154, %155
  %157 = load i32, i32* %18, align 4
  %158 = xor i32 %156, %157
  %159 = call i32 @rotr32(i32 %158)
  %160 = xor i32 %147, %159
  %161 = load i32*, i32** %2, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* %4, align 4
  %165 = xor i32 %163, %164
  %166 = load i32, i32* %5, align 4
  %167 = xor i32 %165, %166
  %168 = load i32, i32* %8, align 4
  %169 = xor i32 %167, %168
  %170 = load i32, i32* %9, align 4
  %171 = xor i32 %169, %170
  %172 = load i32, i32* %11, align 4
  %173 = xor i32 %171, %172
  %174 = load i32, i32* %13, align 4
  %175 = xor i32 %173, %174
  %176 = load i32, i32* %14, align 4
  %177 = xor i32 %175, %176
  %178 = load i32, i32* %16, align 4
  %179 = xor i32 %177, %178
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %4, align 4
  %182 = xor i32 %180, %181
  %183 = load i32, i32* %6, align 4
  %184 = xor i32 %182, %183
  %185 = load i32, i32* %8, align 4
  %186 = xor i32 %184, %185
  %187 = load i32, i32* %9, align 4
  %188 = xor i32 %186, %187
  %189 = load i32, i32* %10, align 4
  %190 = xor i32 %188, %189
  %191 = load i32, i32* %11, align 4
  %192 = xor i32 %190, %191
  %193 = load i32, i32* %14, align 4
  %194 = xor i32 %192, %193
  %195 = load i32, i32* %16, align 4
  %196 = xor i32 %194, %195
  %197 = load i32, i32* %18, align 4
  %198 = xor i32 %196, %197
  %199 = call i32 @rotr32(i32 %198)
  %200 = xor i32 %179, %199
  %201 = load i32*, i32** %2, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 3
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* %5, align 4
  %205 = xor i32 %203, %204
  %206 = load i32, i32* %6, align 4
  %207 = xor i32 %205, %206
  %208 = load i32, i32* %8, align 4
  %209 = xor i32 %207, %208
  %210 = load i32, i32* %12, align 4
  %211 = xor i32 %209, %210
  %212 = load i32, i32* %14, align 4
  %213 = xor i32 %211, %212
  %214 = load i32, i32* %15, align 4
  %215 = xor i32 %213, %214
  %216 = load i32, i32* %16, align 4
  %217 = xor i32 %215, %216
  %218 = load i32, i32* %17, align 4
  %219 = xor i32 %217, %218
  %220 = load i32, i32* %18, align 4
  %221 = xor i32 %219, %220
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* %5, align 4
  %224 = xor i32 %222, %223
  %225 = load i32, i32* %7, align 4
  %226 = xor i32 %224, %225
  %227 = load i32, i32* %8, align 4
  %228 = xor i32 %226, %227
  %229 = load i32, i32* %10, align 4
  %230 = xor i32 %228, %229
  %231 = load i32, i32* %12, align 4
  %232 = xor i32 %230, %231
  %233 = load i32, i32* %15, align 4
  %234 = xor i32 %232, %233
  %235 = load i32, i32* %16, align 4
  %236 = xor i32 %234, %235
  %237 = load i32, i32* %17, align 4
  %238 = xor i32 %236, %237
  %239 = call i32 @rotr32(i32 %238)
  %240 = xor i32 %221, %239
  %241 = load i32*, i32** %2, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 4
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* %6, align 4
  %245 = xor i32 %243, %244
  %246 = load i32, i32* %7, align 4
  %247 = xor i32 %245, %246
  %248 = load i32, i32* %9, align 4
  %249 = xor i32 %247, %248
  %250 = load i32, i32* %13, align 4
  %251 = xor i32 %249, %250
  %252 = load i32, i32* %15, align 4
  %253 = xor i32 %251, %252
  %254 = load i32, i32* %16, align 4
  %255 = xor i32 %253, %254
  %256 = load i32, i32* %17, align 4
  %257 = xor i32 %255, %256
  %258 = load i32, i32* %18, align 4
  %259 = xor i32 %257, %258
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* %6, align 4
  %262 = xor i32 %260, %261
  %263 = load i32, i32* %8, align 4
  %264 = xor i32 %262, %263
  %265 = load i32, i32* %9, align 4
  %266 = xor i32 %264, %265
  %267 = load i32, i32* %13, align 4
  %268 = xor i32 %266, %267
  %269 = load i32, i32* %16, align 4
  %270 = xor i32 %268, %269
  %271 = load i32, i32* %17, align 4
  %272 = xor i32 %270, %271
  %273 = load i32, i32* %18, align 4
  %274 = xor i32 %272, %273
  %275 = call i32 @rotr32(i32 %274)
  %276 = xor i32 %259, %275
  %277 = load i32*, i32** %2, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 5
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* %6, align 4
  %280 = load i32, i32* %7, align 4
  %281 = xor i32 %279, %280
  %282 = load i32, i32* %8, align 4
  %283 = xor i32 %281, %282
  %284 = load i32, i32* %10, align 4
  %285 = xor i32 %283, %284
  %286 = load i32, i32* %14, align 4
  %287 = xor i32 %285, %286
  %288 = load i32, i32* %16, align 4
  %289 = xor i32 %287, %288
  %290 = load i32, i32* %17, align 4
  %291 = xor i32 %289, %290
  %292 = load i32, i32* %18, align 4
  %293 = xor i32 %291, %292
  %294 = load i32, i32* %6, align 4
  %295 = load i32, i32* %7, align 4
  %296 = xor i32 %294, %295
  %297 = load i32, i32* %9, align 4
  %298 = xor i32 %296, %297
  %299 = load i32, i32* %10, align 4
  %300 = xor i32 %298, %299
  %301 = load i32, i32* %14, align 4
  %302 = xor i32 %300, %301
  %303 = load i32, i32* %17, align 4
  %304 = xor i32 %302, %303
  %305 = load i32, i32* %18, align 4
  %306 = xor i32 %304, %305
  %307 = call i32 @rotr32(i32 %306)
  %308 = xor i32 %293, %307
  %309 = load i32*, i32** %2, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 6
  store i32 %308, i32* %310, align 4
  %311 = load i32, i32* %7, align 4
  %312 = load i32, i32* %8, align 4
  %313 = xor i32 %311, %312
  %314 = load i32, i32* %9, align 4
  %315 = xor i32 %313, %314
  %316 = load i32, i32* %15, align 4
  %317 = xor i32 %315, %316
  %318 = load i32, i32* %17, align 4
  %319 = xor i32 %317, %318
  %320 = load i32, i32* %18, align 4
  %321 = xor i32 %319, %320
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* %8, align 4
  %324 = xor i32 %322, %323
  %325 = load i32, i32* %10, align 4
  %326 = xor i32 %324, %325
  %327 = load i32, i32* %15, align 4
  %328 = xor i32 %326, %327
  %329 = load i32, i32* %18, align 4
  %330 = xor i32 %328, %329
  %331 = call i32 @rotr32(i32 %330)
  %332 = xor i32 %321, %331
  %333 = load i32*, i32** %2, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 7
  store i32 %332, i32* %334, align 4
  ret void
}

declare dso_local i32 @rotr32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
