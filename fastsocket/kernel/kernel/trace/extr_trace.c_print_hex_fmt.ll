; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_print_hex_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_print_hex_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, %struct.trace_entry*, %struct.trace_seq }
%struct.trace_entry = type { i32, i32 }
%struct.trace_seq = type { i32 }
%struct.trace_event = type { i32 (%struct.trace_iterator*, i32)* }

@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_CONTEXT_INFO = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @print_hex_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_hex_fmt(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.trace_entry*, align 8
  %7 = alloca %struct.trace_event*, align 8
  %8 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 3
  store %struct.trace_seq* %10, %struct.trace_seq** %4, align 8
  store i8 10, i8* %5, align 1
  %11 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %12 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %11, i32 0, i32 2
  %13 = load %struct.trace_entry*, %struct.trace_entry** %12, align 8
  store %struct.trace_entry* %13, %struct.trace_entry** %6, align 8
  %14 = load i32, i32* @trace_flags, align 4
  %15 = load i32, i32* @TRACE_ITER_CONTEXT_INFO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %20 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %21 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SEQ_PUT_HEX_FIELD_RET(%struct.trace_seq* %19, i32 %22)
  %24 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %25 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %26 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SEQ_PUT_HEX_FIELD_RET(%struct.trace_seq* %24, i32 %27)
  %29 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %30 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %31 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @SEQ_PUT_HEX_FIELD_RET(%struct.trace_seq* %29, i32 %32)
  br label %34

34:                                               ; preds = %18, %1
  %35 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %36 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.trace_event* @ftrace_find_event(i32 %37)
  store %struct.trace_event* %38, %struct.trace_event** %7, align 8
  %39 = load %struct.trace_event*, %struct.trace_event** %7, align 8
  %40 = icmp ne %struct.trace_event* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.trace_event*, %struct.trace_event** %7, align 8
  %43 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %42, i32 0, i32 0
  %44 = load i32 (%struct.trace_iterator*, i32)*, i32 (%struct.trace_iterator*, i32)** %43, align 8
  %45 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %46 = call i32 %44(%struct.trace_iterator* %45, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %58

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %55 = load i8, i8* %5, align 1
  %56 = call i32 @SEQ_PUT_FIELD_RET(%struct.trace_seq* %54, i8 zeroext %55)
  %57 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @SEQ_PUT_HEX_FIELD_RET(%struct.trace_seq*, i32) #1

declare dso_local %struct.trace_event* @ftrace_find_event(i32) #1

declare dso_local i32 @SEQ_PUT_FIELD_RET(%struct.trace_seq*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
