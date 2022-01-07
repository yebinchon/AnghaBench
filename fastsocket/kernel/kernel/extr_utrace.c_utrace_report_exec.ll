; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_report_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_utrace_report_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.linux_binfmt = type { i32 }
%struct.linux_binprm = type { i32 }
%struct.pt_regs = type { i32 }
%struct.utrace = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@report = common dso_local global i32 0, align 4
@EXEC = common dso_local global i32 0, align 4
@report_exec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @utrace_report_exec(%struct.linux_binfmt* %0, %struct.linux_binprm* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.linux_binfmt*, align 8
  %5 = alloca %struct.linux_binprm*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.utrace*, align 8
  store %struct.linux_binfmt* %0, %struct.linux_binfmt** %4, align 8
  store %struct.linux_binprm* %1, %struct.linux_binprm** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %9, %struct.task_struct** %7, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %11 = call %struct.utrace* @task_utrace_struct(%struct.task_struct* %10)
  store %struct.utrace* %11, %struct.utrace** %8, align 8
  %12 = load i32, i32* @report, align 4
  %13 = call i32 @INIT_REPORT(i32 %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %15 = load %struct.utrace*, %struct.utrace** %8, align 8
  %16 = load i32, i32* @EXEC, align 4
  %17 = call i32 @UTRACE_EVENT(i32 %16)
  %18 = load i32, i32* @report_exec, align 4
  %19 = load %struct.linux_binfmt*, %struct.linux_binfmt** %4, align 8
  %20 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %22 = call i32 @REPORT(%struct.task_struct* %14, %struct.utrace* %15, i32* @report, i32 %17, i32 %18, %struct.linux_binfmt* %19, %struct.linux_binprm* %20, %struct.pt_regs* %21)
  ret void
}

declare dso_local %struct.utrace* @task_utrace_struct(%struct.task_struct*) #1

declare dso_local i32 @INIT_REPORT(i32) #1

declare dso_local i32 @REPORT(%struct.task_struct*, %struct.utrace*, i32*, i32, i32, %struct.linux_binfmt*, %struct.linux_binprm*, %struct.pt_regs*) #1

declare dso_local i32 @UTRACE_EVENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
