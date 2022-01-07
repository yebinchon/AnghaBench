; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { i32, i32, i32, i64, %struct.snd_timer* }
%struct.snd_timer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_SLAVE = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_timer_start(%struct.snd_timer_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_timer_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_timer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %12 = icmp eq %struct.snd_timer_instance* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %66

19:                                               ; preds = %13
  %20 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %21 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SNDRV_TIMER_IFLG_SLAVE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %28 = call i32 @snd_timer_start_slave(%struct.snd_timer_instance* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %30 = load i32, i32* @SNDRV_TIMER_EVENT_START, align 4
  %31 = call i32 @snd_timer_notify1(%struct.snd_timer_instance* %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %66

33:                                               ; preds = %19
  %34 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %35 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %34, i32 0, i32 4
  %36 = load %struct.snd_timer*, %struct.snd_timer** %35, align 8
  store %struct.snd_timer* %36, %struct.snd_timer** %6, align 8
  %37 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %38 = icmp eq %struct.snd_timer* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %33
  %43 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %44 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %49 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %51 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %53 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %55 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @snd_timer_start1(%struct.snd_timer* %54, %struct.snd_timer_instance* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.snd_timer*, %struct.snd_timer** %6, align 8
  %59 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %58, i32 0, i32 0
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %63 = load i32, i32* @SNDRV_TIMER_EVENT_START, align 4
  %64 = call i32 @snd_timer_notify1(%struct.snd_timer_instance* %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %42, %39, %26, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @snd_timer_start_slave(%struct.snd_timer_instance*) #1

declare dso_local i32 @snd_timer_notify1(%struct.snd_timer_instance*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_timer_start1(%struct.snd_timer*, %struct.snd_timer_instance*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
