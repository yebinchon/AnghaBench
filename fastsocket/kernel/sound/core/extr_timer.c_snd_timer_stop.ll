; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { i64, i32, i32, %struct.snd_timer* }
%struct.snd_timer = type { i32 }

@SNDRV_TIMER_EVENT_STOP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_timer_stop(%struct.snd_timer_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_timer_instance*, align 8
  %4 = alloca %struct.snd_timer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %3, align 8
  %7 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %8 = load i32, i32* @SNDRV_TIMER_EVENT_STOP, align 4
  %9 = call i32 @_snd_timer_stop(%struct.snd_timer_instance* %7, i32 0, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %16 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %15, i32 0, i32 3
  %17 = load %struct.snd_timer*, %struct.snd_timer** %16, align 8
  store %struct.snd_timer* %17, %struct.snd_timer** %4, align 8
  %18 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %19 = icmp ne %struct.snd_timer* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %14
  %24 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %25 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %29 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %32 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %34 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %36 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %23, %20, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @_snd_timer_stop(%struct.snd_timer_instance*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
