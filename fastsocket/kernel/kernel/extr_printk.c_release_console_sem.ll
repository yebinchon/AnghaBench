; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_printk.c_release_console_sem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_printk.c_release_console_sem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@console_suspended = common dso_local global i64 0, align 8
@console_sem = common dso_local global i32 0, align 4
@console_may_schedule = common dso_local global i64 0, align 8
@logbuf_lock = common dso_local global i32 0, align 4
@log_start = common dso_local global i32 0, align 4
@log_end = common dso_local global i32 0, align 4
@con_start = common dso_local global i32 0, align 4
@console_locked = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_console_sem() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* @console_suspended, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @up(i32* @console_sem)
  br label %42

9:                                                ; preds = %0
  store i64 0, i64* @console_may_schedule, align 8
  br label %10

10:                                               ; preds = %22, %9
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @logbuf_lock, i64 %11)
  %13 = load i32, i32* @log_start, align 4
  %14 = load i32, i32* @log_end, align 4
  %15 = sub i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @con_start, align 4
  %19 = load i32, i32* @log_end, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %34

22:                                               ; preds = %10
  %23 = load i32, i32* @con_start, align 4
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* @log_end, align 4
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @log_end, align 4
  store i32 %25, i32* @con_start, align 4
  %26 = call i32 @spin_unlock(i32* @logbuf_lock)
  %27 = call i32 (...) @stop_critical_timings()
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @call_console_drivers(i32 %28, i32 %29)
  %31 = call i32 (...) @start_critical_timings()
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @local_irq_restore(i64 %32)
  br label %10

34:                                               ; preds = %21
  store i64 0, i64* @console_locked, align 8
  %35 = call i32 @up(i32* @console_sem)
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* @logbuf_lock, i64 %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (...) @wake_up_klogd()
  br label %42

42:                                               ; preds = %7, %40, %34
  ret void
}

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @stop_critical_timings(...) #1

declare dso_local i32 @call_console_drivers(i32, i32) #1

declare dso_local i32 @start_critical_timings(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_klogd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
