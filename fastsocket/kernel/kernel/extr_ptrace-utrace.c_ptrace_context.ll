; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptrace_context = type { i32 }
%struct.utrace_engine = type { %struct.ptrace_context* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ptrace_context* (%struct.utrace_engine*)* @ptrace_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ptrace_context* @ptrace_context(%struct.utrace_engine* %0) #0 {
  %2 = alloca %struct.utrace_engine*, align 8
  store %struct.utrace_engine* %0, %struct.utrace_engine** %2, align 8
  %3 = load %struct.utrace_engine*, %struct.utrace_engine** %2, align 8
  %4 = getelementptr inbounds %struct.utrace_engine, %struct.utrace_engine* %3, i32 0, i32 0
  %5 = load %struct.ptrace_context*, %struct.ptrace_context** %4, align 8
  ret %struct.ptrace_context* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
