; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cwep.c_zfWEPEncrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cwep.c_zfWEPEncrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32_tab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfWEPEncrypt(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [256 x i32], align 16
  %18 = alloca [256 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [32 x i32], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [32 x i32], [32 x i32]* %27, i64 0, i64 0
  store i32 %32, i32* %33, align 16
  %34 = load i32*, i32** %16, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [32 x i32], [32 x i32]* %27, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %16, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %27, i64 0, i64 2
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %27, i64 0, i64 3
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @zfMemoryCopy(i32* %42, i32* %43, i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 3
  store i32 %47, i32* %14, align 4
  store i32 0, i32* %20, align 4
  br label %48

48:                                               ; preds = %66, %8
  %49 = load i32, i32* %20, align 4
  %50 = icmp slt i32 %49, 256
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %20, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %14, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* %27, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %64
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %51
  %67 = load i32, i32* %20, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %20, align 4
  br label %48

69:                                               ; preds = %48
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %70

70:                                               ; preds = %102, %69
  %71 = load i32, i32* %20, align 4
  %72 = icmp slt i32 %71, 256
  br i1 %72, label %73, label %105

73:                                               ; preds = %70
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %74, %78
  %80 = load i32, i32* %20, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %79, %83
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* %21, align 4
  %86 = and i32 %85, 255
  store i32 %86, i32* %21, align 4
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %21, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %96
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %100
  store i32 %98, i32* %101, align 4
  br label %102

102:                                              ; preds = %73
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %20, align 4
  br label %70

105:                                              ; preds = %70
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %26, align 4
  store i32 0, i32* %19, align 4
  br label %106

106:                                              ; preds = %173, %105
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %176

110:                                              ; preds = %106
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %20, align 4
  %114 = and i32 %113, 255
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %21, align 4
  %121 = load i32, i32* %21, align 4
  %122 = and i32 %121, 255
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* %20, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %22, align 4
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %132
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* %21, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %136
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %20, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %22, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %22, align 4
  %144 = load i32, i32* %22, align 4
  %145 = and i32 %144, 255
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* %22, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %23, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %19, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %28, align 4
  %155 = load i32, i32* %26, align 4
  %156 = ashr i32 %155, 8
  %157 = load i32*, i32** @crc32_tab, align 8
  %158 = load i32, i32* %26, align 4
  %159 = load i32, i32* %28, align 4
  %160 = xor i32 %158, %159
  %161 = and i32 %160, 255
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = xor i32 %156, %164
  store i32 %165, i32* %26, align 4
  %166 = load i32, i32* %28, align 4
  %167 = load i32, i32* %23, align 4
  %168 = xor i32 %166, %167
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %168, i32* %172, align 4
  br label %173

173:                                              ; preds = %110
  %174 = load i32, i32* %19, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %19, align 4
  br label %106

176:                                              ; preds = %106
  %177 = load i32*, i32** %9, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @zfwBufGetSize(i32* %177, i32* %178)
  store i32 %179, i32* %25, align 4
  %180 = load i32, i32* %13, align 4
  store i32 %180, i32* %19, align 4
  br label %181

181:                                              ; preds = %247, %176
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %25, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %250

185:                                              ; preds = %181
  %186 = load i32, i32* %20, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %20, align 4
  %188 = load i32, i32* %20, align 4
  %189 = and i32 %188, 255
  store i32 %189, i32* %20, align 4
  %190 = load i32, i32* %20, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %21, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %21, align 4
  %196 = load i32, i32* %21, align 4
  %197 = and i32 %196, 255
  store i32 %197, i32* %21, align 4
  %198 = load i32, i32* %20, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %22, align 4
  %202 = load i32, i32* %21, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %207
  store i32 %205, i32* %208, align 4
  %209 = load i32, i32* %22, align 4
  %210 = load i32, i32* %21, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %211
  store i32 %209, i32* %212, align 4
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %22, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %22, align 4
  %219 = load i32, i32* %22, align 4
  %220 = and i32 %219, 255
  store i32 %220, i32* %22, align 4
  %221 = load i32, i32* %22, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %23, align 4
  %225 = load i32*, i32** %9, align 8
  %226 = load i32*, i32** %10, align 8
  %227 = load i32, i32* %19, align 4
  %228 = call i32 @zmw_tx_buf_readb(i32* %225, i32* %226, i32 %227)
  store i32 %228, i32* %29, align 4
  %229 = load i32, i32* %26, align 4
  %230 = ashr i32 %229, 8
  %231 = load i32*, i32** @crc32_tab, align 8
  %232 = load i32, i32* %26, align 4
  %233 = load i32, i32* %29, align 4
  %234 = xor i32 %232, %233
  %235 = and i32 %234, 255
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %231, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = xor i32 %230, %238
  store i32 %239, i32* %26, align 4
  %240 = load i32*, i32** %9, align 8
  %241 = load i32*, i32** %10, align 8
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* %29, align 4
  %244 = load i32, i32* %23, align 4
  %245 = xor i32 %243, %244
  %246 = call i32 @zmw_tx_buf_writeb(i32* %240, i32* %241, i32 %242, i32 %245)
  br label %247

247:                                              ; preds = %185
  %248 = load i32, i32* %19, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %19, align 4
  br label %181

250:                                              ; preds = %181
  %251 = load i32, i32* %26, align 4
  %252 = xor i32 %251, -1
  store i32 %252, i32* %26, align 4
  %253 = load i32, i32* %26, align 4
  store i32 %253, i32* %24, align 4
  store i32 0, i32* %19, align 4
  br label %254

254:                                              ; preds = %309, %250
  %255 = load i32, i32* %19, align 4
  %256 = icmp slt i32 %255, 4
  br i1 %256, label %257, label %312

257:                                              ; preds = %254
  %258 = load i32, i32* %20, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %20, align 4
  %260 = load i32, i32* %20, align 4
  %261 = and i32 %260, 255
  store i32 %261, i32* %20, align 4
  %262 = load i32, i32* %20, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %21, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* %21, align 4
  %268 = load i32, i32* %21, align 4
  %269 = and i32 %268, 255
  store i32 %269, i32* %21, align 4
  %270 = load i32, i32* %20, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %22, align 4
  %274 = load i32, i32* %21, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %20, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %279
  store i32 %277, i32* %280, align 4
  %281 = load i32, i32* %22, align 4
  %282 = load i32, i32* %21, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %283
  store i32 %281, i32* %284, align 4
  %285 = load i32, i32* %20, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %22, align 4
  %290 = add nsw i32 %289, %288
  store i32 %290, i32* %22, align 4
  %291 = load i32, i32* %22, align 4
  %292 = and i32 %291, 255
  store i32 %292, i32* %22, align 4
  %293 = load i32, i32* %22, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* %23, align 4
  %297 = load i32*, i32** %9, align 8
  %298 = load i32*, i32** %10, align 8
  %299 = load i32, i32* %25, align 4
  %300 = load i32, i32* %19, align 4
  %301 = add nsw i32 %299, %300
  %302 = load i32, i32* %24, align 4
  %303 = load i32, i32* %23, align 4
  %304 = xor i32 %302, %303
  %305 = and i32 %304, 255
  %306 = call i32 @zmw_tx_buf_writeb(i32* %297, i32* %298, i32 %301, i32 %305)
  %307 = load i32, i32* %24, align 4
  %308 = ashr i32 %307, 8
  store i32 %308, i32* %24, align 4
  br label %309

309:                                              ; preds = %257
  %310 = load i32, i32* %19, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %19, align 4
  br label %254

312:                                              ; preds = %254
  %313 = load i32*, i32** %9, align 8
  %314 = load i32*, i32** %10, align 8
  %315 = load i32, i32* %25, align 4
  %316 = add nsw i32 %315, 4
  %317 = call i32 @zfwBufSetSize(i32* %313, i32* %314, i32 %316)
  ret void
}

declare dso_local i32 @zfMemoryCopy(i32*, i32*, i32) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zmw_tx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zmw_tx_buf_writeb(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfwBufSetSize(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
