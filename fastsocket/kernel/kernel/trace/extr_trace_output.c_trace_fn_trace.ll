; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_fn_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_fn_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.ftrace_entry = type { i64, i64 }

@TRACE_ITER_PRINT_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" <-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32)* @trace_fn_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_fn_trace(%struct.trace_iterator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ftrace_entry*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %9 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %8, i32 0, i32 1
  store %struct.trace_seq* %9, %struct.trace_seq** %7, align 8
  %10 = load %struct.ftrace_entry*, %struct.ftrace_entry** %6, align 8
  %11 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %12 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @trace_assign_type(%struct.ftrace_entry* %10, i32 %13)
  %15 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %16 = load %struct.ftrace_entry*, %struct.ftrace_entry** %6, align 8
  %17 = getelementptr inbounds %struct.ftrace_entry, %struct.ftrace_entry* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @seq_print_ip_sym(%struct.trace_seq* %15, i64 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %55

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @TRACE_ITER_PRINT_PARENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load %struct.ftrace_entry*, %struct.ftrace_entry** %6, align 8
  %30 = getelementptr inbounds %struct.ftrace_entry, %struct.ftrace_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %35 = call i32 @trace_seq_printf(%struct.trace_seq* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %55

38:                                               ; preds = %33
  %39 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %40 = load %struct.ftrace_entry*, %struct.ftrace_entry** %6, align 8
  %41 = getelementptr inbounds %struct.ftrace_entry, %struct.ftrace_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @seq_print_ip_sym(%struct.trace_seq* %39, i64 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %55

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %28, %23
  %49 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %50 = call i32 @trace_seq_printf(%struct.trace_seq* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %52, %46, %37, %22
  %56 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @trace_assign_type(%struct.ftrace_entry*, i32) #1

declare dso_local i32 @seq_print_ip_sym(%struct.trace_seq*, i64, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
