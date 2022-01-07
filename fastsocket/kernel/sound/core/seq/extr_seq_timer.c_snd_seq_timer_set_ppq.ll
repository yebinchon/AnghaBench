; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_set_ppq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_set_ppq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_timer = type { i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"seq: cannot change ppq of a running timer\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_timer_set_ppq(%struct.snd_seq_timer* %0, i32 %1) #0 {
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
  br label %62

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %62

22:                                               ; preds = %16
  %23 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %24 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %23, i32 0, i32 1
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %28 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %34 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %39 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %38, i32 0, i32 1
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = call i32 @snd_printd(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %62

45:                                               ; preds = %31, %22
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %48 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %50 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %49, i32 0, i32 3
  %51 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %52 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %55 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @snd_seq_timer_set_tick_resolution(i32* %50, i32 %53, i32 %56)
  %58 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %4, align 8
  %59 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %58, i32 0, i32 1
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %45, %37, %19, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @snd_seq_timer_set_tick_resolution(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
