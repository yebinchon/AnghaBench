; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_wake_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_wake_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.utrace_engine = type { i32 }
%struct.TYPE_4__ = type { i64 }

@SIGNAL_STOP_STOPPED = common dso_local global i32 0, align 4
@UTRACE_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.utrace_engine*, i32, i32)* @ptrace_wake_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_wake_up(%struct.task_struct* %0, %struct.utrace_engine* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.utrace_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.utrace_engine* %1, %struct.utrace_engine** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %4
  %13 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %14 = call i64 @lock_task_sighand(%struct.task_struct* %13, i64* %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* @SIGNAL_STOP_STOPPED, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %18
  store i32 %24, i32* %22, align 4
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = call i32 @unlock_task_sighand(%struct.task_struct* %25, i64* %9)
  br label %27

27:                                               ; preds = %16, %12
  br label %28

28:                                               ; preds = %27, %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @UTRACE_REPORT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %34 = call %struct.TYPE_4__* @ptrace_context(%struct.utrace_engine* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %38 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @utrace_control(%struct.task_struct* %37, %struct.utrace_engine* %38, i32 %39)
  ret i32 %40
}

declare dso_local i64 @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local %struct.TYPE_4__* @ptrace_context(%struct.utrace_engine*) #1

declare dso_local i32 @utrace_control(%struct.task_struct*, %struct.utrace_engine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
