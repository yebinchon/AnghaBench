; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_do_report_syscall_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_utrace.c_do_report_syscall_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.task_struct = type { i32 }
%struct.utrace = type { i64 }
%struct.utrace_report = type { i32, i32, i32, i32, i32 }

@_reverse = common dso_local global i32 0, align 4
@SYSCALL_ENTRY = common dso_local global i32 0, align 4
@report_syscall_entry = common dso_local global i32 0, align 4
@engine = common dso_local global i32 0, align 4
@UTRACE_STOP = common dso_local global i32 0, align 4
@UTRACE_SYSCALL_ABORT = common dso_local global i32 0, align 4
@UTRACE_REPORT = common dso_local global i64 0, align 8
@UTRACE_RESUME = common dso_local global i32 0, align 4
@UTRACE_SYSCALL_RESUMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, %struct.task_struct*, %struct.utrace*, %struct.utrace_report*, i32)* @do_report_syscall_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_report_syscall_entry(%struct.pt_regs* %0, %struct.task_struct* %1, %struct.utrace* %2, %struct.utrace_report* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.utrace*, align 8
  %10 = alloca %struct.utrace_report*, align 8
  %11 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %7, align 8
  store %struct.task_struct* %1, %struct.task_struct** %8, align 8
  store %struct.utrace* %2, %struct.utrace** %9, align 8
  store %struct.utrace_report* %3, %struct.utrace_report** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.utrace*, %struct.utrace** %9, align 8
  %13 = call i32 @start_report(%struct.utrace* %12)
  %14 = load i32, i32* @_reverse, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %16 = load %struct.utrace*, %struct.utrace** %9, align 8
  %17 = load %struct.utrace_report*, %struct.utrace_report** %10, align 8
  %18 = load i32, i32* @SYSCALL_ENTRY, align 4
  %19 = call i32 @UTRACE_EVENT(i32 %18)
  %20 = load i32, i32* @report_syscall_entry, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.utrace_report*, %struct.utrace_report** %10, align 8
  %23 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = load %struct.utrace_report*, %struct.utrace_report** %10, align 8
  %27 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = load i32, i32* @engine, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %32 = call i32 @REPORT_CALLBACKS(i32 %14, %struct.task_struct* %15, %struct.utrace* %16, %struct.utrace_report* %17, i32 %19, i32 %20, i32 %29, i32 %30, %struct.pt_regs* %31)
  %33 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %34 = load %struct.utrace*, %struct.utrace** %9, align 8
  %35 = load %struct.utrace_report*, %struct.utrace_report** %10, align 8
  %36 = call i32 @finish_report(%struct.task_struct* %33, %struct.utrace* %34, %struct.utrace_report* %35, i32 0)
  %37 = load %struct.utrace_report*, %struct.utrace_report** %10, align 8
  %38 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UTRACE_STOP, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %76

43:                                               ; preds = %5
  %44 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %45 = load %struct.utrace*, %struct.utrace** %9, align 8
  %46 = load %struct.utrace_report*, %struct.utrace_report** %10, align 8
  %47 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @utrace_stop(%struct.task_struct* %44, %struct.utrace* %45, i32 %48)
  %50 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %51 = call i64 @fatal_signal_pending(%struct.task_struct* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @UTRACE_SYSCALL_ABORT, align 4
  %55 = load %struct.utrace_report*, %struct.utrace_report** %10, align 8
  %56 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %75

57:                                               ; preds = %43
  %58 = load %struct.utrace*, %struct.utrace** %9, align 8
  %59 = getelementptr inbounds %struct.utrace, %struct.utrace* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UTRACE_REPORT, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.utrace_report*, %struct.utrace_report** %10, align 8
  %65 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %64, i32 0, i32 3
  store i32 0, i32* %65, align 4
  %66 = load %struct.utrace_report*, %struct.utrace_report** %10, align 8
  %67 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %66, i32 0, i32 4
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* @UTRACE_RESUME, align 4
  %69 = load %struct.utrace_report*, %struct.utrace_report** %10, align 8
  %70 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.utrace_report*, %struct.utrace_report** %10, align 8
  %72 = getelementptr inbounds %struct.utrace_report, %struct.utrace_report* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @UTRACE_SYSCALL_RESUMED, align 4
  store i32 %73, i32* %6, align 4
  br label %76

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %53
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %63, %42
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @start_report(%struct.utrace*) #1

declare dso_local i32 @REPORT_CALLBACKS(i32, %struct.task_struct*, %struct.utrace*, %struct.utrace_report*, i32, i32, i32, i32, %struct.pt_regs*) #1

declare dso_local i32 @UTRACE_EVENT(i32) #1

declare dso_local i32 @finish_report(%struct.task_struct*, %struct.utrace*, %struct.utrace_report*, i32) #1

declare dso_local i32 @utrace_stop(%struct.task_struct*, %struct.utrace*, i32) #1

declare dso_local i64 @fatal_signal_pending(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
