; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_report_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_report_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrace_engine = type { i32 }
%struct.linux_binfmt = type { i32 }
%struct.linux_binprm = type { i32 }
%struct.pt_regs = type { i32 }
%struct.ptrace_context = type { i32 }

@PTRACE_O_TRACEEXEC = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@UTRACE_RESUME = common dso_local global i32 0, align 4
@PTRACE_EVENT_EXEC = common dso_local global i32 0, align 4
@UTRACE_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.utrace_engine*, %struct.linux_binfmt*, %struct.linux_binprm*, %struct.pt_regs*)* @ptrace_report_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_report_exec(i32 %0, %struct.utrace_engine* %1, %struct.linux_binfmt* %2, %struct.linux_binprm* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.utrace_engine*, align 8
  %9 = alloca %struct.linux_binfmt*, align 8
  %10 = alloca %struct.linux_binprm*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.ptrace_context*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.utrace_engine* %1, %struct.utrace_engine** %8, align 8
  store %struct.linux_binfmt* %2, %struct.linux_binfmt** %9, align 8
  store %struct.linux_binprm* %3, %struct.linux_binprm** %10, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %11, align 8
  %13 = load %struct.utrace_engine*, %struct.utrace_engine** %8, align 8
  %14 = call %struct.ptrace_context* @ptrace_context(%struct.utrace_engine* %13)
  store %struct.ptrace_context* %14, %struct.ptrace_context** %12, align 8
  %15 = load %struct.ptrace_context*, %struct.ptrace_context** %12, align 8
  %16 = call i32 @ptrace_event_pending(%struct.ptrace_context* %15)
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.ptrace_context*, %struct.ptrace_context** %12, align 8
  %19 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PTRACE_O_TRACEEXEC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @SIGTRAP, align 4
  %26 = load i32, i32* @current, align 4
  %27 = call i32 @send_sig(i32 %25, i32 %26, i32 0)
  %28 = load i32, i32* @UTRACE_RESUME, align 4
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %5
  %30 = load %struct.ptrace_context*, %struct.ptrace_context** %12, align 8
  %31 = load i32, i32* @PTRACE_EVENT_EXEC, align 4
  %32 = call i32 @set_stop_code(%struct.ptrace_context* %30, i32 %31)
  %33 = load i32, i32* @UTRACE_STOP, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.ptrace_context* @ptrace_context(%struct.utrace_engine*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ptrace_event_pending(%struct.ptrace_context*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @set_stop_code(%struct.ptrace_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
