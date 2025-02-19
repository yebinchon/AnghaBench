; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dev_table.c_sound_alloc_timerdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dev_table.c_sound_alloc_timerdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TIMER_DEV = common dso_local global i32 0, align 4
@sound_timer_devs = common dso_local global i32** null, align 8
@num_sound_timers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sound_alloc_timerdev() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %24, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MAX_TIMER_DEV, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = load i32**, i32*** @sound_timer_devs, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @num_sound_timers, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @num_sound_timers, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @num_sound_timers, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %28

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %3

27:                                               ; preds = %3
  store i32 -1, i32* %1, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
