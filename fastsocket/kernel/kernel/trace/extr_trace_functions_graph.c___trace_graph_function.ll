; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c___trace_graph_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c___trace_graph_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.ftrace_graph_ent = type { i64, i32 }
%struct.ftrace_graph_ret = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*, i64, i64, i32)* @__trace_graph_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__trace_graph_function(%struct.trace_array* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ftrace_graph_ent, align 8
  %11 = alloca %struct.ftrace_graph_ret, align 8
  store %struct.trace_array* %0, %struct.trace_array** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 (...) @trace_clock_local()
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %10, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %10, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %11, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %11, i32 0, i32 1
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %11, i32 0, i32 2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %11, i32 0, i32 3
  store i32 0, i32* %22, align 8
  %23 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @__trace_graph_entry(%struct.trace_array* %23, %struct.ftrace_graph_ent* %10, i64 %24, i32 %25)
  %27 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @__trace_graph_return(%struct.trace_array* %27, %struct.ftrace_graph_ret* %11, i64 %28, i32 %29)
  ret void
}

declare dso_local i32 @trace_clock_local(...) #1

declare dso_local i32 @__trace_graph_entry(%struct.trace_array*, %struct.ftrace_graph_ent*, i64, i32) #1

declare dso_local i32 @__trace_graph_return(%struct.trace_array*, %struct.ftrace_graph_ret*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
