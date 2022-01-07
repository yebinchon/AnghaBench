; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-common.c_tick_handover_do_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-common.c_tick_handover_do_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tick_do_timer_cpu = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@TICK_DO_TIMER_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @tick_handover_do_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tick_handover_do_timer(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @tick_do_timer_cpu, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32, i32* @cpu_online_mask, align 4
  %10 = call i32 @cpumask_first(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @nr_cpu_ids, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  br label %18

16:                                               ; preds = %8
  %17 = load i32, i32* @TICK_DO_TIMER_NONE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* @tick_do_timer_cpu, align 4
  br label %20

20:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @cpumask_first(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
