; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_do_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_do_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i64*, i64*, i64*, i64*, i64* }
%struct.timespec = type { i32, i32 }
%struct.poll_wqueues = type { i32, i32 }
%struct.file_operations = type { i64 (%struct.file*, i32*)* }
%struct.file = type opaque
%struct.file.0 = type { %struct.file_operations* }

@__NFDBITS = common dso_local global i32 0, align 4
@DEFAULT_POLLMASK = common dso_local global i64 0, align 8
@POLLIN_SET = common dso_local global i64 0, align 8
@POLLOUT_SET = common dso_local global i64 0, align 8
@POLLEX_SET = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_select(i32 %0, %struct.TYPE_4__* %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.poll_wqueues, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.file_operations*, align 8
  %33 = alloca %struct.file.0*, align 8
  %34 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = call i32 @max_select_fd(i32 %36, %struct.TYPE_4__* %37)
  store i32 %38, i32* %12, align 4
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %289

44:                                               ; preds = %3
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  %46 = call i32 @poll_initwait(%struct.poll_wqueues* %10)
  %47 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %10, i32 0, i32 1
  store i32* %47, i32** %11, align 8
  %48 = load %struct.timespec*, %struct.timespec** %7, align 8
  %49 = icmp ne %struct.timespec* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.timespec*, %struct.timespec** %7, align 8
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.timespec*, %struct.timespec** %7, align 8
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32* null, i32** %11, align 8
  store i32 1, i32* %14, align 4
  br label %61

61:                                               ; preds = %60, %55, %50, %44
  %62 = load %struct.timespec*, %struct.timespec** %7, align 8
  %63 = icmp ne %struct.timespec* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load %struct.timespec*, %struct.timespec** %7, align 8
  %69 = call i64 @select_estimate_accuracy(%struct.timespec* %68)
  store i64 %69, i64* %15, align 8
  br label %70

70:                                               ; preds = %67, %64, %61
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %285, %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %19, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  store i64* %77, i64** %20, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  store i64* %80, i64** %21, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  store i64* %83, i64** %16, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load i64*, i64** %85, align 8
  store i64* %86, i64** %17, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 5
  %89 = load i64*, i64** %88, align 8
  store i64* %89, i64** %18, align 8
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %242, %71
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %249

94:                                               ; preds = %90
  store i64 1, i64* %26, align 8
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  store i64 0, i64* %31, align 8
  store %struct.file_operations* null, %struct.file_operations** %32, align 8
  store %struct.file.0* null, %struct.file.0** %33, align 8
  %95 = load i64*, i64** %19, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %19, align 8
  %97 = load i64, i64* %95, align 8
  store i64 %97, i64* %22, align 8
  %98 = load i64*, i64** %20, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %20, align 8
  %100 = load i64, i64* %98, align 8
  store i64 %100, i64* %23, align 8
  %101 = load i64*, i64** %21, align 8
  %102 = getelementptr inbounds i64, i64* %101, i32 1
  store i64* %102, i64** %21, align 8
  %103 = load i64, i64* %101, align 8
  store i64 %103, i64* %24, align 8
  %104 = load i64, i64* %22, align 8
  %105 = load i64, i64* %23, align 8
  %106 = or i64 %104, %105
  %107 = load i64, i64* %24, align 8
  %108 = or i64 %106, %107
  store i64 %108, i64* %25, align 8
  %109 = load i64, i64* %25, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %94
  %112 = load i32, i32* @__NFDBITS, align 4
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %13, align 4
  br label %242

115:                                              ; preds = %94
  store i64 0, i64* %28, align 8
  br label %116

116:                                              ; preds = %215, %115
  %117 = load i64, i64* %28, align 8
  %118 = load i32, i32* @__NFDBITS, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ult i64 %117, %119
  br i1 %120, label %121, label %222

121:                                              ; preds = %116
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %222

126:                                              ; preds = %121
  %127 = load i64, i64* %26, align 8
  %128 = load i64, i64* %25, align 8
  %129 = and i64 %127, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  br label %215

132:                                              ; preds = %126
  %133 = load i32, i32* %13, align 4
  %134 = call %struct.file.0* @fget_light(i32 %133, i32* %34)
  store %struct.file.0* %134, %struct.file.0** %33, align 8
  %135 = load %struct.file.0*, %struct.file.0** %33, align 8
  %136 = icmp ne %struct.file.0* %135, null
  br i1 %136, label %137, label %214

137:                                              ; preds = %132
  %138 = load %struct.file.0*, %struct.file.0** %33, align 8
  %139 = getelementptr inbounds %struct.file.0, %struct.file.0* %138, i32 0, i32 0
  %140 = load %struct.file_operations*, %struct.file_operations** %139, align 8
  store %struct.file_operations* %140, %struct.file_operations** %32, align 8
  %141 = load i64, i64* @DEFAULT_POLLMASK, align 8
  store i64 %141, i64* %27, align 8
  %142 = load %struct.file_operations*, %struct.file_operations** %32, align 8
  %143 = icmp ne %struct.file_operations* %142, null
  br i1 %143, label %144, label %162

144:                                              ; preds = %137
  %145 = load %struct.file_operations*, %struct.file_operations** %32, align 8
  %146 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %145, i32 0, i32 0
  %147 = load i64 (%struct.file*, i32*)*, i64 (%struct.file*, i32*)** %146, align 8
  %148 = icmp ne i64 (%struct.file*, i32*)* %147, null
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = load i32*, i32** %11, align 8
  %151 = load i64, i64* %22, align 8
  %152 = load i64, i64* %23, align 8
  %153 = load i64, i64* %26, align 8
  %154 = call i32 @wait_key_set(i32* %150, i64 %151, i64 %152, i64 %153)
  %155 = load %struct.file_operations*, %struct.file_operations** %32, align 8
  %156 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %155, i32 0, i32 0
  %157 = load i64 (%struct.file*, i32*)*, i64 (%struct.file*, i32*)** %156, align 8
  %158 = load %struct.file.0*, %struct.file.0** %33, align 8
  %159 = bitcast %struct.file.0* %158 to %struct.file*
  %160 = load i32*, i32** %11, align 8
  %161 = call i64 %157(%struct.file* %159, i32* %160)
  store i64 %161, i64* %27, align 8
  br label %162

162:                                              ; preds = %149, %144, %137
  %163 = load %struct.file.0*, %struct.file.0** %33, align 8
  %164 = load i32, i32* %34, align 4
  %165 = call i32 @fput_light(%struct.file.0* %163, i32 %164)
  %166 = load i64, i64* %27, align 8
  %167 = load i64, i64* @POLLIN_SET, align 8
  %168 = and i64 %166, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %162
  %171 = load i64, i64* %22, align 8
  %172 = load i64, i64* %26, align 8
  %173 = and i64 %171, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i64, i64* %26, align 8
  %177 = load i64, i64* %29, align 8
  %178 = or i64 %177, %176
  store i64 %178, i64* %29, align 8
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  store i32* null, i32** %11, align 8
  br label %181

181:                                              ; preds = %175, %170, %162
  %182 = load i64, i64* %27, align 8
  %183 = load i64, i64* @POLLOUT_SET, align 8
  %184 = and i64 %182, %183
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %181
  %187 = load i64, i64* %23, align 8
  %188 = load i64, i64* %26, align 8
  %189 = and i64 %187, %188
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load i64, i64* %26, align 8
  %193 = load i64, i64* %30, align 8
  %194 = or i64 %193, %192
  store i64 %194, i64* %30, align 8
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %12, align 4
  store i32* null, i32** %11, align 8
  br label %197

197:                                              ; preds = %191, %186, %181
  %198 = load i64, i64* %27, align 8
  %199 = load i64, i64* @POLLEX_SET, align 8
  %200 = and i64 %198, %199
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %197
  %203 = load i64, i64* %24, align 8
  %204 = load i64, i64* %26, align 8
  %205 = and i64 %203, %204
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = load i64, i64* %26, align 8
  %209 = load i64, i64* %31, align 8
  %210 = or i64 %209, %208
  store i64 %210, i64* %31, align 8
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %12, align 4
  store i32* null, i32** %11, align 8
  br label %213

213:                                              ; preds = %207, %202, %197
  br label %214

214:                                              ; preds = %213, %132
  br label %215

215:                                              ; preds = %214, %131
  %216 = load i64, i64* %28, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %28, align 8
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %13, align 4
  %220 = load i64, i64* %26, align 8
  %221 = shl i64 %220, 1
  store i64 %221, i64* %26, align 8
  br label %116

222:                                              ; preds = %125, %116
  %223 = load i64, i64* %29, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i64, i64* %29, align 8
  %227 = load i64*, i64** %16, align 8
  store i64 %226, i64* %227, align 8
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i64, i64* %30, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i64, i64* %30, align 8
  %233 = load i64*, i64** %17, align 8
  store i64 %232, i64* %233, align 8
  br label %234

234:                                              ; preds = %231, %228
  %235 = load i64, i64* %31, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i64, i64* %31, align 8
  %239 = load i64*, i64** %18, align 8
  store i64 %238, i64* %239, align 8
  br label %240

240:                                              ; preds = %237, %234
  %241 = call i32 (...) @cond_resched()
  br label %242

242:                                              ; preds = %240, %111
  %243 = load i64*, i64** %16, align 8
  %244 = getelementptr inbounds i64, i64* %243, i32 1
  store i64* %244, i64** %16, align 8
  %245 = load i64*, i64** %17, align 8
  %246 = getelementptr inbounds i64, i64* %245, i32 1
  store i64* %246, i64** %17, align 8
  %247 = load i64*, i64** %18, align 8
  %248 = getelementptr inbounds i64, i64* %247, i32 1
  store i64* %248, i64** %18, align 8
  br label %90

249:                                              ; preds = %90
  store i32* null, i32** %11, align 8
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %249
  %253 = load i32, i32* %14, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %252
  %256 = load i32, i32* @current, align 4
  %257 = call i64 @signal_pending(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %255, %252, %249
  br label %286

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %10, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %10, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %12, align 4
  br label %286

267:                                              ; preds = %260
  %268 = load %struct.timespec*, %struct.timespec** %7, align 8
  %269 = icmp ne %struct.timespec* %268, null
  br i1 %269, label %270, label %278

270:                                              ; preds = %267
  %271 = load i32*, i32** %9, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %278, label %273

273:                                              ; preds = %270
  %274 = load %struct.timespec*, %struct.timespec** %7, align 8
  %275 = bitcast %struct.timespec* %274 to i64*
  %276 = load i64, i64* %275, align 4
  %277 = call i32 @timespec_to_ktime(i64 %276)
  store i32 %277, i32* %8, align 4
  store i32* %8, i32** %9, align 8
  br label %278

278:                                              ; preds = %273, %270, %267
  %279 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %280 = load i32*, i32** %9, align 8
  %281 = load i64, i64* %15, align 8
  %282 = call i32 @poll_schedule_timeout(%struct.poll_wqueues* %10, i32 %279, i32* %280, i64 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %278
  store i32 1, i32* %14, align 4
  br label %285

285:                                              ; preds = %284, %278
  br label %71

286:                                              ; preds = %264, %259
  %287 = call i32 @poll_freewait(%struct.poll_wqueues* %10)
  %288 = load i32, i32* %12, align 4
  store i32 %288, i32* %4, align 4
  br label %289

289:                                              ; preds = %286, %42
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @max_select_fd(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @poll_initwait(%struct.poll_wqueues*) #1

declare dso_local i64 @select_estimate_accuracy(%struct.timespec*) #1

declare dso_local %struct.file.0* @fget_light(i32, i32*) #1

declare dso_local i32 @wait_key_set(i32*, i64, i64, i64) #1

declare dso_local i32 @fput_light(%struct.file.0*, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @timespec_to_ktime(i64) #1

declare dso_local i32 @poll_schedule_timeout(%struct.poll_wqueues*, i32, i32*, i64) #1

declare dso_local i32 @poll_freewait(%struct.poll_wqueues*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
