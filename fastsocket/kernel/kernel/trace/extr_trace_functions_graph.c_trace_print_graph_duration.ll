; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_trace_print_graph_duration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_trace_print_graph_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%03lu\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" us \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_print_graph_duration(i64 %0, %struct.trace_seq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [21 x i8], align 16
  %8 = alloca [5 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @do_div(i64 %12, i32 1000)
  store i64 %13, i64* %6, align 8
  %14 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %18 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %19 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %23, i32* %3, align 4
  br label %72

24:                                               ; preds = %2
  %25 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 7
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 8, %31
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @snprintf(i8* %30, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %37 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %41, i32* %3, align 4
  br label %72

42:                                               ; preds = %29
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %44 = call i32 @strlen(i8* %43)
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %42, %24
  %48 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %49 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %53, i32* %3, align 4
  br label %72

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %67, %54
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 7
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %61 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %56

70:                                               ; preds = %56
  %71 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %64, %52, %40, %22
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
