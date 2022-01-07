; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_print_bin_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_print_bin_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, %struct.trace_entry*, %struct.trace_seq }
%struct.trace_entry = type { i32, i32 }
%struct.trace_seq = type { i32 }
%struct.trace_event = type { i32 (%struct.trace_iterator*, i32)* }

@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_CONTEXT_INFO = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @print_bin_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_bin_fmt(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca %struct.trace_entry*, align 8
  %5 = alloca %struct.trace_event*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %6 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %7 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %6, i32 0, i32 3
  store %struct.trace_seq* %7, %struct.trace_seq** %3, align 8
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %9 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %8, i32 0, i32 2
  %10 = load %struct.trace_entry*, %struct.trace_entry** %9, align 8
  store %struct.trace_entry* %10, %struct.trace_entry** %4, align 8
  %11 = load i32, i32* @trace_flags, align 4
  %12 = load i32, i32* @TRACE_ITER_CONTEXT_INFO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %17 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %18 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SEQ_PUT_FIELD_RET(%struct.trace_seq* %16, i32 %19)
  %21 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %23 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SEQ_PUT_FIELD_RET(%struct.trace_seq* %21, i32 %24)
  %26 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %27 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %28 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SEQ_PUT_FIELD_RET(%struct.trace_seq* %26, i32 %29)
  br label %31

31:                                               ; preds = %15, %1
  %32 = load %struct.trace_entry*, %struct.trace_entry** %4, align 8
  %33 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.trace_event* @ftrace_find_event(i32 %34)
  store %struct.trace_event* %35, %struct.trace_event** %5, align 8
  %36 = load %struct.trace_event*, %struct.trace_event** %5, align 8
  %37 = icmp ne %struct.trace_event* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.trace_event*, %struct.trace_event** %5, align 8
  %40 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %39, i32 0, i32 0
  %41 = load i32 (%struct.trace_iterator*, i32)*, i32 (%struct.trace_iterator*, i32)** %40, align 8
  %42 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %43 = call i32 %41(%struct.trace_iterator* %42, i32 0)
  br label %46

44:                                               ; preds = %31
  %45 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi i32 [ %43, %38 ], [ %45, %44 ]
  ret i32 %47
}

declare dso_local i32 @SEQ_PUT_FIELD_RET(%struct.trace_seq*, i32) #1

declare dso_local %struct.trace_event* @ftrace_find_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
