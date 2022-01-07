; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_init_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_init_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_virmidi = type { i32, i32, i32 }
%struct.snd_seq_event = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SNDRV_SEQ_ADDRESS_SUBSCRIBERS = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_virmidi*, %struct.snd_seq_event*)* @snd_virmidi_init_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_virmidi_init_event(%struct.snd_virmidi* %0, %struct.snd_seq_event* %1) #0 {
  %3 = alloca %struct.snd_virmidi*, align 8
  %4 = alloca %struct.snd_seq_event*, align 8
  store %struct.snd_virmidi* %0, %struct.snd_virmidi** %3, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %4, align 8
  %5 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %6 = call i32 @memset(%struct.snd_seq_event* %5, i32 0, i32 16)
  %7 = load %struct.snd_virmidi*, %struct.snd_virmidi** %3, align 8
  %8 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %11 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.snd_virmidi*, %struct.snd_virmidi** %3, align 8
  %14 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %34 [
    i32 128, label %16
    i32 129, label %21
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @SNDRV_SEQ_ADDRESS_SUBSCRIBERS, align 4
  %18 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %19 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.snd_virmidi*, %struct.snd_virmidi** %3, align 8
  %23 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %26 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.snd_virmidi*, %struct.snd_virmidi** %3, align 8
  %29 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %32 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %2, %21, %16
  %35 = load i32, i32* @SNDRV_SEQ_EVENT_NONE, align 4
  %36 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %37 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret void
}

declare dso_local i32 @memset(%struct.snd_seq_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
