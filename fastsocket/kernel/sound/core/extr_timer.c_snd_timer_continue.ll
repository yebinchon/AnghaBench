; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_continue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { i32, i32, i64, %struct.snd_timer* }
%struct.snd_timer = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_SLAVE = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_timer_continue(%struct.snd_timer_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_timer_instance*, align 8
  %4 = alloca %struct.snd_timer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %10 = icmp eq %struct.snd_timer_instance* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %15 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SNDRV_TIMER_IFLG_SLAVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %22 = call i32 @snd_timer_start_slave(%struct.snd_timer_instance* %21)
  store i32 %22, i32* %2, align 4
  br label %61

23:                                               ; preds = %13
  %24 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %25 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %24, i32 0, i32 3
  %26 = load %struct.snd_timer*, %struct.snd_timer** %25, align 8
  store %struct.snd_timer* %26, %struct.snd_timer** %4, align 8
  %27 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %28 = icmp ne %struct.snd_timer* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %61

32:                                               ; preds = %23
  %33 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %34 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %38 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %43 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %32
  %45 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %46 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %48 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %49 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %50 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snd_timer_start1(%struct.snd_timer* %47, %struct.snd_timer_instance* %48, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.snd_timer*, %struct.snd_timer** %4, align 8
  %54 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %53, i32 0, i32 0
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %3, align 8
  %58 = load i32, i32* @SNDRV_TIMER_EVENT_CONTINUE, align 4
  %59 = call i32 @snd_timer_notify1(%struct.snd_timer_instance* %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %44, %29, %20, %11
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @snd_timer_start_slave(%struct.snd_timer_instance*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_timer_start1(%struct.snd_timer*, %struct.snd_timer_instance*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_timer_notify1(%struct.snd_timer_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
