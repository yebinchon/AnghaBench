; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_msnd = type { i32, i32 }

@SNDRV_PCM_TRIGGER_START = common dso_local global i32 0, align 4
@F_READING = common dso_local global i32 0, align 4
@HDEX_RECORD_START = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_STOP = common dso_local global i32 0, align 4
@HDEX_RECORD_STOP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_msnd_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_msnd_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_msnd*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = call %struct.snd_msnd* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_msnd* %8, %struct.snd_msnd** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %14 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 4
  %15 = load i32, i32* @F_READING, align 4
  %16 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %17 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %16, i32 0, i32 1
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %20 = load i32, i32* @HDEX_RECORD_START, align 4
  %21 = call i64 @snd_msnd_send_dsp_cmd(%struct.snd_msnd* %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %45

24:                                               ; preds = %12
  %25 = load i32, i32* @F_READING, align 4
  %26 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %27 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %26, i32 0, i32 1
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  br label %42

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SNDRV_PCM_TRIGGER_STOP, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* @F_READING, align 4
  %35 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %36 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %35, i32 0, i32 1
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %39 = load i32, i32* @HDEX_RECORD_STOP, align 4
  %40 = call i64 @snd_msnd_send_dsp_cmd(%struct.snd_msnd* %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %45

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %33, %23
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.snd_msnd* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @snd_msnd_send_dsp_cmd(%struct.snd_msnd*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
