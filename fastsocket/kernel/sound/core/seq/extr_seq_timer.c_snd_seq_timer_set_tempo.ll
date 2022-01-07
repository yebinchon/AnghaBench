; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_set_tempo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_set_tempo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_timer_set_tempo(%struct.snd_seq_timer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_timer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_seq_timer* %0, %struct.snd_seq_timer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %8 = icmp ne %struct.snd_seq_timer* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %16
  %23 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %24 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %23, i32 0, i32 1
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %29 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %35 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %37 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %36, i32 0, i32 3
  %38 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %39 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %42 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snd_seq_timer_set_tick_resolution(i32* %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %32, %22
  %46 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %47 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %46, i32 0, i32 1
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %19, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_seq_timer_set_tick_resolution(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
