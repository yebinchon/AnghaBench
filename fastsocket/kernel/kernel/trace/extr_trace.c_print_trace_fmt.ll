; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_print_trace_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_print_trace_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_entry*, %struct.trace_seq }
%struct.trace_entry = type { i32 }
%struct.trace_seq = type { i32 }
%struct.trace_event = type { i32 (%struct.trace_iterator*, i64)* }

@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_SYM_MASK = common dso_local global i32 0, align 4
@TRACE_ITER_CONTEXT_INFO = common dso_local global i32 0, align 4
@TRACE_FILE_LAT_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown type %d\0A\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @print_trace_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_trace_fmt(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.trace_entry*, align 8
  %7 = alloca %struct.trace_event*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %9 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %8, i32 0, i32 2
  store %struct.trace_seq* %9, %struct.trace_seq** %4, align 8
  %10 = load i32, i32* @trace_flags, align 4
  %11 = load i32, i32* @TRACE_ITER_SYM_MASK, align 4
  %12 = and i32 %10, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %14, i32 0, i32 1
  %16 = load %struct.trace_entry*, %struct.trace_entry** %15, align 8
  store %struct.trace_entry* %16, %struct.trace_entry** %6, align 8
  %17 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %18 = call i32 @test_cpu_buff_start(%struct.trace_iterator* %17)
  %19 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %20 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.trace_event* @ftrace_find_event(i32 %21)
  store %struct.trace_event* %22, %struct.trace_event** %7, align 8
  %23 = load i32, i32* @trace_flags, align 4
  %24 = load i32, i32* @TRACE_ITER_CONTEXT_INFO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %1
  %28 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %29 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TRACE_FILE_LAT_FMT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %36 = call i32 @trace_print_lat_context(%struct.trace_iterator* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %67

39:                                               ; preds = %34
  br label %46

40:                                               ; preds = %27
  %41 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %42 = call i32 @trace_print_context(%struct.trace_iterator* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %67

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %39
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.trace_event*, %struct.trace_event** %7, align 8
  %49 = icmp ne %struct.trace_event* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.trace_event*, %struct.trace_event** %7, align 8
  %52 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %51, i32 0, i32 0
  %53 = load i32 (%struct.trace_iterator*, i64)*, i32 (%struct.trace_iterator*, i64)** %52, align 8
  %54 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 %53(%struct.trace_iterator* %54, i64 %55)
  store i32 %56, i32* %2, align 4
  br label %69

57:                                               ; preds = %47
  %58 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %59 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %60 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @trace_seq_printf(%struct.trace_seq* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %64, %44, %38
  %68 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %65, %50
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @test_cpu_buff_start(%struct.trace_iterator*) #1

declare dso_local %struct.trace_event* @ftrace_find_event(i32) #1

declare dso_local i32 @trace_print_lat_context(%struct.trace_iterator*) #1

declare dso_local i32 @trace_print_context(%struct.trace_iterator*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
