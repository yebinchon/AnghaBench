; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }

@__irqentry_text_start = common dso_local global i64 0, align 8
@__irqentry_text_end = common dso_local global i64 0, align 8
@TRACE_TYPE_UNHANDLED = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_ABS_TIME = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_CPU = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" | \00", align 1
@TRACE_GRAPH_ENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"==========>\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"<==========\00", align 1
@TRACE_GRAPH_PRINT_DURATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c" |\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i64, i32, i32, i32, i32)* @print_graph_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_irq(%struct.trace_iterator* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.trace_iterator*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.trace_seq*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %17 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %16, i32 0, i32 1
  store %struct.trace_seq* %17, %struct.trace_seq** %15, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @__irqentry_text_start, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @__irqentry_text_end, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %6
  %26 = load i32, i32* @TRACE_TYPE_UNHANDLED, align 4
  store i32 %26, i32* %7, align 4
  br label %120

27:                                               ; preds = %21
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @TRACE_GRAPH_PRINT_ABS_TIME, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %34 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.trace_seq*, %struct.trace_seq** %15, align 8
  %37 = call i32 @print_graph_abs_time(i32 %35, %struct.trace_seq* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %41, i32* %7, align 4
  br label %120

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @TRACE_GRAPH_PRINT_CPU, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.trace_seq*, %struct.trace_seq** %15, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @print_graph_cpu(%struct.trace_seq* %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %56, i32* %7, align 4
  br label %120

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @TRACE_GRAPH_PRINT_PROC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load %struct.trace_seq*, %struct.trace_seq** %15, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @print_graph_proc(%struct.trace_seq* %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %71, i32* %7, align 4
  br label %120

72:                                               ; preds = %63
  %73 = load %struct.trace_seq*, %struct.trace_seq** %15, align 8
  %74 = call i32 @trace_seq_printf(%struct.trace_seq* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %78, i32* %7, align 4
  br label %120

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %58
  %81 = load %struct.trace_seq*, %struct.trace_seq** %15, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @print_graph_overhead(i32 -1, %struct.trace_seq* %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %87, i32* %7, align 4
  br label %120

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @TRACE_GRAPH_ENT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.trace_seq*, %struct.trace_seq** %15, align 8
  %94 = call i32 @trace_seq_printf(%struct.trace_seq* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %94, i32* %14, align 4
  br label %98

95:                                               ; preds = %88
  %96 = load %struct.trace_seq*, %struct.trace_seq** %15, align 8
  %97 = call i32 @trace_seq_printf(%struct.trace_seq* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %102, i32* %7, align 4
  br label %120

103:                                              ; preds = %98
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @TRACE_GRAPH_PRINT_DURATION, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.trace_seq*, %struct.trace_seq** %15, align 8
  %110 = call i32 @trace_seq_printf(%struct.trace_seq* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.trace_seq*, %struct.trace_seq** %15, align 8
  %113 = call i32 @trace_seq_printf(%struct.trace_seq* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %117, i32* %7, align 4
  br label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %118, %116, %101, %86, %77, %70, %55, %40, %25
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @print_graph_abs_time(i32, %struct.trace_seq*) #1

declare dso_local i32 @print_graph_cpu(%struct.trace_seq*, i32) #1

declare dso_local i32 @print_graph_proc(%struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*) #1

declare dso_local i32 @print_graph_overhead(i32, %struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
