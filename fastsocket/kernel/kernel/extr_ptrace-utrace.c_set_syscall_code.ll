; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_set_syscall_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_set_syscall_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptrace_context = type { i32, i32 }

@PTRACE_EVENT_SYSCALL = common dso_local global i32 0, align 4
@PTRACE_O_TRACESYSGOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptrace_context*)* @set_syscall_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_syscall_code(%struct.ptrace_context* %0) #0 {
  %2 = alloca %struct.ptrace_context*, align 8
  store %struct.ptrace_context* %0, %struct.ptrace_context** %2, align 8
  %3 = load %struct.ptrace_context*, %struct.ptrace_context** %2, align 8
  %4 = load i32, i32* @PTRACE_EVENT_SYSCALL, align 4
  %5 = call i32 @set_stop_code(%struct.ptrace_context* %3, i32 %4)
  %6 = load %struct.ptrace_context*, %struct.ptrace_context** %2, align 8
  %7 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PTRACE_O_TRACESYSGOOD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.ptrace_context*, %struct.ptrace_context** %2, align 8
  %14 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, 128
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @set_stop_code(%struct.ptrace_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
