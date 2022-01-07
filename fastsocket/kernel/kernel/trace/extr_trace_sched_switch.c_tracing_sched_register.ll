; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_sched_switch.c_tracing_sched_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_sched_switch.c_tracing_sched_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@probe_sched_wakeup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"wakeup trace: Couldn't activate tracepoint probe to kernel_sched_wakeup\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"wakeup trace: Couldn't activate tracepoint probe to kernel_sched_wakeup_new\0A\00", align 1
@probe_sched_switch = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"sched trace: Couldn't activate tracepoint probe to kernel_sched_switch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tracing_sched_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_sched_register() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @probe_sched_wakeup, align 4
  %4 = call i32 @register_trace_sched_wakeup(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %33

10:                                               ; preds = %0
  %11 = load i32, i32* @probe_sched_wakeup, align 4
  %12 = call i32 @register_trace_sched_wakeup_new(i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @pr_info(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  br label %29

17:                                               ; preds = %10
  %18 = load i32, i32* @probe_sched_switch, align 4
  %19 = call i32 @register_trace_sched_switch(i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %1, align 4
  br label %33

26:                                               ; preds = %22
  %27 = load i32, i32* @probe_sched_wakeup, align 4
  %28 = call i32 @unregister_trace_sched_wakeup_new(i32 %27)
  br label %29

29:                                               ; preds = %26, %15
  %30 = load i32, i32* @probe_sched_wakeup, align 4
  %31 = call i32 @unregister_trace_sched_wakeup(i32 %30)
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %29, %24, %7
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @register_trace_sched_wakeup(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @register_trace_sched_wakeup_new(i32) #1

declare dso_local i32 @register_trace_sched_switch(i32) #1

declare dso_local i32 @unregister_trace_sched_wakeup_new(i32) #1

declare dso_local i32 @unregister_trace_sched_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
