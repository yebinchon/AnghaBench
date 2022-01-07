; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nvidia.c_nvidiafb_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nvidia.c_nvidiafb_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.nvidia_par* }
%struct.TYPE_5__ = type { i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nvidia_par = type { i32, i32, i64 }
%struct.fb_cursor = type { i32, i32, i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64 }

@MAX_CURS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FB_CUR_SETALL = common dso_local global i32 0, align 4
@FB_CUR_SETSIZE = common dso_local global i32 0, align 4
@FB_CUR_SETPOS = common dso_local global i32 0, align 4
@FB_CUR_SETSHAPE = common dso_local global i32 0, align 4
@FB_CUR_SETCMAP = common dso_local global i32 0, align 4
@FB_CUR_SETIMAGE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_cursor*)* @nvidiafb_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidiafb_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.nvidia_par*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
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
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 2
  %26 = load %struct.nvidia_par*, %struct.nvidia_par** %25, align 8
  store %struct.nvidia_par* %26, %struct.nvidia_par** %6, align 8
  %27 = load i32, i32* @MAX_CURS, align 4
  %28 = load i32, i32* @MAX_CURS, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 8
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %7, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  %34 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %35 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %38 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX_CURS, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %2
  %44 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAX_CURS, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43, %2
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %324

53:                                               ; preds = %43
  %54 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %55 = call i32 @NVShowHideCursor(%struct.nvidia_par* %54, i32 0)
  %56 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %57 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @FB_CUR_SETALL, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %63 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @FB_CUR_SETSIZE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %71 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MAX_CURS, align 4
  %74 = load i32, i32* @MAX_CURS, align 4
  %75 = mul nsw i32 %73, %74
  %76 = mul nsw i32 %75, 2
  %77 = call i32 @memset_io(i32 %72, i32 0, i32 %76)
  br label %78

78:                                               ; preds = %69, %64
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @FB_CUR_SETPOS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %78
  %84 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %85 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %87, %91
  store i32 %92, i32* %15, align 4
  %93 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %94 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %96, %100
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = and i32 %102, 65535
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %15, align 4
  %105 = shl i32 %104, 16
  %106 = load i32, i32* %16, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %16, align 4
  %108 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %109 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @NV_WR32(i32 %110, i32 768, i32 %111)
  br label %113

113:                                              ; preds = %83, %78
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @FB_CUR_SETSHAPE, align 4
  %116 = load i32, i32* @FB_CUR_SETCMAP, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @FB_CUR_SETIMAGE, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %114, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %315

122:                                              ; preds = %113
  %123 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %124 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %17, align 4
  %127 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %128 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %18, align 4
  %131 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %132 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 7
  %136 = ashr i32 %135, 3
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* @MAX_CURS, align 4
  %138 = sdiv i32 %137, 8
  store i32 %138, i32* %20, align 4
  %139 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %140 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i32*
  store i32* %143, i32** %21, align 8
  %144 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %145 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i32*
  store i32* %147, i32** %22, align 8
  %148 = load i32, i32* %19, align 4
  %149 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %150 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %148, %152
  %154 = load i32, i32* @GFP_ATOMIC, align 4
  %155 = call i32* @kmalloc(i32 %153, i32 %154)
  store i32* %155, i32** %23, align 8
  %156 = load i32*, i32** %23, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %314

158:                                              ; preds = %122
  %159 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %160 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  switch i32 %161, label %193 [
    i32 128, label %162
    i32 129, label %192
  ]

162:                                              ; preds = %158
  store i32 0, i32* %9, align 4
  br label %163

163:                                              ; preds = %188, %162
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %167 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %165, %169
  %171 = icmp slt i32 %164, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %163
  %173 = load i32*, i32** %21, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %22, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = xor i32 %177, %182
  %184 = load i32*, i32** %23, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %183, i32* %187, align 4
  br label %188

188:                                              ; preds = %172
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %163

191:                                              ; preds = %163
  br label %223

192:                                              ; preds = %158
  br label %193

193:                                              ; preds = %158, %192
  store i32 0, i32* %9, align 4
  br label %194

194:                                              ; preds = %219, %193
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %19, align 4
  %197 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %198 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %196, %200
  %202 = icmp slt i32 %195, %201
  br i1 %202, label %203, label %222

203:                                              ; preds = %194
  %204 = load i32*, i32** %21, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %22, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %208, %213
  %215 = load i32*, i32** %23, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %214, i32* %218, align 4
  br label %219

219:                                              ; preds = %203
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  br label %194

222:                                              ; preds = %194
  br label %223

223:                                              ; preds = %222, %191
  %224 = load i32, i32* %20, align 4
  %225 = load i32*, i32** %23, align 8
  %226 = load i32, i32* %19, align 4
  %227 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %228 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @fb_pad_aligned_buffer(i32* %33, i32 %224, i32* %225, i32 %226, i32 %230)
  %232 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %233 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %17, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 248
  %241 = shl i32 %240, 7
  %242 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %243 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 248
  %251 = shl i32 %250, 2
  %252 = or i32 %241, %251
  %253 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %254 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %17, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, 248
  %262 = ashr i32 %261, 3
  %263 = or i32 %252, %262
  %264 = or i32 %263, 32768
  store i32 %264, i32* %12, align 4
  %265 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %266 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %18, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, 248
  %274 = shl i32 %273, 7
  %275 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %276 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %18, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, 248
  %284 = shl i32 %283, 2
  %285 = or i32 %274, %284
  %286 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %287 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 2
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %18, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, 248
  %295 = ashr i32 %294, 3
  %296 = or i32 %285, %295
  %297 = or i32 %296, 32768
  store i32 %297, i32* %11, align 4
  %298 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %299 = call i32 @NVLockUnlock(%struct.nvidia_par* %298, i32 0)
  %300 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %301 = load i32, i32* %12, align 4
  %302 = load i32, i32* %11, align 4
  %303 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %304 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %308 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @nvidiafb_load_cursor_image(%struct.nvidia_par* %300, i32* %33, i32 %301, i32 %302, i32 %306, i32 %310)
  %312 = load i32*, i32** %23, align 8
  %313 = call i32 @kfree(i32* %312)
  br label %314

314:                                              ; preds = %223, %122
  br label %315

315:                                              ; preds = %314, %113
  %316 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %317 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %315
  %321 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %322 = call i32 @NVShowHideCursor(%struct.nvidia_par* %321, i32 1)
  br label %323

323:                                              ; preds = %320, %315
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %324

324:                                              ; preds = %323, %50
  %325 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %325)
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NVShowHideCursor(%struct.nvidia_par*, i32) #2

declare dso_local i32 @memset_io(i32, i32, i32) #2

declare dso_local i32 @NV_WR32(i32, i32, i32) #2

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @NVLockUnlock(%struct.nvidia_par*, i32) #2

declare dso_local i32 @nvidiafb_load_cursor_image(%struct.nvidia_par*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
