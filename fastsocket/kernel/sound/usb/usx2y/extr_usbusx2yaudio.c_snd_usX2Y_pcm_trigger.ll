; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2yaudio.c_snd_usX2Y_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2yaudio.c_snd_usX2Y_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.snd_usX2Y_substream* }
%struct.snd_usX2Y_substream = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"snd_usX2Y_pcm_trigger(START)\0A\00", align 1
@state_PREPARED = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@state_PRERUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"snd_usX2Y_pcm_trigger(STOP)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_usX2Y_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usX2Y_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %10, align 8
  store %struct.snd_usX2Y_substream* %11, %struct.snd_usX2Y_substream** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %56 [
    i32 129, label %13
    i32 128, label %43
  ]

13:                                               ; preds = %2
  %14 = call i32 @snd_printdd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %16 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  %18 = load i32, i32* @state_PREPARED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  %21 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %22 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @atomic_read(i32* %29)
  %31 = load i32, i32* @state_PREPARED, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %35 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %34, i32 0, i32 0
  %36 = load i32, i32* @state_PRERUNNING, align 4
  %37 = call i32 @atomic_set(i32* %35, i32 %36)
  br label %42

38:                                               ; preds = %20, %13
  %39 = call i32 @snd_printdd(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EPIPE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %60

42:                                               ; preds = %33
  br label %59

43:                                               ; preds = %2
  %44 = call i32 @snd_printdd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %46 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %45, i32 0, i32 0
  %47 = call i32 @atomic_read(i32* %46)
  %48 = load i32, i32* @state_PRERUNNING, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %52 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %51, i32 0, i32 0
  %53 = load i32, i32* @state_PREPARED, align 4
  %54 = call i32 @atomic_set(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %43
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %55, %42
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %56, %38
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
