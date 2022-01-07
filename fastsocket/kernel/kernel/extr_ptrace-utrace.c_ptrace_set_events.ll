; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_set_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_set_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.utrace_engine = type { i32 }
%struct.ptrace_context = type { i64 }

@QUIESCE = common dso_local global i32 0, align 4
@CLONE = common dso_local global i32 0, align 4
@EXEC = common dso_local global i32 0, align 4
@UTRACE_EVENT_SIGNAL_ALL = common dso_local global i64 0, align 8
@PTRACE_O_TRACEEXIT = common dso_local global i64 0, align 8
@EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.utrace_engine*, i64)* @ptrace_set_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_set_events(%struct.task_struct* %0, %struct.utrace_engine* %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.utrace_engine*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ptrace_context*, align 8
  %8 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.utrace_engine* %1, %struct.utrace_engine** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.utrace_engine*, %struct.utrace_engine** %5, align 8
  %10 = call %struct.ptrace_context* @ptrace_context(%struct.utrace_engine* %9)
  store %struct.ptrace_context* %10, %struct.ptrace_context** %7, align 8
  %11 = load i32, i32* @QUIESCE, align 4
  %12 = call i64 @UTRACE_EVENT(i32 %11)
  %13 = load i32, i32* @CLONE, align 4
  %14 = call i64 @UTRACE_EVENT(i32 %13)
  %15 = or i64 %12, %14
  %16 = load i32, i32* @EXEC, align 4
  %17 = call i64 @UTRACE_EVENT(i32 %16)
  %18 = or i64 %15, %17
  %19 = load i64, i64* @UTRACE_EVENT_SIGNAL_ALL, align 8
  %20 = or i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.ptrace_context*, %struct.ptrace_context** %7, align 8
  %23 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @PTRACE_O_TRACEEXIT, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* @EXIT, align 4
  %30 = call i64 @UTRACE_EVENT(i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %35 = load %struct.utrace_engine*, %struct.utrace_engine** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @utrace_set_events(%struct.task_struct* %34, %struct.utrace_engine* %35, i64 %36)
  ret i32 %37
}

declare dso_local %struct.ptrace_context* @ptrace_context(%struct.utrace_engine*) #1

declare dso_local i64 @UTRACE_EVENT(i32) #1

declare dso_local i32 @utrace_set_events(%struct.task_struct*, %struct.utrace_engine*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
