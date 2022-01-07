; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_report_syscall_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_report_syscall_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct.utrace = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@report = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@UTRACE_SYSCALL_ABORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utrace_report_syscall_entry(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.utrace*, align 8
  %5 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %6, %struct.task_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = call %struct.utrace* @task_utrace_struct(%struct.task_struct* %7)
  store %struct.utrace* %8, %struct.utrace** %4, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @report, i32 0, i32 0), align 4
  %10 = call i32 @INIT_REPORT(i32 %9)
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %17, %1
  %12 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = load %struct.utrace*, %struct.utrace** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @do_report_syscall_entry(%struct.pt_regs* %12, %struct.task_struct* %13, %struct.utrace* %14, %struct.TYPE_4__* @report, i64 %15)
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %11, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @report, i32 0, i32 0), align 4
  %22 = call i64 @utrace_syscall_action(i32 %21)
  %23 = load i64, i64* @UTRACE_SYSCALL_ABORT, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local %struct.utrace* @task_utrace_struct(%struct.task_struct*) #1

declare dso_local i32 @INIT_REPORT(i32) #1

declare dso_local i64 @do_report_syscall_entry(%struct.pt_regs*, %struct.task_struct*, %struct.utrace*, %struct.TYPE_4__*, i64) #1

declare dso_local i64 @utrace_syscall_action(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
