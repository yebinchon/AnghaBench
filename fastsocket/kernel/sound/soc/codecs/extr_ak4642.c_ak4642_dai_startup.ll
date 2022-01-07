; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4642.c_ak4642_dai_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4642.c_ak4642_dai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @ak4642_dai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4642_dai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %14, align 8
  store %struct.snd_soc_codec* %15, %struct.snd_soc_codec** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %20 = call i32 @ak4642_write(%struct.snd_soc_codec* %19, i32 5, i32 39)
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %22 = call i32 @ak4642_write(%struct.snd_soc_codec* %21, i32 15, i32 9)
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %24 = call i32 @ak4642_write(%struct.snd_soc_codec* %23, i32 14, i32 25)
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %26 = call i32 @ak4642_write(%struct.snd_soc_codec* %25, i32 9, i32 145)
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %28 = call i32 @ak4642_write(%struct.snd_soc_codec* %27, i32 12, i32 145)
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %30 = call i32 @ak4642_write(%struct.snd_soc_codec* %29, i32 10, i32 40)
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %32 = call i32 @ak4642_write(%struct.snd_soc_codec* %31, i32 13, i32 40)
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %34 = call i32 @ak4642_write(%struct.snd_soc_codec* %33, i32 0, i32 100)
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %36 = call i32 @ak4642_write(%struct.snd_soc_codec* %35, i32 1, i32 59)
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %38 = call i32 @ak4642_write(%struct.snd_soc_codec* %37, i32 1, i32 123)
  br label %56

39:                                               ; preds = %2
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %41 = call i32 @ak4642_write(%struct.snd_soc_codec* %40, i32 5, i32 39)
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %43 = call i32 @ak4642_write(%struct.snd_soc_codec* %42, i32 2, i32 5)
  %44 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %45 = call i32 @ak4642_write(%struct.snd_soc_codec* %44, i32 6, i32 60)
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %47 = call i32 @ak4642_write(%struct.snd_soc_codec* %46, i32 8, i32 225)
  %48 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %49 = call i32 @ak4642_write(%struct.snd_soc_codec* %48, i32 11, i32 0)
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %51 = call i32 @ak4642_write(%struct.snd_soc_codec* %50, i32 7, i32 33)
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %53 = call i32 @ak4642_write(%struct.snd_soc_codec* %52, i32 0, i32 65)
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %55 = call i32 @ak4642_write(%struct.snd_soc_codec* %54, i32 16, i32 1)
  br label %56

56:                                               ; preds = %39, %18
  ret i32 0
}

declare dso_local i32 @ak4642_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
