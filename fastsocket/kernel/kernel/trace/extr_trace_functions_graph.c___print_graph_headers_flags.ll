; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c___print_graph_headers_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c___print_graph_headers_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@TRACE_GRAPH_PRINT_ABS_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"     TIME       \00", align 1
@TRACE_GRAPH_PRINT_CPU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" CPU\00", align 1
@TRACE_GRAPH_PRINT_PROC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"  TASK/PID       \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"|||||\00", align 1
@TRACE_GRAPH_PRINT_DURATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"  DURATION   \00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"               FUNCTION CALLS\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"      |         \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" |  \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"   |    |        \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"   |   |      \00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"               |   |   |   |\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32)* @__print_graph_headers_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__print_graph_headers_flags(%struct.seq_file* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @trace_flags, align 4
  %7 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @print_lat_header(%struct.seq_file* %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TRACE_GRAPH_PRINT_ABS_TIME, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @TRACE_GRAPH_PRINT_CPU, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = call i32 @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @TRACE_GRAPH_PRINT_PROC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TRACE_GRAPH_PRINT_DURATION, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = call i32 @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @TRACE_GRAPH_PRINT_ABS_TIME, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %55
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @TRACE_GRAPH_PRINT_CPU, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = call i32 @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @TRACE_GRAPH_PRINT_PROC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = call i32 @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %88 = call i32 @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @TRACE_GRAPH_PRINT_DURATION, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = call i32 @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = call i32 @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print_lat_header(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
