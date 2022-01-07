; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_trace_graph_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_trace_graph_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.trace_array_cpu** }
%struct.trace_array_cpu = type { i32 }
%struct.ftrace_graph_ent = type { i32 }

@graph_array = common dso_local global %struct.trace_array* null, align 8
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_graph_entry(%struct.ftrace_graph_ent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_graph_ent*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca %struct.trace_array_cpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ftrace_graph_ent* %0, %struct.ftrace_graph_ent** %3, align 8
  %11 = load %struct.trace_array*, %struct.trace_array** @graph_array, align 8
  store %struct.trace_array* %11, %struct.trace_array** %4, align 8
  %12 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %13 = icmp ne %struct.trace_array* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

19:                                               ; preds = %1
  %20 = load i32, i32* @current, align 4
  %21 = call i32 @ftrace_trace_task(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %72

24:                                               ; preds = %19
  %25 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %3, align 8
  %26 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ftrace_graph_addr(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %72

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  %34 = call i32 (...) @raw_smp_processor_id()
  store i32 %34, i32* %9, align 4
  %35 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %36 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %35, i32 0, i32 0
  %37 = load %struct.trace_array_cpu**, %struct.trace_array_cpu*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.trace_array_cpu*, %struct.trace_array_cpu** %37, i64 %39
  %41 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %40, align 8
  store %struct.trace_array_cpu* %41, %struct.trace_array_cpu** %5, align 8
  %42 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %5, align 8
  %43 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %42, i32 0, i32 0
  %44 = call i64 @atomic_inc_return(i32* %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 1
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %31
  %51 = call i32 (...) @preempt_count()
  store i32 %51, i32* %10, align 4
  %52 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %53 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %3, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @__trace_graph_entry(%struct.trace_array* %52, %struct.ftrace_graph_ent* %53, i64 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %58

57:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* @current, align 4
  %60 = call i32 @test_tsk_trace_graph(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @current, align 4
  %64 = call i32 @set_tsk_trace_graph(i32 %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %5, align 8
  %67 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %66, i32 0, i32 0
  %68 = call i32 @atomic_dec(i32* %67)
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @local_irq_restore(i64 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %30, %23, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ftrace_trace_task(i32) #1

declare dso_local i32 @ftrace_graph_addr(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @__trace_graph_entry(%struct.trace_array*, %struct.ftrace_graph_ent*, i64, i32) #1

declare dso_local i32 @test_tsk_trace_graph(i32) #1

declare dso_local i32 @set_tsk_trace_graph(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
