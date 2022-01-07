; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-common.c_tick_periodic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-common.c_tick_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tick_do_timer_cpu = common dso_local global i32 0, align 4
@xtime_lock = common dso_local global i32 0, align 4
@tick_next_period = common dso_local global i32 0, align 4
@tick_period = common dso_local global i32 0, align 4
@CPU_PROFILING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tick_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tick_periodic(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @tick_do_timer_cpu, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call i32 @write_seqlock(i32* @xtime_lock)
  %8 = load i32, i32* @tick_next_period, align 4
  %9 = load i32, i32* @tick_period, align 4
  %10 = call i32 @ktime_add(i32 %8, i32 %9)
  store i32 %10, i32* @tick_next_period, align 4
  %11 = call i32 @do_timer(i32 1)
  %12 = call i32 @write_sequnlock(i32* @xtime_lock)
  br label %13

13:                                               ; preds = %6, %1
  %14 = call i32 (...) @get_irq_regs()
  %15 = call i32 @user_mode(i32 %14)
  %16 = call i32 @update_process_times(i32 %15)
  %17 = load i32, i32* @CPU_PROFILING, align 4
  %18 = call i32 @profile_tick(i32 %17)
  ret void
}

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @do_timer(i32) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @update_process_times(i32) #1

declare dso_local i32 @user_mode(i32) #1

declare dso_local i32 @get_irq_regs(...) #1

declare dso_local i32 @profile_tick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
