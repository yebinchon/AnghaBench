; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.task_struct = type { i32 }
%struct.perf_event = type { i32, i32, i32, %struct.perf_event_attr, %struct.perf_event*, i64, %struct.hw_perf_event, i32, i8*, i64, i32, i32*, %struct.perf_event*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hw_perf_event = type { i32, i32, i32 }
%struct.pmu = type { i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@perf_pending_event = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@perf_event_id = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_INACTIVE = common dso_local global i32 0, align 4
@PERF_ATTACH_TASK = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_OFF = common dso_local global i32 0, align 4
@PERF_FORMAT_GROUP = common dso_local global i32 0, align 4
@perf_sched_events = common dso_local global i32 0, align 4
@nr_mmap_events = common dso_local global i32 0, align 4
@nr_comm_events = common dso_local global i32 0, align 4
@nr_task_events = common dso_local global i32 0, align 4
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event* (%struct.perf_event_attr*, i32, %struct.task_struct*, %struct.perf_event*, %struct.perf_event*, i64, i8*)* @perf_event_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event* @perf_event_alloc(%struct.perf_event_attr* %0, i32 %1, %struct.task_struct* %2, %struct.perf_event* %3, %struct.perf_event* %4, i64 %5, i8* %6) #0 {
  %8 = alloca %struct.perf_event*, align 8
  %9 = alloca %struct.perf_event_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.task_struct*, align 8
  %12 = alloca %struct.perf_event*, align 8
  %13 = alloca %struct.perf_event*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.pmu*, align 8
  %17 = alloca %struct.perf_event*, align 8
  %18 = alloca %struct.hw_perf_event*, align 8
  %19 = alloca i64, align 8
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.task_struct* %2, %struct.task_struct** %11, align 8
  store %struct.perf_event* %3, %struct.perf_event** %12, align 8
  store %struct.perf_event* %4, %struct.perf_event** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @nr_cpu_ids, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %7
  %24 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %25 = icmp ne %struct.task_struct* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %23
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub nsw i64 0, %30
  %32 = call %struct.perf_event* @ERR_PTR(i64 %31)
  store %struct.perf_event* %32, %struct.perf_event** %8, align 8
  br label %287

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %7
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.perf_event* @kzalloc(i32 208, i32 %35)
  store %struct.perf_event* %36, %struct.perf_event** %17, align 8
  %37 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %38 = icmp ne %struct.perf_event* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* @ENOMEM, align 8
  %41 = sub nsw i64 0, %40
  %42 = call %struct.perf_event* @ERR_PTR(i64 %41)
  store %struct.perf_event* %42, %struct.perf_event** %8, align 8
  br label %287

43:                                               ; preds = %34
  %44 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %45 = icmp ne %struct.perf_event* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  store %struct.perf_event* %47, %struct.perf_event** %12, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 22
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %53 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %52, i32 0, i32 21
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 20
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %59 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %58, i32 0, i32 19
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %62 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %61, i32 0, i32 18
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 17
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %68 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %67, i32 0, i32 16
  %69 = call i32 @init_waitqueue_head(i32* %68)
  %70 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %71 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %70, i32 0, i32 15
  %72 = load i32, i32* @perf_pending_event, align 4
  %73 = call i32 @init_irq_work(i32* %71, i32 %72)
  %74 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %75 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %74, i32 0, i32 14
  %76 = call i32 @mutex_init(i32* %75)
  %77 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %78 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %77, i32 0, i32 13
  %79 = call i32 @atomic_long_set(i32* %78, i32 1)
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %82 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %84 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %83, i32 0, i32 3
  %85 = load %struct.perf_event_attr*, %struct.perf_event_attr** %9, align 8
  %86 = bitcast %struct.perf_event_attr* %84 to i8*
  %87 = bitcast %struct.perf_event_attr* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 80, i1 false)
  %88 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %89 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %90 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %89, i32 0, i32 12
  store %struct.perf_event* %88, %struct.perf_event** %90, align 8
  %91 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %92 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %91, i32 0, i32 11
  store i32* null, i32** %92, align 8
  %93 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %94 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %93, i32 0, i32 1
  store i32 -1, i32* %94, align 4
  %95 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %96 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %97 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %96, i32 0, i32 4
  store %struct.perf_event* %95, %struct.perf_event** %97, align 8
  %98 = load i32, i32* @current, align 4
  %99 = call i32 @task_active_pid_ns(i32 %98)
  %100 = call i64 @get_pid_ns(i32 %99)
  %101 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %102 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %101, i32 0, i32 5
  store i64 %100, i64* %102, align 8
  %103 = call i32 @atomic64_inc_return(i32* @perf_event_id)
  %104 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %105 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @PERF_EVENT_STATE_INACTIVE, align 4
  %107 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %108 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  %109 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %110 = icmp ne %struct.task_struct* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %48
  %112 = load i32, i32* @PERF_ATTACH_TASK, align 4
  %113 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %114 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %48
  %116 = load i64, i64* %14, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %115
  %119 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %120 = icmp ne %struct.perf_event* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %123 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %122, i32 0, i32 9
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %14, align 8
  %125 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %126 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %125, i32 0, i32 8
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %15, align 8
  br label %128

128:                                              ; preds = %121, %118, %115
  %129 = load i64, i64* %14, align 8
  %130 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %131 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %130, i32 0, i32 9
  store i64 %129, i64* %131, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %134 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %133, i32 0, i32 8
  store i8* %132, i8** %134, align 8
  %135 = load %struct.perf_event_attr*, %struct.perf_event_attr** %9, align 8
  %136 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %135, i32 0, i32 10
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %128
  %140 = load i32, i32* @PERF_EVENT_STATE_OFF, align 4
  %141 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %142 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %128
  store %struct.pmu* null, %struct.pmu** %16, align 8
  %144 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %145 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %144, i32 0, i32 6
  store %struct.hw_perf_event* %145, %struct.hw_perf_event** %18, align 8
  %146 = load %struct.perf_event_attr*, %struct.perf_event_attr** %9, align 8
  %147 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.hw_perf_event*, %struct.hw_perf_event** %18, align 8
  %150 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load %struct.perf_event_attr*, %struct.perf_event_attr** %9, align 8
  %152 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %151, i32 0, i32 9
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %143
  %156 = load %struct.perf_event_attr*, %struct.perf_event_attr** %9, align 8
  %157 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %156, i32 0, i32 8
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.hw_perf_event*, %struct.hw_perf_event** %18, align 8
  %162 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %161, i32 0, i32 0
  store i32 1, i32* %162, align 4
  br label %163

163:                                              ; preds = %160, %155, %143
  %164 = load %struct.hw_perf_event*, %struct.hw_perf_event** %18, align 8
  %165 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.hw_perf_event*, %struct.hw_perf_event** %18, align 8
  %168 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.hw_perf_event*, %struct.hw_perf_event** %18, align 8
  %170 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %169, i32 0, i32 2
  %171 = load %struct.hw_perf_event*, %struct.hw_perf_event** %18, align 8
  %172 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @local64_set(i32* %170, i32 %173)
  %175 = load %struct.perf_event_attr*, %struct.perf_event_attr** %9, align 8
  %176 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %163
  %180 = load %struct.perf_event_attr*, %struct.perf_event_attr** %9, align 8
  %181 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %190

187:                                              ; preds = %179, %163
  %188 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %189 = call %struct.pmu* @perf_init_event(%struct.perf_event* %188)
  store %struct.pmu* %189, %struct.pmu** %16, align 8
  br label %190

190:                                              ; preds = %187, %186
  store i64 0, i64* %19, align 8
  %191 = load %struct.pmu*, %struct.pmu** %16, align 8
  %192 = icmp ne %struct.pmu* %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load i64, i64* @EINVAL, align 8
  %195 = sub nsw i64 0, %194
  store i64 %195, i64* %19, align 8
  br label %204

196:                                              ; preds = %190
  %197 = load %struct.pmu*, %struct.pmu** %16, align 8
  %198 = call i64 @IS_ERR(%struct.pmu* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load %struct.pmu*, %struct.pmu** %16, align 8
  %202 = call i64 @PTR_ERR(%struct.pmu* %201)
  store i64 %202, i64* %19, align 8
  br label %203

203:                                              ; preds = %200, %196
  br label %204

204:                                              ; preds = %203, %193
  %205 = load i64, i64* %19, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %222

207:                                              ; preds = %204
  %208 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %209 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %214 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @put_pid_ns(i64 %215)
  br label %217

217:                                              ; preds = %212, %207
  %218 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %219 = call i32 @kfree(%struct.perf_event* %218)
  %220 = load i64, i64* %19, align 8
  %221 = call %struct.perf_event* @ERR_PTR(i64 %220)
  store %struct.perf_event* %221, %struct.perf_event** %8, align 8
  br label %287

222:                                              ; preds = %204
  %223 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %224 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %223, i32 0, i32 4
  %225 = load %struct.perf_event*, %struct.perf_event** %224, align 8
  %226 = icmp ne %struct.perf_event* %225, null
  br i1 %226, label %285, label %227

227:                                              ; preds = %222
  %228 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %229 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @PERF_ATTACH_TASK, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = call i32 @atomic_inc(i32* @perf_sched_events)
  br label %236

236:                                              ; preds = %234, %227
  %237 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %238 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %238, i32 0, i32 6
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %236
  %243 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %244 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %244, i32 0, i32 5
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %242, %236
  %249 = call i32 @atomic_inc(i32* @nr_mmap_events)
  br label %250

250:                                              ; preds = %248, %242
  %251 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %252 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %250
  %257 = call i32 @atomic_inc(i32* @nr_comm_events)
  br label %258

258:                                              ; preds = %256, %250
  %259 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %260 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = call i32 @atomic_inc(i32* @nr_task_events)
  br label %266

266:                                              ; preds = %264, %258
  %267 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %268 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = call i64 (...) @get_callchain_buffers()
  store i64 %275, i64* %19, align 8
  %276 = load i64, i64* %19, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %274
  %279 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %280 = call i32 @free_event(%struct.perf_event* %279)
  %281 = load i64, i64* %19, align 8
  %282 = call %struct.perf_event* @ERR_PTR(i64 %281)
  store %struct.perf_event* %282, %struct.perf_event** %8, align 8
  br label %287

283:                                              ; preds = %274
  br label %284

284:                                              ; preds = %283, %266
  br label %285

285:                                              ; preds = %284, %222
  %286 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  store %struct.perf_event* %286, %struct.perf_event** %8, align 8
  br label %287

287:                                              ; preds = %285, %278, %217, %39, %29
  %288 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  ret %struct.perf_event* %288
}

declare dso_local %struct.perf_event* @ERR_PTR(i64) #1

declare dso_local %struct.perf_event* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @get_pid_ns(i32) #1

declare dso_local i32 @task_active_pid_ns(i32) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local %struct.pmu* @perf_init_event(%struct.perf_event*) #1

declare dso_local i64 @IS_ERR(%struct.pmu*) #1

declare dso_local i64 @PTR_ERR(%struct.pmu*) #1

declare dso_local i32 @put_pid_ns(i64) #1

declare dso_local i32 @kfree(%struct.perf_event*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @get_callchain_buffers(...) #1

declare dso_local i32 @free_event(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
