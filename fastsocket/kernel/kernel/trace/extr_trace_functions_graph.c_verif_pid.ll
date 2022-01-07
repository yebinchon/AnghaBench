; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_verif_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_verif_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.fgraph_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c" ------------------------------------------\0A\00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\0A ------------------------------------------\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, i32, i32, %struct.fgraph_data*)* @verif_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verif_pid(%struct.trace_seq* %0, i32 %1, i32 %2, %struct.fgraph_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fgraph_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.fgraph_data* %3, %struct.fgraph_data** %9, align 8
  %13 = load %struct.fgraph_data*, %struct.fgraph_data** %9, align 8
  %14 = icmp ne %struct.fgraph_data* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %16, i32* %5, align 4
  br label %87

17:                                               ; preds = %4
  %18 = load %struct.fgraph_data*, %struct.fgraph_data** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.TYPE_2__* @per_cpu_ptr(%struct.fgraph_data* %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %27, i32* %5, align 4
  br label %87

28:                                               ; preds = %17
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %36, i32* %5, align 4
  br label %87

37:                                               ; preds = %28
  %38 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %39 = call i32 @trace_seq_printf(%struct.trace_seq* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %43, i32* %5, align 4
  br label %87

44:                                               ; preds = %37
  %45 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @print_graph_cpu(%struct.trace_seq* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %52, i32* %5, align 4
  br label %87

53:                                               ; preds = %44
  %54 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @print_graph_proc(%struct.trace_seq* %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %61, i32* %5, align 4
  br label %87

62:                                               ; preds = %53
  %63 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %64 = call i32 @trace_seq_printf(%struct.trace_seq* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %68, i32* %5, align 4
  br label %87

69:                                               ; preds = %62
  %70 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @print_graph_proc(%struct.trace_seq* %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %77, i32* %5, align 4
  br label %87

78:                                               ; preds = %69
  %79 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %80 = call i32 @trace_seq_printf(%struct.trace_seq* %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %84, i32* %5, align 4
  br label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %83, %76, %67, %60, %51, %42, %35, %26, %15
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_2__* @per_cpu_ptr(%struct.fgraph_data*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*) #1

declare dso_local i32 @print_graph_cpu(%struct.trace_seq*, i32) #1

declare dso_local i32 @print_graph_proc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
