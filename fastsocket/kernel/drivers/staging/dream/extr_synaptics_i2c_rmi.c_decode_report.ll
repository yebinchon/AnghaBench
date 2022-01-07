; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_synaptics_i2c_rmi.c_decode_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_synaptics_i2c_rmi.c_decode_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synaptics_ts_data = type { i32, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@SYNAPTICS_FLIP_X = common dso_local global i32 0, align 4
@SYNAPTICS_SNAP_TO_INACTIVE_EDGE = common dso_local global i32 0, align 4
@SYNAPTICS_SWAP_XY = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synaptics_ts_data*, i32*)* @decode_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_report(%struct.synaptics_ts_data* %0, i32* %1) #0 {
  %3 = alloca %struct.synaptics_ts_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x [2 x i32]], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.synaptics_ts_data* %0, %struct.synaptics_ts_data** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 2, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 4
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 7
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %231, %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %234

29:                                               ; preds = %26
  %30 = load i32, i32* @SYNAPTICS_FLIP_X, align 4
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %206, %29
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %209

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 31
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %14, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %14, align 4
  %50 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %51 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %34
  %57 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %58 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %56, %34
  %67 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %68 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SYNAPTICS_SNAP_TO_INACTIVE_EDGE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %194

73:                                               ; preds = %66
  %74 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %75 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %135

86:                                               ; preds = %73
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %89 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %87, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %86
  %97 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %98 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %14, align 4
  br label %134

104:                                              ; preds = %86
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %107 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %105, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %104
  %115 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %116 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %14, align 4
  br label %133

122:                                              ; preds = %104
  %123 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %124 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %123, i32 0, i32 2
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 0, i32* %132, align 4
  br label %133

133:                                              ; preds = %122, %114
  br label %134

134:                                              ; preds = %133, %96
  br label %193

135:                                              ; preds = %73
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %138 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %137, i32 0, i32 7
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp sle i32 %136, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %135
  %146 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %147 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %14, align 4
  %153 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %154 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %153, i32 0, i32 2
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 1, i32* %162, align 4
  br label %192

163:                                              ; preds = %135
  %164 = load i32, i32* %14, align 4
  %165 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %166 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %165, i32 0, i32 8
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp sge i32 %164, %171
  br i1 %172, label %173, label %191

173:                                              ; preds = %163
  %174 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %175 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %174, i32 0, i32 6
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %14, align 4
  %181 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %182 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %181, i32 0, i32 2
  %183 = load i32**, i32*** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  store i32 1, i32* %190, align 4
  br label %191

191:                                              ; preds = %173, %163
  br label %192

192:                                              ; preds = %191, %145
  br label %193

193:                                              ; preds = %192, %134
  br label %194

194:                                              ; preds = %193, %66
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 %197
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %198, i64 0, i64 %200
  store i32 %195, i32* %201, align 4
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 2
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %13, align 4
  %205 = shl i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %206

206:                                              ; preds = %194
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %31

209:                                              ; preds = %31
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 2
  store i32 %211, i32* %8, align 4
  %212 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %213 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @SYNAPTICS_SWAP_XY, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %209
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 %220
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %221, i64 0, i64 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 %225
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %226, i64 0, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @swap(i32 %223, i32 %228)
  br label %230

230:                                              ; preds = %218, %209
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %6, align 4
  br label %26

234:                                              ; preds = %26
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %254

237:                                              ; preds = %234
  %238 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %239 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @ABS_X, align 4
  %242 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 0
  %243 = getelementptr inbounds [2 x i32], [2 x i32]* %242, i64 0, i64 0
  %244 = load i32, i32* %243, align 16
  %245 = call i32 @input_report_abs(i32 %240, i32 %241, i32 %244)
  %246 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %247 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %246, i32 0, i32 9
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @ABS_Y, align 4
  %250 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 0
  %251 = getelementptr inbounds [2 x i32], [2 x i32]* %250, i64 0, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @input_report_abs(i32 %248, i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %237, %234
  %255 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %256 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %255, i32 0, i32 9
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @ABS_PRESSURE, align 4
  %259 = load i32, i32* %9, align 4
  %260 = call i32 @input_report_abs(i32 %257, i32 %258, i32 %259)
  %261 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %262 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %261, i32 0, i32 9
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @input_report_abs(i32 %263, i32 %264, i32 %265)
  %267 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %268 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %267, i32 0, i32 9
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @BTN_TOUCH, align 4
  %271 = load i32, i32* %11, align 4
  %272 = call i32 @input_report_key(i32 %269, i32 %270, i32 %271)
  %273 = load i32, i32* %11, align 4
  %274 = icmp sgt i32 %273, 1
  br i1 %274, label %275, label %278

275:                                              ; preds = %254
  %276 = load i32, i32* %11, align 4
  %277 = icmp ne i32 %276, 7
  br label %278

278:                                              ; preds = %275, %254
  %279 = phi i1 [ false, %254 ], [ %277, %275 ]
  %280 = zext i1 %279 to i32
  store i32 %280, i32* %12, align 4
  %281 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %282 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @BTN_2, align 4
  %285 = load i32, i32* %12, align 4
  %286 = call i32 @input_report_key(i32 %283, i32 %284, i32 %285)
  %287 = load i32, i32* %12, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %306

289:                                              ; preds = %278
  %290 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %291 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %290, i32 0, i32 9
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @ABS_HAT0X, align 4
  %294 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 1
  %295 = getelementptr inbounds [2 x i32], [2 x i32]* %294, i64 0, i64 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @input_report_abs(i32 %292, i32 %293, i32 %296)
  %298 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %299 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @ABS_HAT0Y, align 4
  %302 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %5, i64 0, i64 1
  %303 = getelementptr inbounds [2 x i32], [2 x i32]* %302, i64 0, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @input_report_abs(i32 %300, i32 %301, i32 %304)
  br label %306

306:                                              ; preds = %289, %278
  %307 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %3, align 8
  %308 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %307, i32 0, i32 9
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @input_sync(i32 %309)
  ret void
}

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
