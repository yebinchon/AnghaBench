; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codec_info_item = type { %struct.onyx* }
%struct.onyx = type { i32, i32, i32 }
%struct.bus_info = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ONYX_REG_DIG_INFO4 = common dso_local global i32 0, align 4
@ONYX_SPDIF_ENABLE = common dso_local global i32 0, align 4
@ONYX_MUTE_LEFT = common dso_local global i32 0, align 4
@ONYX_MUTE_RIGHT = common dso_local global i32 0, align 4
@ONYX_REG_DAC_CONTROL = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_COMPRESSED_16BE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.codec_info_item*, %struct.bus_info*, %struct.snd_pcm_substream*)* @onyx_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_prepare(%struct.codec_info_item* %0, %struct.bus_info* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.codec_info_item*, align 8
  %5 = alloca %struct.bus_info*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.onyx*, align 8
  %9 = alloca i32, align 4
  store %struct.codec_info_item* %0, %struct.codec_info_item** %4, align 8
  store %struct.bus_info* %1, %struct.bus_info** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %10 = load %struct.codec_info_item*, %struct.codec_info_item** %4, align 8
  %11 = getelementptr inbounds %struct.codec_info_item, %struct.codec_info_item* %10, i32 0, i32 0
  %12 = load %struct.onyx*, %struct.onyx** %11, align 8
  store %struct.onyx* %12, %struct.onyx** %8, align 8
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.onyx*, %struct.onyx** %8, align 8
  %16 = getelementptr inbounds %struct.onyx, %struct.onyx* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %24 [
    i32 32000, label %23
    i32 44100, label %23
    i32 48000, label %23
  ]

23:                                               ; preds = %3, %3, %3
  store i32 0, i32* %9, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load %struct.codec_info_item*, %struct.codec_info_item** %4, align 8
  %26 = getelementptr inbounds %struct.codec_info_item, %struct.codec_info_item* %25, i32 0, i32 0
  %27 = load %struct.onyx*, %struct.onyx** %26, align 8
  %28 = load i32, i32* @ONYX_REG_DIG_INFO4, align 4
  %29 = call i32 @onyx_read_register(%struct.onyx* %27, i32 %28, i32* %7)
  %30 = load %struct.onyx*, %struct.onyx** %8, align 8
  %31 = load i32, i32* @ONYX_REG_DIG_INFO4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ONYX_SPDIF_ENABLE, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i64 @onyx_write_register(%struct.onyx* %30, i32 %31, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %42

39:                                               ; preds = %24
  %40 = load %struct.onyx*, %struct.onyx** %8, align 8
  %41 = getelementptr inbounds %struct.onyx, %struct.onyx* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %38, %23
  %43 = load %struct.onyx*, %struct.onyx** %8, align 8
  %44 = getelementptr inbounds %struct.onyx, %struct.onyx* %43, i32 0, i32 2
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @onyx_read_register(%struct.onyx*, i32, i32*) #1

declare dso_local i64 @onyx_write_register(%struct.onyx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
