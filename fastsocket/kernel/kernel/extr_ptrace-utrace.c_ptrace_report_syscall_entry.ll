; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_report_syscall_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_report_syscall_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrace_engine = type { i32 }
%struct.pt_regs = type { i32 }
%struct.ptrace_context = type { i32 }

@UTRACE_SYSCALL_RESUMED = common dso_local global i32 0, align 4
@PTRACE_O_SYSEMU = common dso_local global i32 0, align 4
@UTRACE_SYSCALL_ABORT = common dso_local global i32 0, align 4
@UTRACE_REPORT = common dso_local global i32 0, align 4
@UTRACE_RESUME = common dso_local global i32 0, align 4
@UTRACE_SYSCALL_RUN = common dso_local global i32 0, align 4
@UTRACE_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.utrace_engine*, %struct.pt_regs*)* @ptrace_report_syscall_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_report_syscall_entry(i32 %0, %struct.utrace_engine* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.utrace_engine*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca %struct.ptrace_context*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.utrace_engine* %1, %struct.utrace_engine** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %9 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %10 = call %struct.ptrace_context* @ptrace_context(%struct.utrace_engine* %9)
  store %struct.ptrace_context* %10, %struct.ptrace_context** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @UTRACE_SYSCALL_RESUMED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %17 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PTRACE_O_SYSEMU, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @UTRACE_SYSCALL_ABORT, align 4
  %25 = load i32, i32* @UTRACE_REPORT, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  br label %53

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @utrace_syscall_action(i32 %28)
  %30 = load i32, i32* @UTRACE_RESUME, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %3
  %33 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %34 = call i32 @ptrace_event_pending(%struct.ptrace_context* %33)
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %37 = call i32 @set_syscall_code(%struct.ptrace_context* %36)
  %38 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %39 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PTRACE_O_SYSEMU, align 4
  %42 = and i32 %40, %41
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32, i32* @UTRACE_SYSCALL_ABORT, align 4
  %47 = load i32, i32* @UTRACE_REPORT, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %32
  %50 = load i32, i32* @UTRACE_SYSCALL_RUN, align 4
  %51 = load i32, i32* @UTRACE_STOP, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %45, %27, %23
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.ptrace_context* @ptrace_context(%struct.utrace_engine*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @utrace_syscall_action(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ptrace_event_pending(%struct.ptrace_context*) #1

declare dso_local i32 @set_syscall_code(%struct.ptrace_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
