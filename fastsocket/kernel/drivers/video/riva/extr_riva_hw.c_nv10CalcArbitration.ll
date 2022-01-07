; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv10CalcArbitration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv10CalcArbitration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @nv10CalcArbitration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10CalcArbitration(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
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
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %27, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %26, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %28, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %7, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 64
  store i32 %76, i32* %8, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %9, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %11, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %29, align 4
  store i32 0, i32* %44, align 4
  store i32 1024, i32* %41, align 4
  store i32 512, i32* %24, align 4
  store i32 512, i32* %18, align 4
  store i32 4, i32* %15, align 4
  store i32 3, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 5
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 7
  store i32 %103, i32* %14, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 11
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %2
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 64
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 4
  store i32 %115, i32* %14, align 4
  br label %119

116:                                              ; preds = %108
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 2
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %116, %113
  br label %132

120:                                              ; preds = %2
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 64
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %14, align 4
  br label %131

128:                                              ; preds = %120
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %119
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %132
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 128
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i32, i32* %11, align 4
  %142 = icmp eq i32 %141, 32
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 31, i32 42
  store i32 %144, i32* %22, align 4
  store i32 17, i32* %54, align 4
  br label %150

145:                                              ; preds = %135, %132
  %146 = load i32, i32* %11, align 4
  %147 = icmp eq i32 %146, 32
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 8, i32 4
  store i32 %149, i32* %22, align 4
  store i32 18, i32* %54, align 4
  br label %150

150:                                              ; preds = %145, %140
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %29, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %150
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 4
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %161, %150
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 0
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, 0
  store i32 %168, i32* %15, align 4
  store i32 0, i32* %21, align 4
  br label %169

169:                                              ; preds = %417, %164
  %170 = load i32, i32* %21, align 4
  %171 = icmp ne i32 %170, 1
  br i1 %171, label %172, label %429

172:                                              ; preds = %169
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i32 1, i32* %174, align 4
  store i32 1, i32* %21, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %22, align 4
  %177 = add nsw i32 %175, %176
  store i32 %177, i32* %23, align 4
  %178 = load i32, i32* %23, align 4
  %179 = mul nsw i32 %178, 1000
  %180 = mul nsw i32 %179, 1000
  %181 = load i32, i32* %26, align 4
  %182 = sdiv i32 %180, %181
  store i32 %182, i32* %30, align 4
  %183 = load i32, i32* %14, align 4
  %184 = mul nsw i32 %183, 1000
  %185 = mul nsw i32 %184, 1000
  %186 = load i32, i32* %26, align 4
  %187 = sdiv i32 %185, %186
  store i32 %187, i32* %31, align 4
  %188 = load i32, i32* %54, align 4
  %189 = mul nsw i32 %188, 1000
  %190 = mul nsw i32 %189, 1000
  %191 = load i32, i32* %26, align 4
  %192 = sdiv i32 %190, %191
  store i32 %192, i32* %55, align 4
  %193 = load i32, i32* %13, align 4
  %194 = mul nsw i32 %193, 1000
  %195 = mul nsw i32 %194, 1000
  %196 = load i32, i32* %28, align 4
  %197 = sdiv i32 %195, %196
  store i32 %197, i32* %32, align 4
  %198 = load i32, i32* %15, align 4
  %199 = mul nsw i32 %198, 1000
  %200 = mul nsw i32 %199, 1000
  %201 = load i32, i32* %27, align 4
  %202 = sdiv i32 %200, %201
  store i32 %202, i32* %33, align 4
  %203 = load i32, i32* %30, align 4
  %204 = load i32, i32* %32, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* %33, align 4
  %207 = add nsw i32 %205, %206
  store i32 %207, i32* %48, align 4
  %208 = load i32, i32* %31, align 4
  %209 = load i32, i32* %32, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32, i32* %33, align 4
  %212 = add nsw i32 %210, %211
  store i32 %212, i32* %49, align 4
  store i32 0, i32* %20, align 4
  %213 = load i32, i32* %23, align 4
  %214 = mul nsw i32 %213, 1000
  %215 = mul nsw i32 %214, 1000
  %216 = load i32, i32* %26, align 4
  %217 = sdiv i32 %215, %216
  store i32 %217, i32* %36, align 4
  %218 = load i32, i32* %28, align 4
  %219 = sdiv i32 4000000, %218
  store i32 %219, i32* %37, align 4
  %220 = load i32, i32* %27, align 4
  %221 = sdiv i32 0, %220
  store i32 %221, i32* %38, align 4
  %222 = load i32, i32* %36, align 4
  %223 = load i32, i32* %37, align 4
  %224 = add nsw i32 %222, %223
  %225 = load i32, i32* %38, align 4
  %226 = add nsw i32 %224, %225
  store i32 %226, i32* %50, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %276

229:                                              ; preds = %172
  %230 = load i32, i32* %27, align 4
  %231 = mul nsw i32 %230, 4
  store i32 %231, i32* %34, align 4
  %232 = load i32, i32* %27, align 4
  %233 = load i32, i32* %11, align 4
  %234 = mul nsw i32 %232, %233
  %235 = sdiv i32 %234, 8
  store i32 %235, i32* %35, align 4
  store i32 1, i32* %16, align 4
  %236 = load i32, i32* %16, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %16, align 4
  store i32 2, i32* %17, align 4
  %238 = load i32, i32* %29, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %229
  %241 = load i32, i32* %17, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %17, align 4
  br label %243

243:                                              ; preds = %240, %229
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* %6, align 4
  %246 = mul nsw i32 %244, %245
  %247 = mul nsw i32 %246, 1000
  %248 = mul nsw i32 %247, 1000
  %249 = load i32, i32* %26, align 4
  %250 = sdiv i32 %248, %249
  store i32 %250, i32* %39, align 4
  %251 = load i32, i32* %39, align 4
  %252 = load i32, i32* %36, align 4
  %253 = add nsw i32 %251, %252
  store i32 %253, i32* %40, align 4
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %6, align 4
  %256 = mul nsw i32 %254, %255
  %257 = mul nsw i32 %256, 1000
  %258 = mul nsw i32 %257, 1000
  %259 = load i32, i32* %26, align 4
  %260 = sdiv i32 %258, %259
  store i32 %260, i32* %42, align 4
  %261 = load i32, i32* %40, align 4
  %262 = load i32, i32* %42, align 4
  %263 = add nsw i32 %261, %262
  %264 = load i32, i32* %30, align 4
  %265 = add nsw i32 %263, %264
  %266 = load i32, i32* %32, align 4
  %267 = add nsw i32 %265, %266
  %268 = load i32, i32* %33, align 4
  %269 = add nsw i32 %267, %268
  store i32 %269, i32* %43, align 4
  %270 = load i32, i32* %43, align 4
  %271 = load i32, i32* %35, align 4
  %272 = mul nsw i32 %270, %271
  %273 = sdiv i32 %272, 1000000
  store i32 %273, i32* %44, align 4
  %274 = load i32, i32* %44, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %44, align 4
  br label %338

276:                                              ; preds = %172
  %277 = load i32, i32* %27, align 4
  %278 = load i32, i32* %11, align 4
  %279 = mul nsw i32 %277, %278
  %280 = sdiv i32 %279, 8
  store i32 %280, i32* %35, align 4
  store i32 1, i32* %17, align 4
  %281 = load i32, i32* %17, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %17, align 4
  %283 = load i32, i32* %29, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %276
  %286 = load i32, i32* %17, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %17, align 4
  br label %288

288:                                              ; preds = %285, %276
  %289 = load i32, i32* %17, align 4
  %290 = load i32, i32* %6, align 4
  %291 = mul nsw i32 %289, %290
  %292 = mul nsw i32 %291, 1000
  %293 = mul nsw i32 %292, 1000
  %294 = load i32, i32* %26, align 4
  %295 = sdiv i32 %293, %294
  store i32 %295, i32* %42, align 4
  %296 = load i32, i32* %42, align 4
  %297 = load i32, i32* %30, align 4
  %298 = add nsw i32 %296, %297
  %299 = load i32, i32* %32, align 4
  %300 = add nsw i32 %298, %299
  %301 = load i32, i32* %33, align 4
  %302 = add nsw i32 %300, %301
  store i32 %302, i32* %43, align 4
  %303 = load i32, i32* %43, align 4
  %304 = load i32, i32* %35, align 4
  %305 = mul nsw i32 %303, %304
  %306 = sdiv i32 %305, 1000000
  store i32 %306, i32* %44, align 4
  %307 = load i32, i32* %44, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %44, align 4
  %309 = load i32, i32* %8, align 4
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %311, label %337

311:                                              ; preds = %288
  %312 = load i32, i32* %28, align 4
  %313 = mul nsw i32 %312, 8
  store i32 %313, i32* %19, align 4
  %314 = load i32, i32* %35, align 4
  %315 = mul nsw i32 %314, 100
  %316 = load i32, i32* %19, align 4
  %317 = mul nsw i32 %316, 102
  %318 = icmp sge i32 %315, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %311
  store i32 4095, i32* %44, align 4
  br label %336

320:                                              ; preds = %311
  %321 = load i32, i32* %35, align 4
  %322 = mul nsw i32 %321, 100
  %323 = load i32, i32* %19, align 4
  %324 = mul nsw i32 %323, 98
  %325 = icmp sge i32 %322, %324
  br i1 %325, label %326, label %335

326:                                              ; preds = %320
  store i32 1024, i32* %44, align 4
  store i32 512, i32* %24, align 4
  %327 = load i32, i32* %24, align 4
  %328 = mul nsw i32 %327, 1000
  %329 = mul nsw i32 %328, 1000
  %330 = load i32, i32* %8, align 4
  %331 = mul nsw i32 8, %330
  %332 = sdiv i32 %329, %331
  %333 = load i32, i32* %26, align 4
  %334 = sdiv i32 %332, %333
  store i32 %334, i32* %20, align 4
  br label %335

335:                                              ; preds = %326, %320
  br label %336

336:                                              ; preds = %335, %319
  br label %337

337:                                              ; preds = %336, %288
  br label %338

338:                                              ; preds = %337, %243
  %339 = load i32, i32* %44, align 4
  %340 = sdiv i32 %339, 8
  %341 = mul nsw i32 %340, 8
  store i32 %341, i32* %45, align 4
  %342 = load i32, i32* %45, align 4
  %343 = load i32, i32* %44, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %338
  %346 = load i32, i32* %44, align 4
  %347 = add nsw i32 %346, 8
  store i32 %347, i32* %44, align 4
  br label %348

348:                                              ; preds = %345, %338
  %349 = load i32, i32* %44, align 4
  %350 = load i32, i32* %24, align 4
  %351 = add nsw i32 %349, %350
  %352 = sub nsw i32 %351, 1024
  store i32 %352, i32* %25, align 4
  %353 = load i32, i32* %49, align 4
  %354 = load i32, i32* %55, align 4
  %355 = add nsw i32 %353, %354
  store i32 %355, i32* %47, align 4
  %356 = load i32, i32* %44, align 4
  %357 = sub nsw i32 1024, %356
  %358 = load i32, i32* %8, align 4
  %359 = mul nsw i32 8, %358
  %360 = sdiv i32 %357, %359
  store i32 %360, i32* %53, align 4
  %361 = load i32, i32* %47, align 4
  %362 = load i32, i32* %27, align 4
  %363 = mul nsw i32 %361, %362
  %364 = sdiv i32 %363, 1000000
  store i32 %364, i32* %51, align 4
  %365 = load i32, i32* %51, align 4
  %366 = load i32, i32* %11, align 4
  %367 = mul nsw i32 %365, %366
  %368 = sdiv i32 %367, 8
  store i32 %368, i32* %52, align 4
  %369 = load i32, i32* %52, align 4
  %370 = load i32, i32* %25, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %392

372:                                              ; preds = %348
  %373 = load i32, i32* %25, align 4
  %374 = icmp sgt i32 %373, 0
  br i1 %374, label %375, label %392

375:                                              ; preds = %372
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 0
  store i32 0, i32* %377, align 4
  store i32 0, i32* %21, align 4
  %378 = load i32, i32* %54, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %375
  %381 = load i32, i32* %24, align 4
  %382 = icmp sle i32 %381, 32
  br i1 %382, label %383, label %384

383:                                              ; preds = %380
  store i32 1, i32* %21, align 4
  br label %387

384:                                              ; preds = %380
  %385 = load i32, i32* %24, align 4
  %386 = sdiv i32 %385, 2
  store i32 %386, i32* %24, align 4
  br label %387

387:                                              ; preds = %384, %383
  br label %391

388:                                              ; preds = %375
  %389 = load i32, i32* %54, align 4
  %390 = add nsw i32 %389, -1
  store i32 %390, i32* %54, align 4
  br label %391

391:                                              ; preds = %388, %387
  br label %406

392:                                              ; preds = %372, %348
  %393 = load i32, i32* %44, align 4
  %394 = icmp sgt i32 %393, 1023
  br i1 %394, label %395, label %405

395:                                              ; preds = %392
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 0
  store i32 0, i32* %397, align 4
  store i32 0, i32* %21, align 4
  %398 = load i32, i32* %54, align 4
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %395
  store i32 1, i32* %21, align 4
  br label %404

401:                                              ; preds = %395
  %402 = load i32, i32* %54, align 4
  %403 = add nsw i32 %402, -1
  store i32 %403, i32* %54, align 4
  br label %404

404:                                              ; preds = %401, %400
  br label %405

405:                                              ; preds = %404, %392
  br label %406

406:                                              ; preds = %405, %391
  %407 = load i32, i32* %44, align 4
  store i32 %407, i32* %46, align 4
  %408 = load i32, i32* %44, align 4
  %409 = load i32, i32* %24, align 4
  %410 = sub nsw i32 1024, %409
  %411 = add nsw i32 %410, 8
  %412 = icmp slt i32 %408, %411
  br i1 %412, label %413, label %417

413:                                              ; preds = %406
  %414 = load i32, i32* %24, align 4
  %415 = sub nsw i32 1024, %414
  %416 = add nsw i32 %415, 8
  store i32 %416, i32* %44, align 4
  br label %417

417:                                              ; preds = %413, %406
  %418 = load i32, i32* %44, align 4
  store i32 %418, i32* %5, align 4
  %419 = load i32, i32* %5, align 4
  %420 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %420, i32 0, i32 1
  store i32 %419, i32* %421, align 4
  %422 = load i32, i32* %24, align 4
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 2
  store i32 %422, i32* %424, align 4
  %425 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %425, i32 0, i32 3
  store i32 1024, i32* %426, align 4
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 4
  store i32 512, i32* %428, align 4
  br label %169

429:                                              ; preds = %169
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
