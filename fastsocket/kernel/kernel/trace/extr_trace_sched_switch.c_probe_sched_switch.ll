; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_sched_switch.c_probe_sched_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_sched_switch.c_probe_sched_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.trace_array_cpu** }
%struct.trace_array_cpu = type { i32 }
%struct.rq = type { i32 }
%struct.task_struct = type { i32 }

@sched_ref = common dso_local global i32 0, align 4
@tracer_enabled = common dso_local global i32 0, align 4
@sched_stopped = common dso_local global i64 0, align 8
@ctx_trace = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*, %struct.task_struct*)* @probe_sched_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_sched_switch(%struct.rq* %0, %struct.task_struct* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.rq*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.trace_array_cpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rq* %0, %struct.rq** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %11 = load i32, i32* @sched_ref, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = call i32 @tracing_record_cmdline(%struct.task_struct* %19)
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = call i32 @tracing_record_cmdline(%struct.task_struct* %21)
  %23 = load i32, i32* @tracer_enabled, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* @sched_stopped, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %18
  br label %59

29:                                               ; preds = %25
  %30 = call i32 (...) @preempt_count()
  store i32 %30, i32* %10, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @local_irq_save(i64 %31)
  %33 = call i32 (...) @raw_smp_processor_id()
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ctx_trace, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.trace_array_cpu**, %struct.trace_array_cpu*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.trace_array_cpu*, %struct.trace_array_cpu** %36, i64 %38
  %40 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %39, align 8
  store %struct.trace_array_cpu* %40, %struct.trace_array_cpu** %7, align 8
  %41 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %7, align 8
  %42 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %41, i32 0, i32 0
  %43 = call i32 @atomic_read(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %29
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ctx_trace, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @tracing_sched_switch_trace(%struct.TYPE_3__* %50, %struct.task_struct* %51, %struct.task_struct* %52, i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %29
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @local_irq_restore(i64 %57)
  br label %59

59:                                               ; preds = %56, %28, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tracing_record_cmdline(%struct.task_struct*) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @tracing_sched_switch_trace(%struct.TYPE_3__*, %struct.task_struct*, %struct.task_struct*, i64, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
