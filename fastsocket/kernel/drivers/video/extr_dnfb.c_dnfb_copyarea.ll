; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_dnfb.c_dnfb_copyarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_dnfb.c_dnfb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i16 }

@AP_CONTROL_0 = common dso_local global i32 0, align 4
@AP_CONTROL_3A = common dso_local global i32 0, align 4
@AP_WRITE_ENABLE = common dso_local global i32 0, align 4
@NORMAL_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @dnfb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnfb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %18 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %21 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %19, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 -1
  store i32 %25, i32* %5, align 4
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %30 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %31, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %28, %37
  %39 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %40 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %38, %43
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %13, align 8
  %46 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %47 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 1
  %54 = mul nsw i32 %48, %53
  %55 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %56 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 4
  %59 = add nsw i32 %54, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %124

62:                                               ; preds = %2
  %63 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, 8
  %68 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %69 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %73 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  store i32 %75, i32* %6, align 4
  %76 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %77 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %80 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = ashr i32 %84, 4
  %86 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %87 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 4
  %90 = sub nsw i32 %85, %89
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %93 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 15
  %96 = lshr i32 -65536, %95
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, 15
  %99 = ashr i32 524287, %98
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* @AP_CONTROL_0, align 4
  %101 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %102 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 15
  %105 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %106 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 15
  %109 = sub nsw i32 %104, %108
  %110 = srem i32 %109, 16
  %111 = or i32 %110, 128
  %112 = call i32 @out_8(i32 %100, i32 %111)
  %113 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %114 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 15
  %117 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %118 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 15
  %121 = icmp slt i32 %116, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %62
  store i32 1, i32* %7, align 4
  br label %123

123:                                              ; preds = %122, %62
  br label %188

124:                                              ; preds = %2
  %125 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %128, 8
  %130 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %131 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %129, %132
  %134 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %135 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %133, %136
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %6, align 4
  %139 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %140 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %143 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %141, %144
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  %147 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %148 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 4
  %151 = load i32, i32* %8, align 4
  %152 = ashr i32 %151, 4
  %153 = sub nsw i32 %150, %152
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  %155 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %156 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 15
  %159 = ashr i32 524287, %158
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %8, align 4
  %161 = and i32 %160, 15
  %162 = lshr i32 -65536, %161
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* @AP_CONTROL_0, align 4
  %164 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %165 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 15
  %168 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %169 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 15
  %172 = sub nsw i32 %167, %171
  %173 = sub nsw i32 0, %172
  %174 = srem i32 %173, 16
  %175 = or i32 %174, 128
  %176 = call i32 @out_8(i32 %163, i32 %175)
  %177 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %178 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 15
  %181 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %182 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 15
  %185 = icmp sgt i32 %180, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %124
  store i32 1, i32* %7, align 4
  br label %187

187:                                              ; preds = %186, %124
  br label %188

188:                                              ; preds = %187, %123
  store i16 0, i16* %15, align 2
  br label %189

189:                                              ; preds = %287, %188
  %190 = load i16, i16* %15, align 2
  %191 = sext i16 %190 to i32
  %192 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %193 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %192, i32 0, i32 5
  %194 = load i16, i16* %193, align 4
  %195 = sext i16 %194 to i32
  %196 = icmp slt i32 %191, %195
  br i1 %196, label %197, label %290

197:                                              ; preds = %189
  %198 = load i32, i32* @AP_CONTROL_3A, align 4
  %199 = load i32, i32* %12, align 4
  %200 = ashr i32 %199, 16
  %201 = or i32 12, %200
  %202 = call i32 @out_8(i32 %198, i32 %201)
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %197
  %206 = load i32*, i32** %13, align 8
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %5, align 4
  %209 = load i32*, i32** %13, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  store i32* %211, i32** %13, align 8
  br label %212

212:                                              ; preds = %205, %197
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %262

215:                                              ; preds = %212
  %216 = load i32, i32* @AP_WRITE_ENABLE, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @out_8(i32 %216, i32 %217)
  %219 = load i32, i32* %12, align 4
  %220 = load i32*, i32** %13, align 8
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* %5, align 4
  %222 = load i32*, i32** %13, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** %13, align 8
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* @AP_WRITE_ENABLE, align 4
  %229 = call i32 @out_8(i32 %228, i32 0)
  store i16 1, i16* %16, align 2
  br label %230

230:                                              ; preds = %246, %215
  %231 = load i16, i16* %16, align 2
  %232 = sext i16 %231 to i32
  %233 = load i32, i32* %9, align 4
  %234 = sub nsw i32 %233, 1
  %235 = icmp slt i32 %232, %234
  br i1 %235, label %236, label %249

236:                                              ; preds = %230
  %237 = load i32, i32* %12, align 4
  %238 = load i32*, i32** %13, align 8
  store i32 %237, i32* %238, align 4
  %239 = load i32, i32* %5, align 4
  %240 = load i32*, i32** %13, align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32* %242, i32** %13, align 8
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %12, align 4
  br label %246

246:                                              ; preds = %236
  %247 = load i16, i16* %16, align 2
  %248 = add i16 %247, 1
  store i16 %248, i16* %16, align 2
  br label %230

249:                                              ; preds = %230
  %250 = load i32, i32* @AP_WRITE_ENABLE, align 4
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @out_8(i32 %250, i32 %251)
  %253 = load i32, i32* %12, align 4
  %254 = load i32*, i32** %13, align 8
  store i32 %253, i32* %254, align 4
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* %12, align 4
  %258 = load i32, i32* %5, align 4
  %259 = load i32*, i32** %13, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %13, align 8
  br label %277

262:                                              ; preds = %212
  %263 = load i32, i32* @AP_WRITE_ENABLE, align 4
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* %11, align 4
  %266 = or i32 %264, %265
  %267 = call i32 @out_8(i32 %263, i32 %266)
  %268 = load i32, i32* %12, align 4
  %269 = load i32*, i32** %13, align 8
  store i32 %268, i32* %269, align 4
  %270 = load i32, i32* %5, align 4
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %12, align 4
  %273 = load i32, i32* %5, align 4
  %274 = load i32*, i32** %13, align 8
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  store i32* %276, i32** %13, align 8
  br label %277

277:                                              ; preds = %262, %249
  %278 = load i32, i32* %6, align 4
  %279 = sdiv i32 %278, 16
  %280 = load i32*, i32** %13, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  store i32* %282, i32** %13, align 8
  %283 = load i32, i32* %6, align 4
  %284 = sdiv i32 %283, 16
  %285 = load i32, i32* %12, align 4
  %286 = add nsw i32 %285, %284
  store i32 %286, i32* %12, align 4
  br label %287

287:                                              ; preds = %277
  %288 = load i16, i16* %15, align 2
  %289 = add i16 %288, 1
  store i16 %289, i16* %15, align 2
  br label %189

290:                                              ; preds = %189
  %291 = load i32, i32* @AP_CONTROL_0, align 4
  %292 = load i32, i32* @NORMAL_MODE, align 4
  %293 = call i32 @out_8(i32 %291, i32 %292)
  ret void
}

declare dso_local i32 @out_8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
