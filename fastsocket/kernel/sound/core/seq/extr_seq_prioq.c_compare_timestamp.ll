; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_prioq.c_compare_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_prioq.c_compare_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SNDRV_SEQ_TIME_STAMP_MASK = common dso_local global i32 0, align 4
@SNDRV_SEQ_TIME_STAMP_TICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_event*, %struct.snd_seq_event*)* @compare_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_timestamp(%struct.snd_seq_event* %0, %struct.snd_seq_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_event*, align 8
  %5 = alloca %struct.snd_seq_event*, align 8
  store %struct.snd_seq_event* %0, %struct.snd_seq_event** %4, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %5, align 8
  %6 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %7 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SNDRV_SEQ_TIME_STAMP_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @SNDRV_SEQ_TIME_STAMP_TICK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %15 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %18 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @snd_seq_compare_tick_time(i32* %16, i32* %19)
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %23 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %26 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @snd_seq_compare_real_time(i32* %24, i32* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @snd_seq_compare_tick_time(i32*, i32*) #1

declare dso_local i32 @snd_seq_compare_real_time(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
