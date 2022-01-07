; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_irqsoff.c___irqsoff_tracer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_irqsoff.c___irqsoff_tracer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }

@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@save_lat_flag = common dso_local global i32 0, align 4
@tracing_max_latency = common dso_local global i64 0, align 8
@irqsoff_trace = common dso_local global %struct.trace_array* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*)* @__irqsoff_tracer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__irqsoff_tracer_init(%struct.trace_array* %0) #0 {
  %2 = alloca %struct.trace_array*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %2, align 8
  %3 = load i32, i32* @trace_flags, align 4
  %4 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %5 = and i32 %3, %4
  store i32 %5, i32* @save_lat_flag, align 4
  %6 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %7 = load i32, i32* @trace_flags, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @trace_flags, align 4
  store i64 0, i64* @tracing_max_latency, align 8
  %9 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  store %struct.trace_array* %9, %struct.trace_array** @irqsoff_trace, align 8
  %10 = call i32 (...) @smp_wmb()
  %11 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %12 = call i32 @tracing_reset_online_cpus(%struct.trace_array* %11)
  %13 = load %struct.trace_array*, %struct.trace_array** %2, align 8
  %14 = call i32 @start_irqsoff_tracer(%struct.trace_array* %13)
  ret void
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @tracing_reset_online_cpus(%struct.trace_array*) #1

declare dso_local i32 @start_irqsoff_tracer(%struct.trace_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
