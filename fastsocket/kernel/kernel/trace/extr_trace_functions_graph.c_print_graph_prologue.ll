; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_prologue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, %struct.trace_entry*, %struct.fgraph_data* }
%struct.trace_entry = type { i32 }
%struct.fgraph_data = type { i32 }
%struct.trace_seq = type { i32 }

@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_ABS_TIME = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_CPU = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" | \00", align 1
@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, %struct.trace_seq*, i32, i64, i32)* @print_graph_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_prologue(%struct.trace_iterator* %0, %struct.trace_seq* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_iterator*, align 8
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fgraph_data*, align 8
  %13 = alloca %struct.trace_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %7, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %17 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %16, i32 0, i32 3
  %18 = load %struct.fgraph_data*, %struct.fgraph_data** %17, align 8
  store %struct.fgraph_data* %18, %struct.fgraph_data** %12, align 8
  %19 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %20 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %19, i32 0, i32 2
  %21 = load %struct.trace_entry*, %struct.trace_entry** %20, align 8
  store %struct.trace_entry* %21, %struct.trace_entry** %13, align 8
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %23 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  %25 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %26 = load %struct.trace_entry*, %struct.trace_entry** %13, align 8
  %27 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.fgraph_data*, %struct.fgraph_data** %12, align 8
  %31 = call i32 @verif_pid(%struct.trace_seq* %25, i32 %28, i32 %29, %struct.fgraph_data* %30)
  %32 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %35, i32* %6, align 4
  br label %126

36:                                               ; preds = %5
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.trace_entry*, %struct.trace_entry** %13, align 8
  %45 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @print_graph_irq(%struct.trace_iterator* %40, i64 %41, i32 %42, i32 %43, i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %53, i32* %6, align 4
  br label %126

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @TRACE_GRAPH_PRINT_ABS_TIME, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %62 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %65 = call i32 @print_graph_abs_time(i32 %63, %struct.trace_seq* %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %69, i32* %6, align 4
  br label %126

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @TRACE_GRAPH_PRINT_CPU, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @print_graph_cpu(%struct.trace_seq* %77, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %84, i32* %6, align 4
  br label %126

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %71
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @TRACE_GRAPH_PRINT_PROC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %93 = load %struct.trace_entry*, %struct.trace_entry** %13, align 8
  %94 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @print_graph_proc(%struct.trace_seq* %92, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %101, i32* %6, align 4
  br label %126

102:                                              ; preds = %91
  %103 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %104 = call i32 @trace_seq_printf(%struct.trace_seq* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %108, i32* %6, align 4
  br label %126

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %86
  %111 = load i32, i32* @trace_flags, align 4
  %112 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %117 = load %struct.trace_entry*, %struct.trace_entry** %13, align 8
  %118 = call i32 @print_graph_lat_fmt(%struct.trace_seq* %116, %struct.trace_entry* %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %123, i32* %6, align 4
  br label %126

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %110
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %122, %107, %100, %83, %68, %52, %34
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @verif_pid(%struct.trace_seq*, i32, i32, %struct.fgraph_data*) #1

declare dso_local i32 @print_graph_irq(%struct.trace_iterator*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @print_graph_abs_time(i32, %struct.trace_seq*) #1

declare dso_local i32 @print_graph_cpu(%struct.trace_seq*, i32) #1

declare dso_local i32 @print_graph_proc(%struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*) #1

declare dso_local i32 @print_graph_lat_fmt(%struct.trace_seq*, %struct.trace_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
