; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_image_blit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_image_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { i32, i8*, i8*, i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BUF_HIGH_WATER_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlfb_data*, i32, i32, i32, i32, i8*)* @image_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_blit(%struct.dlfb_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlfb_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.dlfb_data* %0, %struct.dlfb_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %24, %25
  %27 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %28 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %26, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %401

37:                                               ; preds = %6
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %38, %39
  %41 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %42 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %41, i32 0, i32 5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %40, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %401

51:                                               ; preds = %37
  %52 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %53 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %52, i32 0, i32 4
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %56 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %59 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %58, i32 0, i32 5
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 2
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 %66, %68
  %70 = add nsw i32 %57, %69
  store i32 %70, i32* %16, align 4
  %71 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %72 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %71, i32 0, i32 5
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 2
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %80, 2
  %82 = add nsw i32 %79, %81
  %83 = load i8*, i8** %13, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %13, align 8
  %86 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %87 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %21, align 8
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %376, %51
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %92, %93
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %379

96:                                               ; preds = %90
  %97 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %98 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i8*, i8** %21, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = load i32, i32* @BUF_HIGH_WATER_MARK, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %96
  %108 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %109 = load i8*, i8** %21, align 8
  %110 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %111 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %109 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %108, i32 %116)
  store i32 %117, i32* %18, align 4
  %118 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %119 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %21, align 8
  br label %121

121:                                              ; preds = %107, %96
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %17, align 4
  br label %123

123:                                              ; preds = %313, %121
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %326

126:                                              ; preds = %123
  %127 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %128 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %21, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = load i32, i32* @BUF_HIGH_WATER_MARK, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %126
  %138 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %139 = load i8*, i8** %21, align 8
  %140 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %141 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = ptrtoint i8* %139 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %138, i32 %146)
  store i32 %147, i32* %18, align 4
  %148 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %149 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** %21, align 8
  br label %151

151:                                              ; preds = %137, %126
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* %20, align 4
  %154 = icmp sgt i32 %153, 255
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 255, i32* %20, align 4
  br label %156

156:                                              ; preds = %155, %151
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %15, align 4
  br label %157

157:                                              ; preds = %188, %156
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %20, align 4
  %160 = mul nsw i32 %159, 2
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %191

162:                                              ; preds = %157
  %163 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %164 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %163, i32 0, i32 3
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %168 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %166, %169
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %165, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = load i8*, i8** %13, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %176, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %162
  %185 = load i32, i32* %15, align 4
  %186 = sdiv i32 %185, 2
  store i32 %186, i32* %19, align 4
  br label %191

187:                                              ; preds = %162
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %15, align 4
  br label %157

191:                                              ; preds = %184, %157
  %192 = load i32, i32* %19, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %313

194:                                              ; preds = %191
  %195 = load i8*, i8** %13, align 8
  %196 = load i32, i32* %19, align 4
  %197 = mul nsw i32 %196, 2
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  %200 = bitcast i8* %199 to i32*
  %201 = load i8*, i8** %21, align 8
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %19, align 4
  %204 = sub nsw i32 %202, %203
  %205 = call i8* @rle_compress16(i32* %200, i8* %201, i32 %204)
  store i8* %205, i8** %22, align 8
  %206 = load i8*, i8** %22, align 8
  %207 = load i8*, i8** %21, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 6
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %19, align 4
  %211 = sub nsw i32 %209, %210
  %212 = mul nsw i32 2, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %208, i64 %213
  %215 = icmp ult i8* %206, %214
  br i1 %215, label %216, label %251

216:                                              ; preds = %194
  %217 = load i8*, i8** %21, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  store i8 -81, i8* %218, align 1
  %219 = load i8*, i8** %21, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  store i8 105, i8* %220, align 1
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %19, align 4
  %223 = mul nsw i32 %222, 2
  %224 = add nsw i32 %221, %223
  %225 = ashr i32 %224, 16
  %226 = trunc i32 %225 to i8
  %227 = load i8*, i8** %21, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 2
  store i8 %226, i8* %228, align 1
  %229 = load i32, i32* %16, align 4
  %230 = load i32, i32* %19, align 4
  %231 = mul nsw i32 %230, 2
  %232 = add nsw i32 %229, %231
  %233 = ashr i32 %232, 8
  %234 = trunc i32 %233 to i8
  %235 = load i8*, i8** %21, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 3
  store i8 %234, i8* %236, align 1
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %19, align 4
  %239 = mul nsw i32 %238, 2
  %240 = add nsw i32 %237, %239
  %241 = trunc i32 %240 to i8
  %242 = load i8*, i8** %21, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 4
  store i8 %241, i8* %243, align 1
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* %19, align 4
  %246 = sub nsw i32 %244, %245
  %247 = trunc i32 %246 to i8
  %248 = load i8*, i8** %21, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 5
  store i8 %247, i8* %249, align 1
  %250 = load i8*, i8** %22, align 8
  store i8* %250, i8** %21, align 8
  br label %312

251:                                              ; preds = %194
  %252 = load i8*, i8** %21, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %21, align 8
  store i8 -81, i8* %252, align 1
  %254 = load i8*, i8** %21, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %21, align 8
  store i8 104, i8* %254, align 1
  %256 = load i32, i32* %16, align 4
  %257 = load i32, i32* %19, align 4
  %258 = mul nsw i32 %257, 2
  %259 = add nsw i32 %256, %258
  %260 = ashr i32 %259, 16
  %261 = trunc i32 %260 to i8
  %262 = load i8*, i8** %21, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %21, align 8
  store i8 %261, i8* %262, align 1
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %19, align 4
  %266 = mul nsw i32 %265, 2
  %267 = add nsw i32 %264, %266
  %268 = ashr i32 %267, 8
  %269 = trunc i32 %268 to i8
  %270 = load i8*, i8** %21, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %21, align 8
  store i8 %269, i8* %270, align 1
  %272 = load i32, i32* %16, align 4
  %273 = load i32, i32* %19, align 4
  %274 = mul nsw i32 %273, 2
  %275 = add nsw i32 %272, %274
  %276 = trunc i32 %275 to i8
  %277 = load i8*, i8** %21, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %21, align 8
  store i8 %276, i8* %277, align 1
  %279 = load i32, i32* %20, align 4
  %280 = load i32, i32* %19, align 4
  %281 = sub nsw i32 %279, %280
  %282 = trunc i32 %281 to i8
  %283 = load i8*, i8** %21, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %21, align 8
  store i8 %282, i8* %283, align 1
  %285 = load i32, i32* %19, align 4
  %286 = mul nsw i32 %285, 2
  store i32 %286, i32* %15, align 4
  br label %287

287:                                              ; preds = %308, %251
  %288 = load i32, i32* %15, align 4
  %289 = load i32, i32* %20, align 4
  %290 = mul nsw i32 %289, 2
  %291 = icmp slt i32 %288, %290
  br i1 %291, label %292, label %311

292:                                              ; preds = %287
  %293 = load i8*, i8** %13, align 8
  %294 = load i32, i32* %15, align 4
  %295 = add nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %293, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = load i8*, i8** %21, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %21, align 8
  store i8 %298, i8* %299, align 1
  %301 = load i8*, i8** %13, align 8
  %302 = load i32, i32* %15, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = load i8*, i8** %21, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %21, align 8
  store i8 %305, i8* %306, align 1
  br label %308

308:                                              ; preds = %292
  %309 = load i32, i32* %15, align 4
  %310 = add nsw i32 %309, 2
  store i32 %310, i32* %15, align 4
  br label %287

311:                                              ; preds = %287
  br label %312

312:                                              ; preds = %311, %216
  br label %313

313:                                              ; preds = %312, %191
  %314 = load i32, i32* %20, align 4
  %315 = mul nsw i32 %314, 2
  %316 = load i32, i32* %16, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* %16, align 4
  %318 = load i32, i32* %20, align 4
  %319 = mul nsw i32 %318, 2
  %320 = load i8*, i8** %13, align 8
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i8, i8* %320, i64 %321
  store i8* %322, i8** %13, align 8
  %323 = load i32, i32* %20, align 4
  %324 = load i32, i32* %17, align 4
  %325 = sub nsw i32 %324, %323
  store i32 %325, i32* %17, align 4
  br label %123

326:                                              ; preds = %123
  %327 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %328 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %327, i32 0, i32 3
  %329 = load i8*, i8** %328, align 8
  %330 = load i32, i32* %16, align 4
  %331 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %332 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = sub nsw i32 %330, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %329, i64 %335
  %337 = load i32, i32* %11, align 4
  %338 = mul nsw i32 %337, 2
  %339 = sext i32 %338 to i64
  %340 = sub i64 0, %339
  %341 = getelementptr inbounds i8, i8* %336, i64 %340
  %342 = load i8*, i8** %13, align 8
  %343 = load i32, i32* %11, align 4
  %344 = mul nsw i32 %343, 2
  %345 = sext i32 %344 to i64
  %346 = sub i64 0, %345
  %347 = getelementptr inbounds i8, i8* %342, i64 %346
  %348 = load i32, i32* %11, align 4
  %349 = mul nsw i32 %348, 2
  %350 = call i32 @memcpy(i8* %341, i8* %347, i32 %349)
  %351 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %352 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %351, i32 0, i32 5
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = mul nsw i32 %356, 2
  %358 = load i32, i32* %11, align 4
  %359 = mul nsw i32 %358, 2
  %360 = sub nsw i32 %357, %359
  %361 = load i32, i32* %16, align 4
  %362 = add nsw i32 %361, %360
  store i32 %362, i32* %16, align 4
  %363 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %364 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %363, i32 0, i32 5
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = mul nsw i32 %368, 2
  %370 = load i32, i32* %11, align 4
  %371 = mul nsw i32 %370, 2
  %372 = sub nsw i32 %369, %371
  %373 = load i8*, i8** %13, align 8
  %374 = sext i32 %372 to i64
  %375 = getelementptr inbounds i8, i8* %373, i64 %374
  store i8* %375, i8** %13, align 8
  br label %376

376:                                              ; preds = %326
  %377 = load i32, i32* %14, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %14, align 4
  br label %90

379:                                              ; preds = %90
  %380 = load i8*, i8** %21, align 8
  %381 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %382 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %381, i32 0, i32 1
  %383 = load i8*, i8** %382, align 8
  %384 = icmp ugt i8* %380, %383
  br i1 %384, label %385, label %396

385:                                              ; preds = %379
  %386 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %387 = load i8*, i8** %21, align 8
  %388 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %389 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %388, i32 0, i32 1
  %390 = load i8*, i8** %389, align 8
  %391 = ptrtoint i8* %387 to i64
  %392 = ptrtoint i8* %390 to i64
  %393 = sub i64 %391, %392
  %394 = trunc i64 %393 to i32
  %395 = call i32 @dlfb_bulk_msg(%struct.dlfb_data* %386, i32 %394)
  store i32 %395, i32* %18, align 4
  br label %396

396:                                              ; preds = %385, %379
  %397 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %398 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %397, i32 0, i32 4
  %399 = call i32 @mutex_unlock(i32* %398)
  %400 = load i32, i32* %16, align 4
  store i32 %400, i32* %7, align 4
  br label %401

401:                                              ; preds = %396, %48, %34
  %402 = load i32, i32* %7, align 4
  ret i32 %402
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dlfb_bulk_msg(%struct.dlfb_data*, i32) #1

declare dso_local i8* @rle_compress16(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
