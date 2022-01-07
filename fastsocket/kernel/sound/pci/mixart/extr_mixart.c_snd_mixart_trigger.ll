; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart.c_snd_mixart_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart.c_snd_mixart_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mixart_stream* }
%struct.mixart_stream = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"SNDRV_PCM_TRIGGER_START\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MIXART_STREAM_STATUS_RUNNING = common dso_local global i8* null, align 8
@MIXART_STREAM_STATUS_OPEN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"SNDRV_PCM_TRIGGER_STOP\0A\00", align 1
@MIXART_STREAM_STATUS_PAUSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"SNDRV_PCM_PAUSE_PUSH\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"SNDRV_PCM_PAUSE_RELEASE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_mixart_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixart_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mixart_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mixart_stream*, %struct.mixart_stream** %10, align 8
  store %struct.mixart_stream* %11, %struct.mixart_stream** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %47 [
    i32 129, label %13
    i32 128, label %25
    i32 131, label %37
    i32 130, label %42
  ]

13:                                               ; preds = %2
  %14 = call i32 @snd_printdd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %16 = call i32 @mixart_set_stream_state(%struct.mixart_stream* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %13
  %22 = load i8*, i8** @MIXART_STREAM_STATUS_RUNNING, align 8
  %23 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %24 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %27 = call i32 @mixart_set_stream_state(%struct.mixart_stream* %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %25
  %33 = load i8*, i8** @MIXART_STREAM_STATUS_OPEN, align 8
  %34 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %35 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = call i32 @snd_printdd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %50

37:                                               ; preds = %2
  %38 = load i8*, i8** @MIXART_STREAM_STATUS_PAUSE, align 8
  %39 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %40 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = call i32 @snd_printdd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %50

42:                                               ; preds = %2
  %43 = load i8*, i8** @MIXART_STREAM_STATUS_RUNNING, align 8
  %44 = load %struct.mixart_stream*, %struct.mixart_stream** %6, align 8
  %45 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = call i32 @snd_printdd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %42, %37, %32, %21
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %47, %29, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local i32 @mixart_set_stream_state(%struct.mixart_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
