; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c___print_graph_function_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c___print_graph_function_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { %struct.trace_seq, %struct.trace_entry* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.ftrace_graph_ent_entry = type { i32 }
%struct.ftrace_graph_ret_entry = type { i32 }

@TRACE_TYPE_UNHANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__print_graph_function_flags(%struct.trace_iterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_entry*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca %struct.ftrace_graph_ent_entry*, align 8
  %9 = alloca %struct.ftrace_graph_ent_entry, align 4
  %10 = alloca %struct.ftrace_graph_ret_entry*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %12 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %11, i32 0, i32 1
  %13 = load %struct.trace_entry*, %struct.trace_entry** %12, align 8
  store %struct.trace_entry* %13, %struct.trace_entry** %6, align 8
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %14, i32 0, i32 0
  store %struct.trace_seq* %15, %struct.trace_seq** %7, align 8
  %16 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %17 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %45 [
    i32 130, label %19
    i32 129, label %32
    i32 128, label %43
    i32 131, label %43
  ]

19:                                               ; preds = %2
  %20 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %8, align 8
  %21 = bitcast %struct.ftrace_graph_ent_entry* %20 to %struct.ftrace_graph_ret_entry*
  %22 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %23 = call i32 @trace_assign_type(%struct.ftrace_graph_ret_entry* %21, %struct.trace_entry* %22)
  %24 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %8, align 8
  %25 = bitcast %struct.ftrace_graph_ent_entry* %9 to i8*
  %26 = bitcast %struct.ftrace_graph_ent_entry* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = bitcast %struct.ftrace_graph_ent_entry* %9 to %struct.ftrace_graph_ret_entry*
  %28 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %29 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @print_graph_entry(%struct.ftrace_graph_ret_entry* %27, %struct.trace_seq* %28, %struct.trace_iterator* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %2
  %33 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %10, align 8
  %34 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %35 = call i32 @trace_assign_type(%struct.ftrace_graph_ret_entry* %33, %struct.trace_entry* %34)
  %36 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %10, align 8
  %37 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %36, i32 0, i32 0
  %38 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %39 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %40 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @print_graph_return(i32* %37, %struct.trace_seq* %38, %struct.trace_entry* %39, %struct.trace_iterator* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %51

43:                                               ; preds = %2, %2
  %44 = load i32, i32* @TRACE_TYPE_UNHANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %2
  %46 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %47 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %48 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @print_graph_comment(%struct.trace_seq* %46, %struct.trace_entry* %47, %struct.trace_iterator* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %43, %32, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @trace_assign_type(%struct.ftrace_graph_ret_entry*, %struct.trace_entry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @print_graph_entry(%struct.ftrace_graph_ret_entry*, %struct.trace_seq*, %struct.trace_iterator*, i32) #1

declare dso_local i32 @print_graph_return(i32*, %struct.trace_seq*, %struct.trace_entry*, %struct.trace_iterator*, i32) #1

declare dso_local i32 @print_graph_comment(%struct.trace_seq*, %struct.trace_entry*, %struct.trace_iterator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
