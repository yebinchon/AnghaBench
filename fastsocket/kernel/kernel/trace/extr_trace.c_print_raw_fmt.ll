; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_print_raw_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_print_raw_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, %struct.trace_entry*, %struct.trace_seq }
%struct.trace_entry = type { i32, i32 }
%struct.trace_seq = type { i32 }
%struct.trace_event = type { i32 (%struct.trace_iterator*, i32)* }

@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_CONTEXT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%d %d %llu \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d ?\0A\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @print_raw_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_raw_fmt(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca %struct.trace_entry*, align 8
  %6 = alloca %struct.trace_event*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %7 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %8 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %7, i32 0, i32 3
  store %struct.trace_seq* %8, %struct.trace_seq** %4, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 2
  %11 = load %struct.trace_entry*, %struct.trace_entry** %10, align 8
  store %struct.trace_entry* %11, %struct.trace_entry** %5, align 8
  %12 = load i32, i32* @trace_flags, align 4
  %13 = load i32, i32* @TRACE_ITER_CONTEXT_INFO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %18 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %19 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %22 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %25 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (%struct.trace_seq*, i8*, i32, ...) @trace_seq_printf(%struct.trace_seq* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %54

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %33 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.trace_event* @ftrace_find_event(i32 %34)
  store %struct.trace_event* %35, %struct.trace_event** %6, align 8
  %36 = load %struct.trace_event*, %struct.trace_event** %6, align 8
  %37 = icmp ne %struct.trace_event* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.trace_event*, %struct.trace_event** %6, align 8
  %40 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %39, i32 0, i32 0
  %41 = load i32 (%struct.trace_iterator*, i32)*, i32 (%struct.trace_iterator*, i32)** %40, align 8
  %42 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %43 = call i32 %41(%struct.trace_iterator* %42, i32 0)
  store i32 %43, i32* %2, align 4
  br label %56

44:                                               ; preds = %31
  %45 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %46 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %47 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.trace_seq*, i8*, i32, ...) @trace_seq_printf(%struct.trace_seq* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %51, %29
  %55 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %52, %38
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, ...) #1

declare dso_local %struct.trace_event* @ftrace_find_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
