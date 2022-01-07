; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_stats.h_account_group_exec_runtime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_stats.h_account_group_exec_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.signal_struct* }
%struct.signal_struct = type { %struct.thread_group_cputimer }
%struct.thread_group_cputimer = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i64)* @account_group_exec_runtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @account_group_exec_runtime(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.thread_group_cputimer*, align 8
  %6 = alloca %struct.signal_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = load %struct.signal_struct*, %struct.signal_struct** %8, align 8
  store %struct.signal_struct* %9, %struct.signal_struct** %6, align 8
  %10 = call i32 (...) @barrier()
  %11 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %12 = icmp ne %struct.signal_struct* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %20 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %19, i32 0, i32 0
  store %struct.thread_group_cputimer* %20, %struct.thread_group_cputimer** %5, align 8
  %21 = load %struct.thread_group_cputimer*, %struct.thread_group_cputimer** %5, align 8
  %22 = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %39

26:                                               ; preds = %18
  %27 = load %struct.thread_group_cputimer*, %struct.thread_group_cputimer** %5, align 8
  %28 = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.thread_group_cputimer*, %struct.thread_group_cputimer** %5, align 8
  %32 = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %30
  store i64 %35, i64* %33, align 8
  %36 = load %struct.thread_group_cputimer*, %struct.thread_group_cputimer** %5, align 8
  %37 = getelementptr inbounds %struct.thread_group_cputimer, %struct.thread_group_cputimer* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %26, %25, %17
  ret void
}

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
