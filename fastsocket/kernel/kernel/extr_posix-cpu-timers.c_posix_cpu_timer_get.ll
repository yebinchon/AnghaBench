; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_posix_cpu_timer_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_posix_cpu_timer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.cpu_time_count, %union.cpu_time_count, %struct.task_struct* }
%union.cpu_time_count = type { i64 }
%struct.task_struct = type { i32, i32* }
%struct.itimerspec = type { %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@tasklist_lock = common dso_local global i32 0, align 4
@SIGEV_THREAD_ID = common dso_local global i32 0, align 4
@SIGEV_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*, %struct.itimerspec*)* @posix_cpu_timer_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @posix_cpu_timer_get(%struct.k_itimer* %0, %struct.itimerspec* %1) #0 {
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca %struct.itimerspec*, align 8
  %5 = alloca %union.cpu_time_count, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.cpu_time_count, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %3, align 8
  store %struct.itimerspec* %1, %struct.itimerspec** %4, align 8
  %9 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %10 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  store %struct.task_struct* %13, %struct.task_struct** %6, align 8
  %14 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %15 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %18 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %22 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %21, i32 0, i32 1
  %23 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %20, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @sample_to_timespec(i32 %16, i64 %24, %struct.TYPE_6__* %22)
  %26 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %27 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = bitcast %union.cpu_time_count* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %35 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %38 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %217

40:                                               ; preds = %2
  %41 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %42 = icmp eq %struct.task_struct* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %169, %84, %46
  %48 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %49 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %52 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %56 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %55, i32 0, i32 0
  %57 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %54, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @sample_to_timespec(i32 %50, i64 %58, %struct.TYPE_6__* %56)
  br label %217

60:                                               ; preds = %40
  %61 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %62 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @CPUCLOCK_PERTHREAD(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %68 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %71 = call i32 @cpu_clock_sample(i32 %69, %struct.task_struct* %70, %union.cpu_time_count* %5)
  %72 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %7, align 4
  br label %117

75:                                               ; preds = %60
  %76 = call i32 @read_lock(i32* @tasklist_lock)
  %77 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %75
  %85 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %86 = call i32 @put_task_struct(%struct.task_struct* %85)
  %87 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %88 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store %struct.task_struct* null, %struct.task_struct** %90, align 8
  %91 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %92 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = bitcast %union.cpu_time_count* %94 to i64*
  store i64 0, i64* %95, align 8
  %96 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %47

97:                                               ; preds = %75
  %98 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %99 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %102 = call i32 @cpu_timer_sample_group(i32 %100, %struct.task_struct* %101, %union.cpu_time_count* %5)
  %103 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %104 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %110 = call i64 @thread_group_empty(%struct.task_struct* %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %108, %97
  %113 = phi i1 [ false, %97 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %112
  %116 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %117

117:                                              ; preds = %115, %66
  %118 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %119 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SIGEV_THREAD_ID, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = load i32, i32* @SIGEV_NONE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %165

126:                                              ; preds = %117
  %127 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %128 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = bitcast %union.cpu_time_count* %130 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %160

134:                                              ; preds = %126
  %135 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %136 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %139 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %5, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @cpu_time_before(i32 %137, i64 %143, i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %134
  %149 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %150 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = bitcast %union.cpu_time_count* %152 to i64*
  store i64 0, i64* %153, align 8
  %154 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %155 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  store i32 0, i32* %156, align 4
  %157 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %158 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i32 0, i32* %159, align 4
  br label %217

160:                                              ; preds = %134, %126
  %161 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %162 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %5, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @bump_cpu_timer(%struct.k_itimer* %161, i64 %163)
  br label %165

165:                                              ; preds = %160, %117
  %166 = load i32, i32* %7, align 4
  %167 = call i64 @unlikely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %171 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %5, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @clear_dead_task(%struct.k_itimer* %170, i64 %172)
  br label %47

174:                                              ; preds = %165
  %175 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %176 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %179 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %5, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %181, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @cpu_time_before(i32 %177, i64 %183, i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %210

188:                                              ; preds = %174
  %189 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %190 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %193 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %196 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %5, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @cpu_time_sub(i32 %194, i64 %200, i64 %202)
  %204 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %8, i32 0, i32 0
  store i64 %203, i64* %204, align 8
  %205 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %206 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %205, i32 0, i32 0
  %207 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %8, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @sample_to_timespec(i32 %191, i64 %208, %struct.TYPE_6__* %206)
  br label %217

210:                                              ; preds = %174
  %211 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %212 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  store i32 1, i32* %213, align 4
  %214 = load %struct.itimerspec*, %struct.itimerspec** %4, align 8
  %215 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  store i32 0, i32* %216, align 4
  br label %217

217:                                              ; preds = %33, %47, %148, %210, %188
  ret void
}

declare dso_local i32 @sample_to_timespec(i32, i64, %struct.TYPE_6__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @CPUCLOCK_PERTHREAD(i32) #1

declare dso_local i32 @cpu_clock_sample(i32, %struct.task_struct*, %union.cpu_time_count*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @cpu_timer_sample_group(i32, %struct.task_struct*, %union.cpu_time_count*) #1

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i64 @cpu_time_before(i32, i64, i64) #1

declare dso_local i32 @bump_cpu_timer(%struct.k_itimer*, i64) #1

declare dso_local i32 @clear_dead_task(%struct.k_itimer*, i64) #1

declare dso_local i64 @cpu_time_sub(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
