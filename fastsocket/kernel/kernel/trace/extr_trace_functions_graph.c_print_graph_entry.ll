; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_graph_ent_entry = type { %struct.ftrace_graph_ent }
%struct.ftrace_graph_ent = type { i32 }
%struct.trace_seq = type { i32 }
%struct.trace_iterator = type { i32 }
%struct.ftrace_graph_ret_entry = type { i32 }

@TRACE_GRAPH_ENT = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_graph_ent_entry*, %struct.trace_seq*, %struct.trace_iterator*, i32)* @print_graph_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_entry(%struct.ftrace_graph_ent_entry* %0, %struct.trace_seq* %1, %struct.trace_iterator* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ftrace_graph_ent_entry*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca %struct.trace_iterator*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ftrace_graph_ent*, align 8
  %12 = alloca %struct.ftrace_graph_ret_entry*, align 8
  store %struct.ftrace_graph_ent_entry* %0, %struct.ftrace_graph_ent_entry** %6, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %7, align 8
  store %struct.trace_iterator* %2, %struct.trace_iterator** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %6, align 8
  %17 = getelementptr inbounds %struct.ftrace_graph_ent_entry, %struct.ftrace_graph_ent_entry* %16, i32 0, i32 0
  store %struct.ftrace_graph_ent* %17, %struct.ftrace_graph_ent** %11, align 8
  %18 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %19 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %20 = load i32, i32* @TRACE_GRAPH_ENT, align 4
  %21 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %11, align 8
  %22 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @print_graph_prologue(%struct.trace_iterator* %18, %struct.trace_seq* %19, i32 %20, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %28, i32* %5, align 4
  br label %49

29:                                               ; preds = %4
  %30 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %31 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %6, align 8
  %32 = call %struct.ftrace_graph_ret_entry* @get_return_for_leaf(%struct.trace_iterator* %30, %struct.ftrace_graph_ent_entry* %31)
  store %struct.ftrace_graph_ret_entry* %32, %struct.ftrace_graph_ret_entry** %12, align 8
  %33 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %12, align 8
  %34 = icmp ne %struct.ftrace_graph_ret_entry* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %37 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %6, align 8
  %38 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %12, align 8
  %39 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @print_graph_entry_leaf(%struct.trace_iterator* %36, %struct.ftrace_graph_ent_entry* %37, %struct.ftrace_graph_ret_entry* %38, %struct.trace_seq* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %49

42:                                               ; preds = %29
  %43 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %44 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %6, align 8
  %45 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @print_graph_entry_nested(%struct.trace_iterator* %43, %struct.ftrace_graph_ent_entry* %44, %struct.trace_seq* %45, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %42, %35, %27
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @print_graph_prologue(%struct.trace_iterator*, %struct.trace_seq*, i32, i32, i32) #1

declare dso_local %struct.ftrace_graph_ret_entry* @get_return_for_leaf(%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*) #1

declare dso_local i32 @print_graph_entry_leaf(%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ret_entry*, %struct.trace_seq*, i32) #1

declare dso_local i32 @print_graph_entry_nested(%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*, %struct.trace_seq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
