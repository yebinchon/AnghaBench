; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_merge_assigned_reloads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_merge_assigned_reloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i32 }

@n_reloads = common dso_local global i32 0, align 4
@MAX_RECOG_OPERANDS = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_2__* null, align 8
@RELOAD_OTHER = common dso_local global i64 0, align 8
@RELOAD_FOR_INPUT_ADDRESS = common dso_local global i64 0, align 8
@RELOAD_FOR_INPUT = common dso_local global i64 0, align 8
@RELOAD_FOR_OTHER_ADDRESS = common dso_local global i64 0, align 8
@RELOAD_FOR_OUTPUT = common dso_local global i64 0, align 8
@reload_spill_index = common dso_local global i32* null, align 8
@RELOAD_FOR_OUTPUT_ADDRESS = common dso_local global i64 0, align 8
@RELOAD_FOR_OPERAND_ADDRESS = common dso_local global i64 0, align 8
@RELOAD_FOR_INPADDR_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @merge_assigned_reloads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_assigned_reloads(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %530, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @n_reloads, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %533

13:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %14 = load i32, i32* @MAX_RECOG_OPERANDS, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %13
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RELOAD_OTHER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %57, label %31

31:                                               ; preds = %22
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @reg_set_p(i64 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47, %39, %31, %22, %13
  br label %530

58:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %222, %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @n_reloads, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %225

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %90, label %67

67:                                               ; preds = %63
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %67
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @reg_overlap_mentioned_p(i64 %81, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %75, %67, %63
  br label %222

91:                                               ; preds = %75
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RELOAD_FOR_INPUT_ADDRESS, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %91
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %109, %100, %91
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @rtx_equal_p(i64 %122, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %162

131:                                              ; preds = %116
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %162, label %139

139:                                              ; preds = %131
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %139
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @rtx_equal_p(i64 %153, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %221, label %162

162:                                              ; preds = %147, %139, %131, %116
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @RELOAD_FOR_INPUT, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %203, label %171

171:                                              ; preds = %162
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %173 = load i32, i32* %3, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @RELOAD_FOR_INPUT_ADDRESS, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %194, label %180

180:                                              ; preds = %171
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = icmp sgt i32 %186, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %180, %171
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @RELOAD_FOR_OTHER_ADDRESS, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %194, %162
  br label %225

204:                                              ; preds = %194, %180
  store i32 1, i32* %5, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = icmp sgt i32 %205, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %204
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %215 = load i32, i32* %4, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %213, %204
  br label %221

221:                                              ; preds = %220, %147
  br label %222

222:                                              ; preds = %221, %90
  %223 = load i32, i32* %4, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %4, align 4
  br label %59

225:                                              ; preds = %203, %59
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* @n_reloads, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %529

229:                                              ; preds = %225
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp sle i32 %230, %231
  br i1 %232, label %233, label %529

233:                                              ; preds = %229
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @RELOAD_FOR_OUTPUT, align 8
  %241 = icmp ne i64 %239, %240
  %242 = zext i1 %241 to i32
  %243 = call i32 @gcc_assert(i32 %242)
  store i32 0, i32* %4, align 4
  br label %244

244:                                              ; preds = %316, %233
  %245 = load i32, i32* %4, align 4
  %246 = load i32, i32* @n_reloads, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %319

248:                                              ; preds = %244
  %249 = load i32, i32* %3, align 4
  %250 = load i32, i32* %4, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %315

252:                                              ; preds = %248
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %315

260:                                              ; preds = %252
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %262 = load i32, i32* %3, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %268 = load i32, i32* %4, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = call i64 @rtx_equal_p(i64 %266, i64 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %315

275:                                              ; preds = %260
  %276 = load i32, i32* %5, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %296

278:                                              ; preds = %275
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @RELOAD_FOR_INPUT_ADDRESS, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %296, label %287

287:                                              ; preds = %278
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %289 = load i32, i32* %4, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @RELOAD_FOR_OTHER_ADDRESS, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %315

296:                                              ; preds = %287, %278, %275
  %297 = load i64, i64* @RELOAD_OTHER, align 8
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %299 = load i32, i32* %3, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 1
  store i64 %297, i64* %302, align 8
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %304 = load i32, i32* %4, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 0
  store i64 0, i64* %307, align 8
  %308 = load i32*, i32** @reload_spill_index, align 8
  %309 = load i32, i32* %4, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 -1, i32* %311, align 4
  %312 = load i32, i32* %3, align 4
  %313 = load i32, i32* %4, align 4
  %314 = call i32 @transfer_replacements(i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %296, %287, %260, %252, %248
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %4, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %4, align 4
  br label %244

319:                                              ; preds = %244
  %320 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %321 = load i32, i32* %3, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @RELOAD_OTHER, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %528

328:                                              ; preds = %319
  store i32 0, i32* %4, align 4
  br label %329

329:                                              ; preds = %524, %328
  %330 = load i32, i32* %4, align 4
  %331 = load i32, i32* @n_reloads, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %527

333:                                              ; preds = %329
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %335 = load i32, i32* %4, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %523

341:                                              ; preds = %333
  %342 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %343 = load i32, i32* %4, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @RELOAD_OTHER, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %350, label %523

350:                                              ; preds = %341
  %351 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %352 = load i32, i32* %4, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @RELOAD_FOR_OTHER_ADDRESS, align 8
  %358 = icmp ne i64 %356, %357
  br i1 %358, label %359, label %523

359:                                              ; preds = %350
  %360 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %361 = load i32, i32* %4, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @RELOAD_FOR_OUTPUT_ADDRESS, align 8
  %367 = icmp ne i64 %365, %366
  br i1 %367, label %368, label %523

368:                                              ; preds = %359
  %369 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %370 = load i32, i32* %4, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @RELOAD_FOR_OPERAND_ADDRESS, align 8
  %376 = icmp ne i64 %374, %375
  br i1 %376, label %377, label %523

377:                                              ; preds = %368
  %378 = load i32, i32* %5, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %398

380:                                              ; preds = %377
  %381 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %382 = load i32, i32* %4, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @RELOAD_FOR_INPUT_ADDRESS, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %398, label %389

389:                                              ; preds = %380
  %390 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %391 = load i32, i32* %4, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @RELOAD_FOR_INPADDR_ADDRESS, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %523

398:                                              ; preds = %389, %380, %377
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %400 = load i32, i32* %4, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %406 = load i32, i32* %3, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = call i64 @reg_overlap_mentioned_for_reload_p(i64 %404, i64 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %523

413:                                              ; preds = %398
  %414 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %415 = load i32, i32* %4, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @RELOAD_FOR_INPUT_ADDRESS, align 8
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %431, label %422

422:                                              ; preds = %413
  %423 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %424 = load i32, i32* %4, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @RELOAD_FOR_INPADDR_ADDRESS, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %433

431:                                              ; preds = %422, %413
  %432 = load i64, i64* @RELOAD_FOR_OTHER_ADDRESS, align 8
  br label %435

433:                                              ; preds = %422
  %434 = load i64, i64* @RELOAD_OTHER, align 8
  br label %435

435:                                              ; preds = %433, %431
  %436 = phi i64 [ %432, %431 ], [ %434, %433 ]
  %437 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %438 = load i32, i32* %4, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %440, i32 0, i32 1
  store i64 %436, i64* %441, align 8
  %442 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %443 = load i32, i32* %4, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %445, i32 0, i32 3
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %522

449:                                              ; preds = %435
  store i32 0, i32* %8, align 4
  br label %450

450:                                              ; preds = %518, %449
  %451 = load i32, i32* %8, align 4
  %452 = load i32, i32* %4, align 4
  %453 = icmp slt i32 %451, %452
  br i1 %453, label %454, label %521

454:                                              ; preds = %450
  %455 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %456 = load i32, i32* %8, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %455, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %514, label %462

462:                                              ; preds = %454
  %463 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %464 = load i32, i32* %8, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %463, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %466, i32 0, i32 3
  %468 = load i64, i64* %467, align 8
  %469 = icmp eq i64 %468, 0
  br i1 %469, label %514, label %470

470:                                              ; preds = %462
  %471 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %472 = load i32, i32* %8, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %474, i32 0, i32 1
  %476 = load i64, i64* %475, align 8
  %477 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %478 = load i32, i32* %4, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %476, %482
  br i1 %483, label %514, label %484

484:                                              ; preds = %470
  %485 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %486 = load i32, i32* %8, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %485, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %488, i32 0, i32 3
  %490 = load i64, i64* %489, align 8
  %491 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %492 = load i32, i32* %4, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %491, i64 %493
  %495 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %494, i32 0, i32 3
  %496 = load i64, i64* %495, align 8
  %497 = call i64 @rtx_equal_p(i64 %490, i64 %496)
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %514

499:                                              ; preds = %484
  %500 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %501 = load i32, i32* %8, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %500, i64 %502
  %504 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %507 = load i32, i32* %4, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %506, i64 %508
  %510 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = call i64 @rtx_equal_p(i64 %505, i64 %511)
  %513 = icmp ne i64 %512, 0
  br label %514

514:                                              ; preds = %499, %484, %470, %462, %454
  %515 = phi i1 [ true, %484 ], [ true, %470 ], [ true, %462 ], [ true, %454 ], [ %513, %499 ]
  %516 = zext i1 %515 to i32
  %517 = call i32 @gcc_assert(i32 %516)
  br label %518

518:                                              ; preds = %514
  %519 = load i32, i32* %8, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %8, align 4
  br label %450

521:                                              ; preds = %450
  br label %522

522:                                              ; preds = %521, %435
  br label %523

523:                                              ; preds = %522, %398, %389, %368, %359, %350, %341, %333
  br label %524

524:                                              ; preds = %523
  %525 = load i32, i32* %4, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %4, align 4
  br label %329

527:                                              ; preds = %329
  br label %528

528:                                              ; preds = %527, %319
  br label %529

529:                                              ; preds = %528, %229, %225
  br label %530

530:                                              ; preds = %529, %57
  %531 = load i32, i32* %3, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %3, align 4
  br label %9

533:                                              ; preds = %9
  ret void
}

declare dso_local i64 @reg_set_p(i64, i32) #1

declare dso_local i32 @reg_overlap_mentioned_p(i64, i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @transfer_replacements(i32, i32) #1

declare dso_local i64 @reg_overlap_mentioned_for_reload_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
