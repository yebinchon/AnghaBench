; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sound_timer.c_sound_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sound_timer.c_sound_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32)* }

@opened = common dso_local global i32 0, align 4
@tmr = common dso_local global %struct.TYPE_2__* null, align 8
@tmr_running = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@tmr_ctr = common dso_local global i32 0, align 4
@ticks_offs = common dso_local global i64 0, align 8
@curr_ticks = common dso_local global i64 0, align 8
@next_event_time = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sound_timer_interrupt() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @opened, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %33

5:                                                ; preds = %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmr, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmr, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 %8(i32 %11)
  %13 = load i32, i32* @tmr_running, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %33

16:                                               ; preds = %5
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @lock, i64 %17)
  %19 = load i32, i32* @tmr_ctr, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @tmr_ctr, align 4
  %21 = load i64, i64* @ticks_offs, align 8
  %22 = load i32, i32* @tmr_ctr, align 4
  %23 = call i64 @tmr2ticks(i32 %22)
  %24 = add i64 %21, %23
  store i64 %24, i64* @curr_ticks, align 8
  %25 = load i64, i64* @curr_ticks, align 8
  %26 = load i64, i64* @next_event_time, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  store i64 -1, i64* @next_event_time, align 8
  %29 = call i32 @sequencer_timer(i32 0)
  br label %30

30:                                               ; preds = %28, %16
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %31)
  br label %33

33:                                               ; preds = %30, %15, %4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @tmr2ticks(i32) #1

declare dso_local i32 @sequencer_timer(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
