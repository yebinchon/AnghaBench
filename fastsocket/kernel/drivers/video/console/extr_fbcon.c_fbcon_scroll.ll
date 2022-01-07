; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_scroll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.display = type { i32, i32, i32 }
%struct.vc_data = type { i64, i32, i32, i32, i32, i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.display* null, align 8
@FBINFO_PARTIAL_PAN_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CM_ERASE = common dso_local global i32 0, align 4
@softback_top = common dso_local global i32 0, align 4
@logo_shown = common dso_local global i32 0, align 4
@FBINFO_READS_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32, i32)* @fbcon_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_scroll(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.display*, align 8
  %14 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %16 = load i64*, i64** @con2fb_map, align 8
  %17 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %15, i64 %21
  %23 = load %struct.fb_info*, %struct.fb_info** %22, align 8
  store %struct.fb_info* %23, %struct.fb_info** %12, align 8
  %24 = load %struct.display*, %struct.display** @fb_display, align 8
  %25 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.display, %struct.display* %24, i64 %27
  store %struct.display* %28, %struct.display** %13, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FBINFO_PARTIAL_PAN_OK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %36 = call i64 @fbcon_is_inactive(%struct.vc_data* %34, %struct.fb_info* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %845

41:                                               ; preds = %5
  %42 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %43 = load i32, i32* @CM_ERASE, align 4
  %44 = call i32 @fbcon_cursor(%struct.vc_data* %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  switch i32 %45, label %844 [
    i32 128, label %46
    i32 129, label %454
  ]

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32, i32* @softback_top, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @fbcon_softback_note(%struct.vc_data* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* @logo_shown, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %407

68:                                               ; preds = %64
  %69 = load %struct.display*, %struct.display** %13, align 8
  %70 = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %453 [
    i32 134, label %72
    i32 130, label %115
    i32 132, label %198
    i32 133, label %294
    i32 131, label %406
  ]

72:                                               ; preds = %68
  %73 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %74 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %75 = load %struct.display*, %struct.display** %13, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @fbcon_redraw_blit(%struct.vc_data* %73, %struct.fb_info* %74, %struct.display* %75, i32 %76, i32 %81, i32 %82)
  %84 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %90 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @fbcon_clear(%struct.vc_data* %84, i32 %87, i32 0, i32 %88, i32 %91)
  %93 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %94 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %97 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %99, %100
  %102 = mul nsw i32 %98, %101
  %103 = add nsw i32 %95, %102
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i16*
  %106 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %107 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %110 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %111, %112
  %114 = call i32 @scr_memsetw(i16* %105, i32 %108, i32 %113)
  store i32 1, i32* %6, align 4
  br label %845

115:                                              ; preds = %68
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %122 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 3, %123
  %125 = ashr i32 %124, 2
  %126 = icmp sgt i32 %120, %125
  br i1 %126, label %127, label %164

127:                                              ; preds = %115
  %128 = load i32, i32* %8, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %135 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @fbcon_bmove(%struct.vc_data* %131, i32 0, i32 0, i32 %132, i32 0, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %130, %127
  %139 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @ywrap_up(%struct.vc_data* %139, i32 %140)
  %142 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %143 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %144, %145
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %138
  %149 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %150, %151
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %155 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %160 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @fbcon_bmove(%struct.vc_data* %149, i32 %152, i32 0, i32 %153, i32 0, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %148, %138
  br label %188

164:                                              ; preds = %115
  %165 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %166 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @FBINFO_READS_FAST, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %186

171:                                              ; preds = %164
  %172 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %173, %174
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %8, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32, i32* %11, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %183 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @fbcon_bmove(%struct.vc_data* %172, i32 %175, i32 0, i32 %176, i32 0, i32 %181, i32 %184)
  br label %187

186:                                              ; preds = %164
  br label %407

187:                                              ; preds = %171
  br label %188

188:                                              ; preds = %187, %163
  %189 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sub nsw i32 %190, %191
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %195 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @fbcon_clear(%struct.vc_data* %189, i32 %192, i32 0, i32 %193, i32 %196)
  br label %453

198:                                              ; preds = %68
  %199 = load %struct.display*, %struct.display** %13, align 8
  %200 = getelementptr inbounds %struct.display, %struct.display* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %201, %202
  %204 = load %struct.display*, %struct.display** %13, align 8
  %205 = getelementptr inbounds %struct.display, %struct.display* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %208 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %206, %209
  %211 = mul nsw i32 2, %210
  %212 = icmp sle i32 %203, %211
  br i1 %212, label %213, label %271

213:                                              ; preds = %198
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %8, align 4
  %219 = sub nsw i32 %217, %218
  %220 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %221 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %219, %222
  br i1 %223, label %239, label %224

224:                                              ; preds = %216, %213
  %225 = load i32, i32* %14, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %271

227:                                              ; preds = %224
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %8, align 4
  %230 = sub nsw i32 %228, %229
  %231 = load i32, i32* %11, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %234 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = mul nsw i32 3, %235
  %237 = ashr i32 %236, 2
  %238 = icmp sgt i32 %232, %237
  br i1 %238, label %239, label %271

239:                                              ; preds = %227, %216
  %240 = load i32, i32* %8, align 4
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %239
  %243 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %244 = load %struct.display*, %struct.display** %13, align 8
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @fbcon_redraw_move(%struct.vc_data* %243, %struct.display* %244, i32 0, i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %242, %239
  %249 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* %11, align 4
  %252 = call i32 @ypan_up_redraw(%struct.vc_data* %249, i32 %250, i32 %251)
  %253 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %254 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sub nsw i32 %255, %256
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %270

259:                                              ; preds = %248
  %260 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %261 = load %struct.display*, %struct.display** %13, align 8
  %262 = load i32, i32* %9, align 4
  %263 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %264 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sub nsw i32 %265, %266
  %268 = load i32, i32* %9, align 4
  %269 = call i32 @fbcon_redraw_move(%struct.vc_data* %260, %struct.display* %261, i32 %262, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %259, %248
  br label %284

271:                                              ; preds = %227, %224, %198
  %272 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %273 = load %struct.display*, %struct.display** %13, align 8
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %274, %275
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %8, align 4
  %279 = sub nsw i32 %277, %278
  %280 = load i32, i32* %11, align 4
  %281 = sub nsw i32 %279, %280
  %282 = load i32, i32* %8, align 4
  %283 = call i32 @fbcon_redraw_move(%struct.vc_data* %272, %struct.display* %273, i32 %276, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %271, %270
  %285 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* %11, align 4
  %288 = sub nsw i32 %286, %287
  %289 = load i32, i32* %11, align 4
  %290 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %291 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @fbcon_clear(%struct.vc_data* %285, i32 %288, i32 0, i32 %289, i32 %292)
  br label %453

294:                                              ; preds = %68
  %295 = load %struct.display*, %struct.display** %13, align 8
  %296 = getelementptr inbounds %struct.display, %struct.display* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %11, align 4
  %299 = add nsw i32 %297, %298
  %300 = load %struct.display*, %struct.display** %13, align 8
  %301 = getelementptr inbounds %struct.display, %struct.display* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %304 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = sub nsw i32 %302, %305
  %307 = mul nsw i32 2, %306
  %308 = icmp sle i32 %299, %307
  br i1 %308, label %309, label %372

309:                                              ; preds = %294
  %310 = load i32, i32* %14, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %320, label %312

312:                                              ; preds = %309
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %8, align 4
  %315 = sub nsw i32 %313, %314
  %316 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %317 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %315, %318
  br i1 %319, label %335, label %320

320:                                              ; preds = %312, %309
  %321 = load i32, i32* %14, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %372

323:                                              ; preds = %320
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* %8, align 4
  %326 = sub nsw i32 %324, %325
  %327 = load i32, i32* %11, align 4
  %328 = sub nsw i32 %326, %327
  %329 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %330 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = mul nsw i32 3, %331
  %333 = ashr i32 %332, 2
  %334 = icmp sgt i32 %328, %333
  br i1 %334, label %335, label %372

335:                                              ; preds = %323, %312
  %336 = load i32, i32* %8, align 4
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %335
  %339 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %340 = load i32, i32* %11, align 4
  %341 = load i32, i32* %8, align 4
  %342 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %343 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @fbcon_bmove(%struct.vc_data* %339, i32 0, i32 0, i32 %340, i32 0, i32 %341, i32 %344)
  br label %346

346:                                              ; preds = %338, %335
  %347 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %348 = load i32, i32* %11, align 4
  %349 = call i32 @ypan_up(%struct.vc_data* %347, i32 %348)
  %350 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %351 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sub nsw i32 %352, %353
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %371

356:                                              ; preds = %346
  %357 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %358 = load i32, i32* %9, align 4
  %359 = load i32, i32* %11, align 4
  %360 = sub nsw i32 %358, %359
  %361 = load i32, i32* %9, align 4
  %362 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %363 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* %9, align 4
  %366 = sub nsw i32 %364, %365
  %367 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %368 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @fbcon_bmove(%struct.vc_data* %357, i32 %360, i32 0, i32 %361, i32 0, i32 %366, i32 %369)
  br label %371

371:                                              ; preds = %356, %346
  br label %396

372:                                              ; preds = %323, %320, %294
  %373 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %374 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @FBINFO_READS_FAST, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %394

379:                                              ; preds = %372
  %380 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %381 = load i32, i32* %8, align 4
  %382 = load i32, i32* %11, align 4
  %383 = add nsw i32 %381, %382
  %384 = load i32, i32* %8, align 4
  %385 = load i32, i32* %9, align 4
  %386 = load i32, i32* %8, align 4
  %387 = sub nsw i32 %385, %386
  %388 = load i32, i32* %11, align 4
  %389 = sub nsw i32 %387, %388
  %390 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %391 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @fbcon_bmove(%struct.vc_data* %380, i32 %383, i32 0, i32 %384, i32 0, i32 %389, i32 %392)
  br label %395

394:                                              ; preds = %372
  br label %407

395:                                              ; preds = %379
  br label %396

396:                                              ; preds = %395, %371
  %397 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* %11, align 4
  %400 = sub nsw i32 %398, %399
  %401 = load i32, i32* %11, align 4
  %402 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %403 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @fbcon_clear(%struct.vc_data* %397, i32 %400, i32 0, i32 %401, i32 %404)
  br label %453

406:                                              ; preds = %68
  br label %407

407:                                              ; preds = %406, %394, %186, %67
  %408 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %409 = load %struct.display*, %struct.display** %13, align 8
  %410 = load i32, i32* %8, align 4
  %411 = load i32, i32* %9, align 4
  %412 = load i32, i32* %8, align 4
  %413 = sub nsw i32 %411, %412
  %414 = load i32, i32* %11, align 4
  %415 = sub nsw i32 %413, %414
  %416 = load i32, i32* %11, align 4
  %417 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %418 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = mul nsw i32 %416, %419
  %421 = call i32 @fbcon_redraw(%struct.vc_data* %408, %struct.display* %409, i32 %410, i32 %415, i32 %420)
  %422 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %423 = load i32, i32* %9, align 4
  %424 = load i32, i32* %11, align 4
  %425 = sub nsw i32 %423, %424
  %426 = load i32, i32* %11, align 4
  %427 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %428 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @fbcon_clear(%struct.vc_data* %422, i32 %425, i32 0, i32 %426, i32 %429)
  %431 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %432 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %431, i32 0, i32 5
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %435 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* %9, align 4
  %438 = load i32, i32* %11, align 4
  %439 = sub nsw i32 %437, %438
  %440 = mul nsw i32 %436, %439
  %441 = add nsw i32 %433, %440
  %442 = sext i32 %441 to i64
  %443 = inttoptr i64 %442 to i16*
  %444 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %445 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %448 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %447, i32 0, i32 3
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* %11, align 4
  %451 = mul nsw i32 %449, %450
  %452 = call i32 @scr_memsetw(i16* %443, i32 %446, i32 %451)
  store i32 1, i32* %6, align 4
  br label %845

453:                                              ; preds = %68, %396, %284, %188
  br label %844

454:                                              ; preds = %41
  %455 = load i32, i32* %11, align 4
  %456 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %457 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 8
  %459 = icmp sgt i32 %455, %458
  br i1 %459, label %460, label %464

460:                                              ; preds = %454
  %461 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %462 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 8
  store i32 %463, i32* %11, align 4
  br label %464

464:                                              ; preds = %460, %454
  %465 = load i32, i32* @logo_shown, align 4
  %466 = icmp sge i32 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %464
  br label %799

468:                                              ; preds = %464
  %469 = load %struct.display*, %struct.display** %13, align 8
  %470 = getelementptr inbounds %struct.display, %struct.display* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 4
  switch i32 %471, label %843 [
    i32 134, label %472
    i32 130, label %513
    i32 133, label %594
    i32 132, label %703
    i32 131, label %798
  ]

472:                                              ; preds = %468
  %473 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %474 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %475 = load %struct.display*, %struct.display** %13, align 8
  %476 = load i32, i32* %9, align 4
  %477 = sub nsw i32 %476, 1
  %478 = load i32, i32* %9, align 4
  %479 = load i32, i32* %8, align 4
  %480 = sub nsw i32 %478, %479
  %481 = load i32, i32* %11, align 4
  %482 = sub nsw i32 %480, %481
  %483 = load i32, i32* %11, align 4
  %484 = sub nsw i32 0, %483
  %485 = call i32 @fbcon_redraw_blit(%struct.vc_data* %473, %struct.fb_info* %474, %struct.display* %475, i32 %477, i32 %482, i32 %484)
  %486 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %487 = load i32, i32* %8, align 4
  %488 = load i32, i32* %11, align 4
  %489 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %490 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 4
  %492 = call i32 @fbcon_clear(%struct.vc_data* %486, i32 %487, i32 0, i32 %488, i32 %491)
  %493 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %494 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %493, i32 0, i32 5
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %497 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* %8, align 4
  %500 = mul nsw i32 %498, %499
  %501 = add nsw i32 %495, %500
  %502 = sext i32 %501 to i64
  %503 = inttoptr i64 %502 to i16*
  %504 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %505 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %504, i32 0, i32 4
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %508 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %507, i32 0, i32 3
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* %11, align 4
  %511 = mul nsw i32 %509, %510
  %512 = call i32 @scr_memsetw(i16* %503, i32 %506, i32 %511)
  store i32 1, i32* %6, align 4
  br label %845

513:                                              ; preds = %468
  %514 = load i32, i32* %9, align 4
  %515 = load i32, i32* %8, align 4
  %516 = sub nsw i32 %514, %515
  %517 = load i32, i32* %11, align 4
  %518 = sub nsw i32 %516, %517
  %519 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %520 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 8
  %522 = mul nsw i32 3, %521
  %523 = ashr i32 %522, 2
  %524 = icmp sgt i32 %518, %523
  br i1 %524, label %525, label %562

525:                                              ; preds = %513
  %526 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %527 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* %9, align 4
  %530 = sub nsw i32 %528, %529
  %531 = icmp sgt i32 %530, 0
  br i1 %531, label %532, label %547

532:                                              ; preds = %525
  %533 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %534 = load i32, i32* %9, align 4
  %535 = load i32, i32* %9, align 4
  %536 = load i32, i32* %11, align 4
  %537 = sub nsw i32 %535, %536
  %538 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %539 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 8
  %541 = load i32, i32* %9, align 4
  %542 = sub nsw i32 %540, %541
  %543 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %544 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 4
  %546 = call i32 @fbcon_bmove(%struct.vc_data* %533, i32 %534, i32 0, i32 %537, i32 0, i32 %542, i32 %545)
  br label %547

547:                                              ; preds = %532, %525
  %548 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %549 = load i32, i32* %11, align 4
  %550 = call i32 @ywrap_down(%struct.vc_data* %548, i32 %549)
  %551 = load i32, i32* %8, align 4
  %552 = icmp sgt i32 %551, 0
  br i1 %552, label %553, label %561

553:                                              ; preds = %547
  %554 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %555 = load i32, i32* %11, align 4
  %556 = load i32, i32* %8, align 4
  %557 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %558 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %557, i32 0, i32 2
  %559 = load i32, i32* %558, align 4
  %560 = call i32 @fbcon_bmove(%struct.vc_data* %554, i32 %555, i32 0, i32 0, i32 0, i32 %556, i32 %559)
  br label %561

561:                                              ; preds = %553, %547
  br label %586

562:                                              ; preds = %513
  %563 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %564 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = load i32, i32* @FBINFO_READS_FAST, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %584

569:                                              ; preds = %562
  %570 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %571 = load i32, i32* %8, align 4
  %572 = load i32, i32* %8, align 4
  %573 = load i32, i32* %11, align 4
  %574 = add nsw i32 %572, %573
  %575 = load i32, i32* %9, align 4
  %576 = load i32, i32* %8, align 4
  %577 = sub nsw i32 %575, %576
  %578 = load i32, i32* %11, align 4
  %579 = sub nsw i32 %577, %578
  %580 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %581 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 4
  %583 = call i32 @fbcon_bmove(%struct.vc_data* %570, i32 %571, i32 0, i32 %574, i32 0, i32 %579, i32 %582)
  br label %585

584:                                              ; preds = %562
  br label %799

585:                                              ; preds = %569
  br label %586

586:                                              ; preds = %585, %561
  %587 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %588 = load i32, i32* %8, align 4
  %589 = load i32, i32* %11, align 4
  %590 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %591 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 4
  %593 = call i32 @fbcon_clear(%struct.vc_data* %587, i32 %588, i32 0, i32 %589, i32 %592)
  br label %843

594:                                              ; preds = %468
  %595 = load i32, i32* %11, align 4
  %596 = load %struct.display*, %struct.display** %13, align 8
  %597 = getelementptr inbounds %struct.display, %struct.display* %596, i32 0, i32 1
  %598 = load i32, i32* %597, align 4
  %599 = sub nsw i32 %595, %598
  %600 = load %struct.display*, %struct.display** %13, align 8
  %601 = getelementptr inbounds %struct.display, %struct.display* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 4
  %603 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %604 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 8
  %606 = sub nsw i32 %602, %605
  %607 = icmp sle i32 %599, %606
  br i1 %607, label %608, label %671

608:                                              ; preds = %594
  %609 = load i32, i32* %14, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %619, label %611

611:                                              ; preds = %608
  %612 = load i32, i32* %9, align 4
  %613 = load i32, i32* %8, align 4
  %614 = sub nsw i32 %612, %613
  %615 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %616 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %615, i32 0, i32 1
  %617 = load i32, i32* %616, align 8
  %618 = icmp eq i32 %614, %617
  br i1 %618, label %634, label %619

619:                                              ; preds = %611, %608
  %620 = load i32, i32* %14, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %671

622:                                              ; preds = %619
  %623 = load i32, i32* %9, align 4
  %624 = load i32, i32* %8, align 4
  %625 = sub nsw i32 %623, %624
  %626 = load i32, i32* %11, align 4
  %627 = sub nsw i32 %625, %626
  %628 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %629 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 8
  %631 = mul nsw i32 3, %630
  %632 = ashr i32 %631, 2
  %633 = icmp sgt i32 %627, %632
  br i1 %633, label %634, label %671

634:                                              ; preds = %622, %611
  %635 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %636 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 8
  %638 = load i32, i32* %9, align 4
  %639 = sub nsw i32 %637, %638
  %640 = icmp sgt i32 %639, 0
  br i1 %640, label %641, label %656

641:                                              ; preds = %634
  %642 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %643 = load i32, i32* %9, align 4
  %644 = load i32, i32* %9, align 4
  %645 = load i32, i32* %11, align 4
  %646 = sub nsw i32 %644, %645
  %647 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %648 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %647, i32 0, i32 1
  %649 = load i32, i32* %648, align 8
  %650 = load i32, i32* %9, align 4
  %651 = sub nsw i32 %649, %650
  %652 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %653 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %652, i32 0, i32 2
  %654 = load i32, i32* %653, align 4
  %655 = call i32 @fbcon_bmove(%struct.vc_data* %642, i32 %643, i32 0, i32 %646, i32 0, i32 %651, i32 %654)
  br label %656

656:                                              ; preds = %641, %634
  %657 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %658 = load i32, i32* %11, align 4
  %659 = call i32 @ypan_down(%struct.vc_data* %657, i32 %658)
  %660 = load i32, i32* %8, align 4
  %661 = icmp sgt i32 %660, 0
  br i1 %661, label %662, label %670

662:                                              ; preds = %656
  %663 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %664 = load i32, i32* %11, align 4
  %665 = load i32, i32* %8, align 4
  %666 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %667 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %666, i32 0, i32 2
  %668 = load i32, i32* %667, align 4
  %669 = call i32 @fbcon_bmove(%struct.vc_data* %663, i32 %664, i32 0, i32 0, i32 0, i32 %665, i32 %668)
  br label %670

670:                                              ; preds = %662, %656
  br label %695

671:                                              ; preds = %622, %619, %594
  %672 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %673 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %672, i32 0, i32 0
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* @FBINFO_READS_FAST, align 4
  %676 = and i32 %674, %675
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %693

678:                                              ; preds = %671
  %679 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %680 = load i32, i32* %8, align 4
  %681 = load i32, i32* %8, align 4
  %682 = load i32, i32* %11, align 4
  %683 = add nsw i32 %681, %682
  %684 = load i32, i32* %9, align 4
  %685 = load i32, i32* %8, align 4
  %686 = sub nsw i32 %684, %685
  %687 = load i32, i32* %11, align 4
  %688 = sub nsw i32 %686, %687
  %689 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %690 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %689, i32 0, i32 2
  %691 = load i32, i32* %690, align 4
  %692 = call i32 @fbcon_bmove(%struct.vc_data* %679, i32 %680, i32 0, i32 %683, i32 0, i32 %688, i32 %691)
  br label %694

693:                                              ; preds = %671
  br label %799

694:                                              ; preds = %678
  br label %695

695:                                              ; preds = %694, %670
  %696 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %697 = load i32, i32* %8, align 4
  %698 = load i32, i32* %11, align 4
  %699 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %700 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %699, i32 0, i32 2
  %701 = load i32, i32* %700, align 4
  %702 = call i32 @fbcon_clear(%struct.vc_data* %696, i32 %697, i32 0, i32 %698, i32 %701)
  br label %843

703:                                              ; preds = %468
  %704 = load i32, i32* %11, align 4
  %705 = load %struct.display*, %struct.display** %13, align 8
  %706 = getelementptr inbounds %struct.display, %struct.display* %705, i32 0, i32 1
  %707 = load i32, i32* %706, align 4
  %708 = sub nsw i32 %704, %707
  %709 = load %struct.display*, %struct.display** %13, align 8
  %710 = getelementptr inbounds %struct.display, %struct.display* %709, i32 0, i32 0
  %711 = load i32, i32* %710, align 4
  %712 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %713 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %712, i32 0, i32 1
  %714 = load i32, i32* %713, align 8
  %715 = sub nsw i32 %711, %714
  %716 = icmp sle i32 %708, %715
  br i1 %716, label %717, label %777

717:                                              ; preds = %703
  %718 = load i32, i32* %14, align 4
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %728, label %720

720:                                              ; preds = %717
  %721 = load i32, i32* %9, align 4
  %722 = load i32, i32* %8, align 4
  %723 = sub nsw i32 %721, %722
  %724 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %725 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %724, i32 0, i32 1
  %726 = load i32, i32* %725, align 8
  %727 = icmp eq i32 %723, %726
  br i1 %727, label %743, label %728

728:                                              ; preds = %720, %717
  %729 = load i32, i32* %14, align 4
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %731, label %777

731:                                              ; preds = %728
  %732 = load i32, i32* %9, align 4
  %733 = load i32, i32* %8, align 4
  %734 = sub nsw i32 %732, %733
  %735 = load i32, i32* %11, align 4
  %736 = sub nsw i32 %734, %735
  %737 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %738 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %737, i32 0, i32 1
  %739 = load i32, i32* %738, align 8
  %740 = mul nsw i32 3, %739
  %741 = ashr i32 %740, 2
  %742 = icmp sgt i32 %736, %741
  br i1 %742, label %743, label %777

743:                                              ; preds = %731, %720
  %744 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %745 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %744, i32 0, i32 1
  %746 = load i32, i32* %745, align 8
  %747 = load i32, i32* %9, align 4
  %748 = sub nsw i32 %746, %747
  %749 = icmp sgt i32 %748, 0
  br i1 %749, label %750, label %763

750:                                              ; preds = %743
  %751 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %752 = load %struct.display*, %struct.display** %13, align 8
  %753 = load i32, i32* %9, align 4
  %754 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %755 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %754, i32 0, i32 1
  %756 = load i32, i32* %755, align 8
  %757 = load i32, i32* %9, align 4
  %758 = sub nsw i32 %756, %757
  %759 = load i32, i32* %9, align 4
  %760 = load i32, i32* %11, align 4
  %761 = sub nsw i32 %759, %760
  %762 = call i32 @fbcon_redraw_move(%struct.vc_data* %751, %struct.display* %752, i32 %753, i32 %758, i32 %761)
  br label %763

763:                                              ; preds = %750, %743
  %764 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %765 = load i32, i32* %8, align 4
  %766 = load i32, i32* %11, align 4
  %767 = call i32 @ypan_down_redraw(%struct.vc_data* %764, i32 %765, i32 %766)
  %768 = load i32, i32* %8, align 4
  %769 = icmp sgt i32 %768, 0
  br i1 %769, label %770, label %776

770:                                              ; preds = %763
  %771 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %772 = load %struct.display*, %struct.display** %13, align 8
  %773 = load i32, i32* %11, align 4
  %774 = load i32, i32* %8, align 4
  %775 = call i32 @fbcon_redraw_move(%struct.vc_data* %771, %struct.display* %772, i32 %773, i32 %774, i32 0)
  br label %776

776:                                              ; preds = %770, %763
  br label %790

777:                                              ; preds = %731, %728, %703
  %778 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %779 = load %struct.display*, %struct.display** %13, align 8
  %780 = load i32, i32* %8, align 4
  %781 = load i32, i32* %9, align 4
  %782 = load i32, i32* %8, align 4
  %783 = sub nsw i32 %781, %782
  %784 = load i32, i32* %11, align 4
  %785 = sub nsw i32 %783, %784
  %786 = load i32, i32* %8, align 4
  %787 = load i32, i32* %11, align 4
  %788 = add nsw i32 %786, %787
  %789 = call i32 @fbcon_redraw_move(%struct.vc_data* %778, %struct.display* %779, i32 %780, i32 %785, i32 %788)
  br label %790

790:                                              ; preds = %777, %776
  %791 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %792 = load i32, i32* %8, align 4
  %793 = load i32, i32* %11, align 4
  %794 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %795 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %794, i32 0, i32 2
  %796 = load i32, i32* %795, align 4
  %797 = call i32 @fbcon_clear(%struct.vc_data* %791, i32 %792, i32 0, i32 %793, i32 %796)
  br label %843

798:                                              ; preds = %468
  br label %799

799:                                              ; preds = %798, %693, %584, %467
  %800 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %801 = load %struct.display*, %struct.display** %13, align 8
  %802 = load i32, i32* %9, align 4
  %803 = sub nsw i32 %802, 1
  %804 = load i32, i32* %9, align 4
  %805 = load i32, i32* %8, align 4
  %806 = sub nsw i32 %804, %805
  %807 = load i32, i32* %11, align 4
  %808 = sub nsw i32 %806, %807
  %809 = load i32, i32* %11, align 4
  %810 = sub nsw i32 0, %809
  %811 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %812 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %811, i32 0, i32 2
  %813 = load i32, i32* %812, align 4
  %814 = mul nsw i32 %810, %813
  %815 = call i32 @fbcon_redraw(%struct.vc_data* %800, %struct.display* %801, i32 %803, i32 %808, i32 %814)
  %816 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %817 = load i32, i32* %8, align 4
  %818 = load i32, i32* %11, align 4
  %819 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %820 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %819, i32 0, i32 2
  %821 = load i32, i32* %820, align 4
  %822 = call i32 @fbcon_clear(%struct.vc_data* %816, i32 %817, i32 0, i32 %818, i32 %821)
  %823 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %824 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %823, i32 0, i32 5
  %825 = load i32, i32* %824, align 8
  %826 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %827 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %826, i32 0, i32 3
  %828 = load i32, i32* %827, align 8
  %829 = load i32, i32* %8, align 4
  %830 = mul nsw i32 %828, %829
  %831 = add nsw i32 %825, %830
  %832 = sext i32 %831 to i64
  %833 = inttoptr i64 %832 to i16*
  %834 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %835 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %834, i32 0, i32 4
  %836 = load i32, i32* %835, align 4
  %837 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %838 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %837, i32 0, i32 3
  %839 = load i32, i32* %838, align 8
  %840 = load i32, i32* %11, align 4
  %841 = mul nsw i32 %839, %840
  %842 = call i32 @scr_memsetw(i16* %833, i32 %836, i32 %841)
  store i32 1, i32* %6, align 4
  br label %845

843:                                              ; preds = %468, %790, %695, %586
  br label %844

844:                                              ; preds = %843, %41, %453
  store i32 0, i32* %6, align 4
  br label %845

845:                                              ; preds = %844, %799, %472, %407, %72, %38
  %846 = load i32, i32* %6, align 4
  ret i32 %846
}

declare dso_local i64 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @fbcon_cursor(%struct.vc_data*, i32) #1

declare dso_local i32 @fbcon_softback_note(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @fbcon_redraw_blit(%struct.vc_data*, %struct.fb_info*, %struct.display*, i32, i32, i32) #1

declare dso_local i32 @fbcon_clear(%struct.vc_data*, i32, i32, i32, i32) #1

declare dso_local i32 @scr_memsetw(i16*, i32, i32) #1

declare dso_local i32 @fbcon_bmove(%struct.vc_data*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ywrap_up(%struct.vc_data*, i32) #1

declare dso_local i32 @fbcon_redraw_move(%struct.vc_data*, %struct.display*, i32, i32, i32) #1

declare dso_local i32 @ypan_up_redraw(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @ypan_up(%struct.vc_data*, i32) #1

declare dso_local i32 @fbcon_redraw(%struct.vc_data*, %struct.display*, i32, i32, i32) #1

declare dso_local i32 @ywrap_down(%struct.vc_data*, i32) #1

declare dso_local i32 @ypan_down(%struct.vc_data*, i32) #1

declare dso_local i32 @ypan_down_redraw(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
