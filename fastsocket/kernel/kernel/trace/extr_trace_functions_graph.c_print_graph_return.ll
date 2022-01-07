; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_return.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_graph_ret = type { i64, i64, i32, i32, i32 }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.trace_iterator = type { i32, %struct.fgraph_data* }
%struct.fgraph_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_DURATION = common dso_local global i32 0, align 4
@TRACE_GRAPH_INDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@TRACE_GRAPH_PRINT_OVERRUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c" (Overruns: %lu)\0A\00", align 1
@TRACE_GRAPH_RET = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_graph_ret*, %struct.trace_seq*, %struct.trace_entry*, %struct.trace_iterator*, i32)* @print_graph_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_return(%struct.ftrace_graph_ret* %0, %struct.trace_seq* %1, %struct.trace_entry* %2, %struct.trace_iterator* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ftrace_graph_ret*, align 8
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca %struct.trace_entry*, align 8
  %10 = alloca %struct.trace_iterator*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.fgraph_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.ftrace_graph_ret* %0, %struct.ftrace_graph_ret** %7, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %8, align 8
  store %struct.trace_entry* %2, %struct.trace_entry** %9, align 8
  store %struct.trace_iterator* %3, %struct.trace_iterator** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %21 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %24 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %12, align 8
  %27 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %28 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %27, i32 0, i32 1
  %29 = load %struct.fgraph_data*, %struct.fgraph_data** %28, align 8
  store %struct.fgraph_data* %29, %struct.fgraph_data** %13, align 8
  %30 = load %struct.trace_entry*, %struct.trace_entry** %9, align 8
  %31 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %34 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %15, align 4
  %36 = load %struct.fgraph_data*, %struct.fgraph_data** %13, align 8
  %37 = icmp ne %struct.fgraph_data* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %5
  %39 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %40 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %18, align 4
  %42 = load %struct.fgraph_data*, %struct.fgraph_data** %13, align 8
  %43 = load i32, i32* %18, align 4
  %44 = call %struct.TYPE_2__* @per_cpu_ptr(%struct.fgraph_data* %42, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* %45, i32** %19, align 8
  %46 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %47 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = load i32*, i32** %19, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %38, %5
  %52 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %53 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @print_graph_prologue(%struct.trace_iterator* %52, %struct.trace_seq* %53, i32 0, i32 0, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %58, i32* %6, align 4
  br label %143

59:                                               ; preds = %51
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @print_graph_overhead(i64 %60, %struct.trace_seq* %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %67, i32* %6, align 4
  br label %143

68:                                               ; preds = %59
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @TRACE_GRAPH_PRINT_DURATION, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %76 = call i32 @print_graph_duration(i64 %74, %struct.trace_seq* %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %81, i32* %6, align 4
  br label %143

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %68
  store i32 0, i32* %17, align 4
  br label %84

84:                                               ; preds = %100, %83
  %85 = load i32, i32* %17, align 4
  %86 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %87 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TRACE_GRAPH_INDENT, align 4
  %90 = mul nsw i32 %88, %89
  %91 = icmp slt i32 %85, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %84
  %93 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %94 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %98, i32* %6, align 4
  br label %143

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %84

103:                                              ; preds = %84
  %104 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %105 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %109, i32* %6, align 4
  br label %143

110:                                              ; preds = %103
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @TRACE_GRAPH_PRINT_OVERRUN, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %117 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %118 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %124, i32* %6, align 4
  br label %143

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %110
  %127 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %128 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %129 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @TRACE_GRAPH_RET, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @print_graph_irq(%struct.trace_iterator* %127, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %126
  %140 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %140, i32* %6, align 4
  br label %143

141:                                              ; preds = %126
  %142 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %141, %139, %123, %108, %97, %80, %66, %57
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_2__* @per_cpu_ptr(%struct.fgraph_data*, i32) #1

declare dso_local i64 @print_graph_prologue(%struct.trace_iterator*, %struct.trace_seq*, i32, i32, i32) #1

declare dso_local i32 @print_graph_overhead(i64, %struct.trace_seq*, i32) #1

declare dso_local i32 @print_graph_duration(i64, %struct.trace_seq*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @print_graph_irq(%struct.trace_iterator*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
