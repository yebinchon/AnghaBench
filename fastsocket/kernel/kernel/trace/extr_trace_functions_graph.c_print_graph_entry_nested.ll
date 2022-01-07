; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_entry_nested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_entry_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.fgraph_data* }
%struct.fgraph_data = type { i32 }
%struct.ftrace_graph_ent_entry = type { %struct.ftrace_graph_ent }
%struct.ftrace_graph_ent = type { i32, i64 }
%struct.trace_seq = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_DURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"            |  \00", align 1
@TRACE_GRAPH_INDENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%ps() {\0A\00", align 1
@TRACE_TYPE_NO_CONSUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*, %struct.trace_seq*, i32, i32)* @print_graph_entry_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_entry_nested(%struct.trace_iterator* %0, %struct.ftrace_graph_ent_entry* %1, %struct.trace_seq* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_iterator*, align 8
  %8 = alloca %struct.ftrace_graph_ent_entry*, align 8
  %9 = alloca %struct.trace_seq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ftrace_graph_ent*, align 8
  %13 = alloca %struct.fgraph_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %7, align 8
  store %struct.ftrace_graph_ent_entry* %1, %struct.ftrace_graph_ent_entry** %8, align 8
  store %struct.trace_seq* %2, %struct.trace_seq** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %8, align 8
  %19 = getelementptr inbounds %struct.ftrace_graph_ent_entry, %struct.ftrace_graph_ent_entry* %18, i32 0, i32 0
  store %struct.ftrace_graph_ent* %19, %struct.ftrace_graph_ent** %12, align 8
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %20, i32 0, i32 1
  %22 = load %struct.fgraph_data*, %struct.fgraph_data** %21, align 8
  store %struct.fgraph_data* %22, %struct.fgraph_data** %13, align 8
  %23 = load %struct.fgraph_data*, %struct.fgraph_data** %13, align 8
  %24 = icmp ne %struct.fgraph_data* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %5
  %26 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %27 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %16, align 4
  %29 = load %struct.fgraph_data*, %struct.fgraph_data** %13, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call %struct.TYPE_2__* @per_cpu_ptr(%struct.fgraph_data* %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* %32, i32** %17, align 8
  %33 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %12, align 8
  %34 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %17, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %25, %5
  %38 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @print_graph_overhead(i32 -1, %struct.trace_seq* %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %44, i32* %6, align 4
  br label %91

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @TRACE_GRAPH_PRINT_DURATION, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %52 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %56, i32* %6, align 4
  br label %91

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %45
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %12, align 8
  %62 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TRACE_GRAPH_INDENT, align 4
  %65 = mul nsw i32 %63, %64
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %69 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %73, i32* %6, align 4
  br label %91

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %59

78:                                               ; preds = %59
  %79 = load %struct.trace_seq*, %struct.trace_seq** %9, align 8
  %80 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %12, align 8
  %81 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %88, i32* %6, align 4
  br label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @TRACE_TYPE_NO_CONSUME, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %87, %72, %55, %43
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_2__* @per_cpu_ptr(%struct.fgraph_data*, i32) #1

declare dso_local i32 @print_graph_overhead(i32, %struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
