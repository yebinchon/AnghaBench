; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_trace_graph_return.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_trace_graph_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.trace_array_cpu** }
%struct.trace_array_cpu = type { i32 }
%struct.ftrace_graph_ret = type { i32 }

@graph_array = common dso_local global %struct.trace_array* null, align 8
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_graph_return(%struct.ftrace_graph_ret* %0) #0 {
  %2 = alloca %struct.ftrace_graph_ret*, align 8
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.trace_array_cpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ftrace_graph_ret* %0, %struct.ftrace_graph_ret** %2, align 8
  %9 = load %struct.trace_array*, %struct.trace_array** @graph_array, align 8
  store %struct.trace_array* %9, %struct.trace_array** %3, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = call i32 (...) @raw_smp_processor_id()
  store i32 %12, i32* %7, align 4
  %13 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %14 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %13, i32 0, i32 0
  %15 = load %struct.trace_array_cpu**, %struct.trace_array_cpu*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.trace_array_cpu*, %struct.trace_array_cpu** %15, i64 %17
  %19 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %18, align 8
  store %struct.trace_array_cpu* %19, %struct.trace_array_cpu** %4, align 8
  %20 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %4, align 8
  %21 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %20, i32 0, i32 0
  %22 = call i64 @atomic_inc_return(i32* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = call i32 (...) @preempt_count()
  store i32 %29, i32* %8, align 4
  %30 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %31 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %2, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @__trace_graph_return(%struct.trace_array* %30, %struct.ftrace_graph_ret* %31, i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %1
  %36 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %2, align 8
  %37 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @current, align 4
  %42 = call i32 @clear_tsk_trace_graph(i32 %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %4, align 8
  %45 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %44, i32 0, i32 0
  %46 = call i32 @atomic_dec(i32* %45)
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @local_irq_restore(i64 %47)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @__trace_graph_return(%struct.trace_array*, %struct.ftrace_graph_ret*, i64, i32) #1

declare dso_local i32 @clear_tsk_trace_graph(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
