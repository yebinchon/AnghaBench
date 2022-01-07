; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_do_partial_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_do_partial_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_11__*, %struct.TYPE_7__*, %struct.plane_info* }
%struct.TYPE_8__ = type { i32 (i32, i32, i32, %struct.blizzard_request*)*, i32 (i32)* }
%struct.blizzard_request = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 (i32, i32)*, i32 (i32, i32, i64, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.plane_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@blizzard = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@OMAPFB_FORMAT_FLAG_DOUBLE = common dso_local global i32 0, align 4
@OMAPFB_PLANE_NUM = common dso_local global i32 0, align 4
@OMAPFB_CHANNEL_OUT_LCD = common dso_local global i32 0, align 4
@BLIZZARD_COLOR_YUV420 = common dso_local global i32 0, align 4
@BLIZZARD_COLOR_RGB565 = common dso_local global i32 0, align 4
@OMAPFB_FORMAT_FLAG_TEARSYNC = common dso_local global i32 0, align 4
@OMAPFB_FORMAT_FLAG_FORCE_VSYNC = common dso_local global i32 0, align 4
@request_complete = common dso_local global i32 0, align 4
@REQ_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blizzard_request*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @do_partial_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_partial_update(%struct.blizzard_request* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.blizzard_request*, align 8
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
  %38 = alloca %struct.plane_info*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i64, align 8
  store %struct.blizzard_request* %0, %struct.blizzard_request** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  store i32 0, i32* %37, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.plane_info*, %struct.plane_info** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 12), align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %49, i64 %51
  %53 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %48, %54
  store i32 %55, i32* %26, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.plane_info*, %struct.plane_info** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 12), align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %57, i64 %59
  %61 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %56, %62
  store i32 %63, i32* %27, align 4
  %64 = load i32, i32* %26, align 4
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %28, align 4
  %67 = load i32, i32* %27, align 4
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %29, align 4
  %70 = load %struct.blizzard_request*, %struct.blizzard_request** %13, align 8
  %71 = getelementptr inbounds %struct.blizzard_request, %struct.blizzard_request* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %35, align 4
  %75 = load i32, i32* %35, align 4
  %76 = load i32, i32* @OMAPFB_FORMAT_FLAG_DOUBLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %12
  %80 = load i32, i32* %26, align 4
  store i32 %80, i32* %30, align 4
  %81 = load i32, i32* %27, align 4
  store i32 %81, i32* %31, align 4
  %82 = load i32, i32* %26, align 4
  %83 = load i32, i32* %17, align 4
  %84 = mul nsw i32 %83, 2
  %85 = add nsw i32 %82, %84
  store i32 %85, i32* %32, align 4
  %86 = load i32, i32* %27, align 4
  %87 = load i32, i32* %18, align 4
  %88 = mul nsw i32 %87, 2
  %89 = add nsw i32 %86, %88
  store i32 %89, i32* %33, align 4
  br label %113

90:                                               ; preds = %12
  %91 = load i32, i32* %19, align 4
  %92 = load %struct.plane_info*, %struct.plane_info** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 12), align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %92, i64 %94
  %96 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %91, %97
  store i32 %98, i32* %30, align 4
  %99 = load i32, i32* %20, align 4
  %100 = load %struct.plane_info*, %struct.plane_info** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 12), align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %100, i64 %102
  %104 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %99, %105
  store i32 %106, i32* %31, align 4
  %107 = load i32, i32* %30, align 4
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, i32* %32, align 4
  %110 = load i32, i32* %31, align 4
  %111 = load i32, i32* %22, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %33, align 4
  br label %113

113:                                              ; preds = %90, %79
  store i32 0, i32* %25, align 4
  br label %114

114:                                              ; preds = %297, %113
  %115 = load i32, i32* %25, align 4
  %116 = load i32, i32* @OMAPFB_PLANE_NUM, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %300

118:                                              ; preds = %114
  %119 = load %struct.plane_info*, %struct.plane_info** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 12), align 8
  %120 = load i32, i32* %25, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %119, i64 %121
  store %struct.plane_info* %122, %struct.plane_info** %38, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 0), align 8
  %124 = load i32, i32* %25, align 4
  %125 = shl i32 1, %124
  %126 = and i32 %123, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %118
  %129 = load i32, i32* %23, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i32, i32* %25, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %131, %118
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 10), align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32 (i32, i32)*, i32 (i32, i32)** %137, align 8
  %139 = load i32, i32* %25, align 4
  %140 = call i32 %138(i32 %139, i32 0)
  br label %297

141:                                              ; preds = %131, %128
  %142 = load i32, i32* %25, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i32, i32* %15, align 4
  store i32 %146, i32* %39, align 4
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %40, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %41, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %151, %152
  store i32 %153, i32* %42, align 4
  store i32 0, i32* %45, align 4
  store i32 0, i32* %46, align 4
  br label %239

154:                                              ; preds = %141
  %155 = load i32, i32* %26, align 4
  %156 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %157 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %155, %158
  store i32 %159, i32* %39, align 4
  %160 = load i32, i32* %27, align 4
  %161 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %162 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %160, %163
  store i32 %164, i32* %40, align 4
  %165 = load i32, i32* %28, align 4
  %166 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %167 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %165, %168
  store i32 %169, i32* %41, align 4
  %170 = load i32, i32* %29, align 4
  %171 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %172 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %170, %173
  store i32 %174, i32* %42, align 4
  %175 = load i32, i32* %39, align 4
  %176 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %177 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp sge i32 %175, %178
  br i1 %179, label %192, label %180

180:                                              ; preds = %154
  %181 = load i32, i32* %40, align 4
  %182 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %183 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp sge i32 %181, %184
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load i32, i32* %41, align 4
  %188 = icmp sle i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %42, align 4
  %191 = icmp sle i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189, %186, %180, %154
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 10), align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32 (i32, i32)*, i32 (i32, i32)** %194, align 8
  %196 = load i32, i32* %25, align 4
  %197 = call i32 %195(i32 %196, i32 0)
  br label %297

198:                                              ; preds = %189
  %199 = load i32, i32* %39, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %45, align 4
  %201 = load i32, i32* %40, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %46, align 4
  %203 = load i32, i32* %39, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  store i32 0, i32* %39, align 4
  br label %206

206:                                              ; preds = %205, %198
  %207 = load i32, i32* %40, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store i32 0, i32* %40, align 4
  br label %210

210:                                              ; preds = %209, %206
  %211 = load i32, i32* %41, align 4
  %212 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %213 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = icmp sgt i32 %211, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %218 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %41, align 4
  br label %220

220:                                              ; preds = %216, %210
  %221 = load i32, i32* %42, align 4
  %222 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %223 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = icmp sgt i32 %221, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %228 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %42, align 4
  br label %230

230:                                              ; preds = %226, %220
  %231 = load i32, i32* %45, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  store i32 0, i32* %45, align 4
  br label %234

234:                                              ; preds = %233, %230
  %235 = load i32, i32* %46, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  store i32 0, i32* %46, align 4
  br label %238

238:                                              ; preds = %237, %234
  br label %239

239:                                              ; preds = %238, %145
  %240 = load i32, i32* %41, align 4
  %241 = load i32, i32* %39, align 4
  %242 = sub nsw i32 %240, %241
  store i32 %242, i32* %43, align 4
  %243 = load i32, i32* %42, align 4
  %244 = load i32, i32* %40, align 4
  %245 = sub nsw i32 %243, %244
  store i32 %245, i32* %44, align 4
  %246 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %247 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %250 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %40, align 4
  %253 = mul nsw i32 %251, %252
  %254 = load i32, i32* %39, align 4
  %255 = add nsw i32 %253, %254
  %256 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %257 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 4
  %259 = mul nsw i32 %255, %258
  %260 = sdiv i32 %259, 8
  %261 = add nsw i32 %248, %260
  %262 = sext i32 %261 to i64
  store i64 %262, i64* %47, align 8
  %263 = load i32, i32* %23, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %239
  %266 = load i32, i32* %43, align 4
  %267 = add nsw i32 %266, 1
  %268 = load i32, i32* %24, align 4
  %269 = mul nsw i32 %267, %268
  %270 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %271 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 4
  %273 = sdiv i32 %269, %272
  store i32 %273, i32* %43, align 4
  br label %274

274:                                              ; preds = %265, %239
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 10), align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 1
  %277 = load i32 (i32, i32, i64, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i64, i32, i32, i32, i32, i32, i32)** %276, align 8
  %278 = load i32, i32* %25, align 4
  %279 = load i32, i32* @OMAPFB_CHANNEL_OUT_LCD, align 4
  %280 = load i64, i64* %47, align 8
  %281 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %282 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %45, align 4
  %285 = load i32, i32* %46, align 4
  %286 = load i32, i32* %43, align 4
  %287 = load i32, i32* %44, align 4
  %288 = load %struct.plane_info*, %struct.plane_info** %38, align 8
  %289 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 4
  %291 = call i32 %277(i32 %278, i32 %279, i64 %280, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 %290)
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 10), align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = load i32 (i32, i32)*, i32 (i32, i32)** %293, align 8
  %295 = load i32, i32* %25, align 4
  %296 = call i32 %294(i32 %295, i32 1)
  br label %297

297:                                              ; preds = %274, %192, %135
  %298 = load i32, i32* %25, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %25, align 4
  br label %114

300:                                              ; preds = %114
  %301 = load i32, i32* %23, align 4
  switch i32 %301, label %308 [
    i32 128, label %302
  ]

302:                                              ; preds = %300
  %303 = load i32, i32* @BLIZZARD_COLOR_YUV420, align 4
  store i32 %303, i32* %34, align 4
  %304 = load i32, i32* %17, align 4
  %305 = add nsw i32 %304, 1
  %306 = mul nsw i32 %305, 3
  %307 = sdiv i32 %306, 4
  store i32 %307, i32* %17, align 4
  br label %310

308:                                              ; preds = %300
  %309 = load i32, i32* @BLIZZARD_COLOR_RGB565, align 4
  store i32 %309, i32* %34, align 4
  br label %310

310:                                              ; preds = %308, %302
  %311 = call i32 (...) @blizzard_wait_line_buffer()
  %312 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 1), align 4
  %313 = load i32, i32* @BLIZZARD_COLOR_YUV420, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = call i32 (...) @blizzard_wait_yyc()
  br label %317

317:                                              ; preds = %315, %310
  %318 = load i32, i32* %34, align 4
  store i32 %318, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 1), align 4
  %319 = load i32, i32* %35, align 4
  %320 = load i32, i32* @OMAPFB_FORMAT_FLAG_TEARSYNC, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %333

323:                                              ; preds = %317
  %324 = load i32, i32* %27, align 4
  %325 = load i32, i32* %17, align 4
  %326 = load i32, i32* %18, align 4
  %327 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 2), align 8
  %328 = load i32, i32* %22, align 4
  %329 = load i32, i32* %35, align 4
  %330 = load i32, i32* @OMAPFB_FORMAT_FLAG_FORCE_VSYNC, align 4
  %331 = and i32 %329, %330
  %332 = call i32 @enable_tearsync(i32 %324, i32 %325, i32 %326, i32 %327, i32 %328, i32 %331)
  br label %335

333:                                              ; preds = %317
  %334 = call i32 (...) @disable_tearsync()
  br label %335

335:                                              ; preds = %333, %323
  %336 = load i32, i32* %32, align 4
  %337 = load i32, i32* %30, align 4
  %338 = sub nsw i32 %336, %337
  %339 = load i32, i32* %28, align 4
  %340 = load i32, i32* %26, align 4
  %341 = sub nsw i32 %339, %340
  %342 = icmp ne i32 %338, %341
  br i1 %342, label %351, label %343

343:                                              ; preds = %335
  %344 = load i32, i32* %33, align 4
  %345 = load i32, i32* %31, align 4
  %346 = sub nsw i32 %344, %345
  %347 = load i32, i32* %29, align 4
  %348 = load i32, i32* %27, align 4
  %349 = sub nsw i32 %347, %348
  %350 = icmp ne i32 %346, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %343, %335
  store i32 1, i32* %37, align 4
  br label %352

352:                                              ; preds = %351, %343
  %353 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 3), align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %378

355:                                              ; preds = %352
  %356 = load i32, i32* %37, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %378, label %358

358:                                              ; preds = %355
  %359 = load i32, i32* %30, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %378

361:                                              ; preds = %358
  %362 = load i32, i32* %32, align 4
  %363 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 4), align 8
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %378

365:                                              ; preds = %361
  %366 = load i32, i32* %31, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %378

368:                                              ; preds = %365
  %369 = load i32, i32* %33, align 4
  %370 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 2), align 8
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %378

372:                                              ; preds = %368
  %373 = load i32, i32* %26, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %372
  %376 = load i32, i32* %27, align 4
  %377 = icmp eq i32 %376, 0
  br label %378

378:                                              ; preds = %375, %372, %368, %365, %361, %358, %355, %352
  %379 = phi i1 [ false, %372 ], [ false, %368 ], [ false, %365 ], [ false, %361 ], [ false, %358 ], [ false, %355 ], [ false, %352 ], [ %377, %375 ]
  %380 = zext i1 %379 to i32
  store i32 %380, i32* %36, align 4
  %381 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 3), align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %411

383:                                              ; preds = %378
  %384 = load i32, i32* %37, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %411, label %386

386:                                              ; preds = %383
  %387 = load i32, i32* %36, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %411, label %389

389:                                              ; preds = %386
  %390 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 5), align 4
  %391 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 6), align 8
  %392 = load i32, i32* %30, align 4
  %393 = load i32, i32* %32, align 4
  %394 = call i64 @check_1d_intersect(i32 %390, i32 %391, i32 %392, i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %411

396:                                              ; preds = %389
  %397 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 7), align 4
  %398 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 8), align 8
  %399 = load i32, i32* %31, align 4
  %400 = load i32, i32* %33, align 4
  %401 = call i64 @check_1d_intersect(i32 %397, i32 %398, i32 %399, i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %411

403:                                              ; preds = %396
  %404 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 4), align 8
  %405 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 2), align 8
  %406 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 4), align 8
  %407 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 2), align 8
  %408 = load i32, i32* @BLIZZARD_COLOR_RGB565, align 4
  %409 = load i32, i32* %35, align 4
  %410 = call i32 @set_window_regs(i32 0, i32 0, i32 %404, i32 %405, i32 0, i32 0, i32 %406, i32 %407, i32 %408, i32 1, i32 %409)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 3), align 4
  br label %411

411:                                              ; preds = %403, %396, %389, %386, %383, %378
  %412 = load i32, i32* %37, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %419

414:                                              ; preds = %411
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 3), align 4
  %415 = load i32, i32* %30, align 4
  store i32 %415, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 5), align 4
  %416 = load i32, i32* %32, align 4
  store i32 %416, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 6), align 8
  %417 = load i32, i32* %31, align 4
  store i32 %417, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 7), align 4
  %418 = load i32, i32* %33, align 4
  store i32 %418, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 8), align 8
  br label %419

419:                                              ; preds = %414, %411
  %420 = load i32, i32* %26, align 4
  %421 = load i32, i32* %27, align 4
  %422 = load i32, i32* %28, align 4
  %423 = load i32, i32* %29, align 4
  %424 = load i32, i32* %30, align 4
  %425 = load i32, i32* %31, align 4
  %426 = load i32, i32* %32, align 4
  %427 = load i32, i32* %33, align 4
  %428 = load i32, i32* %34, align 4
  %429 = load i32, i32* %36, align 4
  %430 = load i32, i32* %35, align 4
  %431 = call i32 @set_window_regs(i32 %420, i32 %421, i32 %422, i32 %423, i32 %424, i32 %425, i32 %426, i32 %427, i32 %428, i32 %429, i32 %430)
  %432 = load i32, i32* %36, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %419
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 3), align 4
  br label %435

435:                                              ; preds = %434, %419
  %436 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 9), align 8
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 1
  %438 = load i32 (i32)*, i32 (i32)** %437, align 8
  %439 = call i32 %438(i32 16)
  %440 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 9), align 8
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %440, i32 0, i32 0
  %442 = load i32 (i32, i32, i32, %struct.blizzard_request*)*, i32 (i32, i32, i32, %struct.blizzard_request*)** %441, align 8
  %443 = load i32, i32* %17, align 4
  %444 = load i32, i32* %18, align 4
  %445 = load i32, i32* @request_complete, align 4
  %446 = load %struct.blizzard_request*, %struct.blizzard_request** %13, align 8
  %447 = call i32 %442(i32 %443, i32 %444, i32 %445, %struct.blizzard_request* %446)
  %448 = load i32, i32* @REQ_PENDING, align 4
  ret i32 %448
}

declare dso_local i32 @blizzard_wait_line_buffer(...) #1

declare dso_local i32 @blizzard_wait_yyc(...) #1

declare dso_local i32 @enable_tearsync(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @disable_tearsync(...) #1

declare dso_local i64 @check_1d_intersect(i32, i32, i32, i32) #1

declare dso_local i32 @set_window_regs(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
