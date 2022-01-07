; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_start1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c_snd_timer_start1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.snd_timer.0*)* }
%struct.snd_timer.0 = type opaque
%struct.snd_timer_instance = type { i32, i32 }

@SNDRV_TIMER_HW_SLAVE = common dso_local global i32 0, align 4
@SNDRV_TIMER_FLG_RESCHED = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_START = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer*, %struct.snd_timer_instance*, i64)* @snd_timer_start1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_start1(%struct.snd_timer* %0, %struct.snd_timer_instance* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_timer*, align 8
  %6 = alloca %struct.snd_timer_instance*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %5, align 8
  store %struct.snd_timer_instance* %1, %struct.snd_timer_instance** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %9 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %8, i32 0, i32 1
  %10 = call i32 @list_del(i32* %9)
  %11 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %12 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %11, i32 0, i32 1
  %13 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %14 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %13, i32 0, i32 4
  %15 = call i32 @list_add_tail(i32* %12, i32* %14)
  %16 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %17 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %22 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SNDRV_TIMER_HW_SLAVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %51

29:                                               ; preds = %20
  %30 = load i32, i32* @SNDRV_TIMER_FLG_RESCHED, align 4
  %31 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %32 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @SNDRV_TIMER_IFLG_START, align 4
  %36 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %37 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  store i32 1, i32* %4, align 4
  br label %61

40:                                               ; preds = %3
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %43 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %45 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32 (%struct.snd_timer.0*)*, i32 (%struct.snd_timer.0*)** %46, align 8
  %48 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %49 = bitcast %struct.snd_timer* %48 to %struct.snd_timer.0*
  %50 = call i32 %47(%struct.snd_timer.0* %49)
  br label %51

51:                                               ; preds = %40, %28
  %52 = load %struct.snd_timer*, %struct.snd_timer** %5, align 8
  %53 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %57 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %6, align 8
  %58 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %51, %29
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
