; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_report_syscall_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_report_syscall_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }
%struct.utrace = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@report = common dso_local global i32 0, align 4
@SYSCALL_EXIT = common dso_local global i32 0, align 4
@report_syscall_exit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @utrace_report_syscall_exit(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.utrace*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %5, %struct.task_struct** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = call %struct.utrace* @task_utrace_struct(%struct.task_struct* %6)
  store %struct.utrace* %7, %struct.utrace** %4, align 8
  %8 = load i32, i32* @report, align 4
  %9 = call i32 @INIT_REPORT(i32 %8)
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = load %struct.utrace*, %struct.utrace** %4, align 8
  %12 = load i32, i32* @SYSCALL_EXIT, align 4
  %13 = call i32 @UTRACE_EVENT(i32 %12)
  %14 = load i32, i32* @report_syscall_exit, align 4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %16 = call i32 @REPORT(%struct.task_struct* %10, %struct.utrace* %11, i32* @report, i32 %13, i32 %14, %struct.pt_regs* %15)
  ret void
}

declare dso_local %struct.utrace* @task_utrace_struct(%struct.task_struct*) #1

declare dso_local i32 @INIT_REPORT(i32) #1

declare dso_local i32 @REPORT(%struct.task_struct*, %struct.utrace*, i32*, i32, i32, %struct.pt_regs*) #1

declare dso_local i32 @UTRACE_EVENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
