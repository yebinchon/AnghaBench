; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_comment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i8*, i32 }
%struct.trace_entry = type { i32 }
%struct.trace_iterator = type { %struct.TYPE_3__*, i32, %struct.fgraph_data* }
%struct.TYPE_3__ = type { i32 }
%struct.fgraph_data = type { i32 }
%struct.trace_event = type { i32 (%struct.trace_iterator*, i64)* }
%struct.TYPE_4__ = type { i32 }

@trace_flags = common dso_local global i64 0, align 8
@TRACE_ITER_SYM_MASK = common dso_local global i64 0, align 8
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_DURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"            |  \00", align 1
@TRACE_GRAPH_INDENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/* \00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_UNHANDLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.trace_entry*, %struct.trace_iterator*, i32)* @print_graph_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_comment(%struct.trace_seq* %0, %struct.trace_entry* %1, %struct.trace_iterator* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.trace_entry*, align 8
  %8 = alloca %struct.trace_iterator*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.fgraph_data*, align 8
  %12 = alloca %struct.trace_event*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %6, align 8
  store %struct.trace_entry* %1, %struct.trace_entry** %7, align 8
  store %struct.trace_iterator* %2, %struct.trace_iterator** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* @trace_flags, align 8
  %17 = load i64, i64* @TRACE_ITER_SYM_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %20 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %19, i32 0, i32 2
  %21 = load %struct.fgraph_data*, %struct.fgraph_data** %20, align 8
  store %struct.fgraph_data* %21, %struct.fgraph_data** %11, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.fgraph_data*, %struct.fgraph_data** %11, align 8
  %23 = icmp ne %struct.fgraph_data* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.fgraph_data*, %struct.fgraph_data** %11, align 8
  %26 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %27 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_4__* @per_cpu_ptr(%struct.fgraph_data* %25, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %24, %4
  %33 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %34 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @print_graph_prologue(%struct.trace_iterator* %33, %struct.trace_seq* %34, i32 0, i32 0, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %39, i32* %5, align 4
  br label %173

40:                                               ; preds = %32
  %41 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @print_graph_overhead(i32 -1, %struct.trace_seq* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %47, i32* %5, align 4
  br label %173

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @TRACE_GRAPH_PRINT_DURATION, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %55 = call i32 @trace_seq_printf(%struct.trace_seq* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %59, i32* %5, align 4
  br label %173

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %48
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %80, %64
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* @TRACE_GRAPH_INDENT, align 4
  %70 = mul nsw i32 %68, %69
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %74 = call i32 @trace_seq_printf(%struct.trace_seq* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %78, i32* %5, align 4
  br label %173

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %65

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83, %61
  %85 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %86 = call i32 @trace_seq_printf(%struct.trace_seq* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %90, i32* %5, align 4
  br label %173

91:                                               ; preds = %84
  %92 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %93 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %115 [
    i32 129, label %97
    i32 128, label %106
  ]

97:                                               ; preds = %91
  %98 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %99 = call i32 @trace_print_bprintk_msg_only(%struct.trace_iterator* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  br label %173

105:                                              ; preds = %97
  br label %137

106:                                              ; preds = %91
  %107 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %108 = call i32 @trace_print_printk_msg_only(%struct.trace_iterator* %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %5, align 4
  br label %173

114:                                              ; preds = %106
  br label %137

115:                                              ; preds = %91
  %116 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %117 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.trace_event* @ftrace_find_event(i32 %118)
  store %struct.trace_event* %119, %struct.trace_event** %12, align 8
  %120 = load %struct.trace_event*, %struct.trace_event** %12, align 8
  %121 = icmp ne %struct.trace_event* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* @TRACE_TYPE_UNHANDLED, align 4
  store i32 %123, i32* %5, align 4
  br label %173

124:                                              ; preds = %115
  %125 = load %struct.trace_event*, %struct.trace_event** %12, align 8
  %126 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %125, i32 0, i32 0
  %127 = load i32 (%struct.trace_iterator*, i64)*, i32 (%struct.trace_iterator*, i64)** %126, align 8
  %128 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %129 = load i64, i64* %10, align 8
  %130 = call i32 %127(%struct.trace_iterator* %128, i64 %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %124
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %5, align 4
  br label %173

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %136, %114, %105
  %138 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %139 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %142 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %140, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 10
  br i1 %149, label %150, label %164

150:                                              ; preds = %137
  %151 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %152 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %155 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %153, i64 %158
  store i8 0, i8* %159, align 1
  %160 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %161 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %150, %137
  %165 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %166 = call i32 @trace_seq_printf(%struct.trace_seq* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %170, i32* %5, align 4
  br label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %171, %169, %134, %122, %112, %103, %89, %77, %58, %46, %38
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local %struct.TYPE_4__* @per_cpu_ptr(%struct.fgraph_data*, i32) #1

declare dso_local i64 @print_graph_prologue(%struct.trace_iterator*, %struct.trace_seq*, i32, i32, i32) #1

declare dso_local i32 @print_graph_overhead(i32, %struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_print_bprintk_msg_only(%struct.trace_iterator*) #1

declare dso_local i32 @trace_print_printk_msg_only(%struct.trace_iterator*) #1

declare dso_local %struct.trace_event* @ftrace_find_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
