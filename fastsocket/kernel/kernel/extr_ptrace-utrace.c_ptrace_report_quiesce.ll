; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_report_quiesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ptrace-utrace.c_ptrace_report_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrace_engine = type { i32 }
%struct.ptrace_context = type { i32 }

@UTRACE_STOP = common dso_local global i32 0, align 4
@UTRACE_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.utrace_engine*, i64)* @ptrace_report_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_report_quiesce(i32 %0, %struct.utrace_engine* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.utrace_engine*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ptrace_context*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.utrace_engine* %1, %struct.utrace_engine** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.utrace_engine*, %struct.utrace_engine** %6, align 8
  %10 = call %struct.ptrace_context* @ptrace_context(%struct.utrace_engine* %9)
  store %struct.ptrace_context* %10, %struct.ptrace_context** %8, align 8
  %11 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %12 = call i64 @ptrace_event_pending(%struct.ptrace_context* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @UTRACE_STOP, align 4
  store i32 %15, i32* %4, align 4
  br label %27

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @UTRACE_RESUME, align 4
  br label %25

21:                                               ; preds = %16
  %22 = load %struct.ptrace_context*, %struct.ptrace_context** %8, align 8
  %23 = getelementptr inbounds %struct.ptrace_context, %struct.ptrace_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i32 [ %20, %19 ], [ %24, %21 ]
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %14
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.ptrace_context* @ptrace_context(%struct.utrace_engine*) #1

declare dso_local i64 @ptrace_event_pending(%struct.ptrace_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
