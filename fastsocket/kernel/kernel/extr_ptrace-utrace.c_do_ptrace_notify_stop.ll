; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_do_ptrace_notify_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_do_ptrace_notify_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptrace_context = type { i32 }
%struct.task_struct = type { i32 }

@PTRACE_EVENT_MASK = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@CLD_TRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptrace_context*, %struct.task_struct*)* @do_ptrace_notify_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ptrace_notify_stop(%struct.ptrace_context* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.ptrace_context*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.ptrace_context* %0, %struct.ptrace_context** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = load %struct.ptrace_context*, %struct.ptrace_context** %3, align 8
  %6 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PTRACE_EVENT_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = call i32 @read_lock(i32* @tasklist_lock)
  %20 = call i32 (...) @preempt_disable()
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = call i64 @task_ptrace(%struct.task_struct* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = load i32, i32* @CLD_TRAPPED, align 4
  %27 = call i32 @do_notify_parent_cldstop(%struct.task_struct* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = call i32 @read_unlock(i32* @tasklist_lock)
  %30 = call i32 (...) @preempt_enable_no_resched()
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @task_ptrace(%struct.task_struct*) #1

declare dso_local i32 @do_notify_parent_cldstop(%struct.task_struct*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
