; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_entry_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_entry_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.fgraph_data* }
%struct.fgraph_data = type { i32 }
%struct.ftrace_graph_ent_entry = type { %struct.ftrace_graph_ent }
%struct.ftrace_graph_ent = type { i32, i64 }
%struct.ftrace_graph_ret_entry = type { %struct.ftrace_graph_ret }
%struct.ftrace_graph_ret = type { i64, i64 }
%struct.trace_seq = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_DURATION = common dso_local global i32 0, align 4
@TRACE_GRAPH_INDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%ps();\0A\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ret_entry*, %struct.trace_seq*, i32)* @print_graph_entry_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_entry_leaf(%struct.trace_iterator* %0, %struct.ftrace_graph_ent_entry* %1, %struct.ftrace_graph_ret_entry* %2, %struct.trace_seq* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_iterator*, align 8
  %8 = alloca %struct.ftrace_graph_ent_entry*, align 8
  %9 = alloca %struct.ftrace_graph_ret_entry*, align 8
  %10 = alloca %struct.trace_seq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fgraph_data*, align 8
  %13 = alloca %struct.ftrace_graph_ret*, align 8
  %14 = alloca %struct.ftrace_graph_ent*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %7, align 8
  store %struct.ftrace_graph_ent_entry* %1, %struct.ftrace_graph_ent_entry** %8, align 8
  store %struct.ftrace_graph_ret_entry* %2, %struct.ftrace_graph_ret_entry** %9, align 8
  store %struct.trace_seq* %3, %struct.trace_seq** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %20, i32 0, i32 1
  %22 = load %struct.fgraph_data*, %struct.fgraph_data** %21, align 8
  store %struct.fgraph_data* %22, %struct.fgraph_data** %12, align 8
  %23 = load %struct.ftrace_graph_ret_entry*, %struct.ftrace_graph_ret_entry** %9, align 8
  %24 = getelementptr inbounds %struct.ftrace_graph_ret_entry, %struct.ftrace_graph_ret_entry* %23, i32 0, i32 0
  store %struct.ftrace_graph_ret* %24, %struct.ftrace_graph_ret** %13, align 8
  %25 = load %struct.ftrace_graph_ent_entry*, %struct.ftrace_graph_ent_entry** %8, align 8
  %26 = getelementptr inbounds %struct.ftrace_graph_ent_entry, %struct.ftrace_graph_ent_entry* %25, i32 0, i32 0
  store %struct.ftrace_graph_ent* %26, %struct.ftrace_graph_ent** %14, align 8
  %27 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %13, align 8
  %28 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %13, align 8
  %31 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  store i64 %33, i64* %15, align 8
  %34 = load %struct.fgraph_data*, %struct.fgraph_data** %12, align 8
  %35 = icmp ne %struct.fgraph_data* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %5
  %37 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %38 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %18, align 4
  %40 = load %struct.fgraph_data*, %struct.fgraph_data** %12, align 8
  %41 = load i32, i32* %18, align 4
  %42 = call %struct.TYPE_2__* @per_cpu_ptr(%struct.fgraph_data* %40, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* %43, i32** %19, align 8
  %44 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %14, align 8
  %45 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = load i32*, i32** %19, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %36, %5
  %50 = load i64, i64* %15, align 8
  %51 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @print_graph_overhead(i64 %50, %struct.trace_seq* %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %57, i32* %6, align 4
  br label %106

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @TRACE_GRAPH_PRINT_DURATION, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i64, i64* %15, align 8
  %65 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %66 = call i32 @print_graph_duration(i64 %64, %struct.trace_seq* %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %71, i32* %6, align 4
  br label %106

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %58
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %90, %73
  %75 = load i32, i32* %17, align 4
  %76 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %14, align 8
  %77 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @TRACE_GRAPH_INDENT, align 4
  %80 = mul nsw i32 %78, %79
  %81 = icmp slt i32 %75, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %84 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %88, i32* %6, align 4
  br label %106

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %74

93:                                               ; preds = %74
  %94 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %95 = load %struct.ftrace_graph_ent*, %struct.ftrace_graph_ent** %14, align 8
  %96 = getelementptr inbounds %struct.ftrace_graph_ent, %struct.ftrace_graph_ent* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %103, i32* %6, align 4
  br label %106

104:                                              ; preds = %93
  %105 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %104, %102, %87, %70, %56
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_2__* @per_cpu_ptr(%struct.fgraph_data*, i32) #1

declare dso_local i32 @print_graph_overhead(i64, %struct.trace_seq*, i32) #1

declare dso_local i32 @print_graph_duration(i64, %struct.trace_seq*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
