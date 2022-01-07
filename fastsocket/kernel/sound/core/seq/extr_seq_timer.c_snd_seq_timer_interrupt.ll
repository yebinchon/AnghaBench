; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_timer.c_snd_seq_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { %struct.snd_seq_queue* }
%struct.snd_seq_queue = type { %struct.snd_seq_timer* }
%struct.snd_seq_timer = type { i64, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_timer_instance*, i64, i64)* @snd_seq_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_seq_timer_interrupt(%struct.snd_timer_instance* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.snd_timer_instance*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_seq_queue*, align 8
  %9 = alloca %struct.snd_seq_timer*, align 8
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %4, align 8
  %11 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %10, i32 0, i32 0
  %12 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %11, align 8
  store %struct.snd_seq_queue* %12, %struct.snd_seq_queue** %8, align 8
  %13 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %14 = icmp eq %struct.snd_seq_queue* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %77

16:                                               ; preds = %3
  %17 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %18 = getelementptr inbounds %struct.snd_seq_queue, %struct.snd_seq_queue* %17, i32 0, i32 0
  %19 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %18, align 8
  store %struct.snd_seq_timer* %19, %struct.snd_seq_timer** %9, align 8
  %20 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %21 = icmp eq %struct.snd_seq_timer* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %77

23:                                               ; preds = %16
  %24 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %25 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %77

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = mul i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %34 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %37 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %29
  %41 = load i64, i64* %5, align 8
  %42 = lshr i64 %41, 16
  %43 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %44 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %42, %45
  %47 = load i64, i64* %5, align 8
  %48 = and i64 %47, 65535
  %49 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %50 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %48, %51
  %53 = lshr i64 %52, 16
  %54 = add i64 %46, %53
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %40, %29
  %56 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %57 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %56, i32 0, i32 2
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %61 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %60, i32 0, i32 5
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @snd_seq_inc_time_nsec(i32* %61, i64 %62)
  %64 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %65 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %64, i32 0, i32 4
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @snd_seq_timer_update_tick(i32* %65, i64 %66)
  %68 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %69 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %68, i32 0, i32 3
  %70 = call i32 @do_gettimeofday(i32* %69)
  %71 = load %struct.snd_seq_timer*, %struct.snd_seq_timer** %9, align 8
  %72 = getelementptr inbounds %struct.snd_seq_timer, %struct.snd_seq_timer* %71, i32 0, i32 2
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.snd_seq_queue*, %struct.snd_seq_queue** %8, align 8
  %76 = call i32 @snd_seq_check_queue(%struct.snd_seq_queue* %75, i32 1, i32 0)
  br label %77

77:                                               ; preds = %55, %28, %22, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_seq_inc_time_nsec(i32*, i64) #1

declare dso_local i32 @snd_seq_timer_update_tick(i32*, i64) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_seq_check_queue(%struct.snd_seq_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
