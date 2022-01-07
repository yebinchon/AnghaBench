; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_overhead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_graph_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@TRACE_GRAPH_PRINT_DURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@TRACE_GRAPH_PRINT_OVERHEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"! \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.trace_seq*, i32)* @print_graph_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_overhead(i64 %0, %struct.trace_seq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TRACE_GRAPH_PRINT_DURATION, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %40

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %18 = call i32 @trace_seq_printf(%struct.trace_seq* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  br label %40

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @TRACE_GRAPH_PRINT_OVERHEAD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = icmp ugt i64 %25, 100000
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %29 = call i32 @trace_seq_printf(%struct.trace_seq* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %4, align 4
  br label %40

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = icmp ugt i64 %31, 10000
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %35 = call i32 @trace_seq_printf(%struct.trace_seq* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %4, align 4
  br label %40

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %39 = call i32 @trace_seq_printf(%struct.trace_seq* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %33, %27, %16, %12
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
