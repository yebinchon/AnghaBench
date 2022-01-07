; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_set_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.utrace_engine = type { i32 }

@PTRACE_O_MASK = common dso_local global i64 0, align 8
@PTRACE_O_SYSEMU = common dso_local global i64 0, align 8
@PTRACE_O_DETACHED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.utrace_engine*, i64)* @ptrace_set_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_set_options(%struct.task_struct* %0, %struct.utrace_engine* %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.utrace_engine*, align 8
  %6 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.utrace_engine* %1, %struct.utrace_engine** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* @PTRACE_O_MASK, align 8
  %8 = load i64, i64* @PTRACE_O_SYSEMU, align 8
  %9 = load i64, i64* @PTRACE_O_DETACHED, align 8
  %10 = or i64 %8, %9
  %11 = and i64 %7, %10
  %12 = call i32 @BUILD_BUG_ON(i64 %11)
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = load %struct.utrace_engine*, %struct.utrace_engine** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PTRACE_O_MASK, align 8
  %17 = and i64 %15, %16
  %18 = call i32 @ptrace_set_events(%struct.task_struct* %13, %struct.utrace_engine* %14, i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @PTRACE_O_MASK, align 8
  %21 = xor i64 %20, -1
  %22 = and i64 %19, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ]
  ret i32 %29
}

declare dso_local i32 @BUILD_BUG_ON(i64) #1

declare dso_local i32 @ptrace_set_events(%struct.task_struct*, %struct.utrace_engine*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
