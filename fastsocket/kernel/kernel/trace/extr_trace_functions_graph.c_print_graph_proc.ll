; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@TRACE_GRAPH_PROCINFO_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, i32)* @print_graph_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_proc(%struct.trace_seq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [11 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @TASK_COMM_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @trace_find_cmdline(i32 %18, i8* %17)
  %20 = getelementptr inbounds i8, i8* %17, i64 7
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @strlen(i8* %17)
  %25 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %24, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @TRACE_GRAPH_PROCINFO_LENGTH, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @TRACE_GRAPH_PROCINFO_LENGTH, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %2
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sdiv i32 %39, 2
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %44 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %82

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %55 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %56 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %17, i8* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %82

61:                                               ; preds = %53
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sdiv i32 %65, 2
  %67 = sub nsw i32 %64, %66
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %71 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %82

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %82

82:                                               ; preds = %80, %74, %59, %47
  %83 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_find_cmdline(i32, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
