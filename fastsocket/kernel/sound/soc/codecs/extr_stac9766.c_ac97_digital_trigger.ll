; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_stac9766.c_ac97_digital_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_stac9766.c_ac97_digital_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @ac97_digital_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_digital_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca i16, align 2
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %25 [
    i32 128, label %13
  ]

13:                                               ; preds = %3
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %15 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %16 = call zeroext i16 @stac9766_ac97_read(%struct.snd_soc_codec* %14, i32 %15)
  store i16 %16, i16* %8, align 2
  %17 = load i16, i16* %8, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 0
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %8, align 2
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %22 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %23 = load i16, i16* %8, align 2
  %24 = call i32 @stac9766_ac97_write(%struct.snd_soc_codec* %21, i32 %22, i16 zeroext %23)
  br label %25

25:                                               ; preds = %3, %13
  ret i32 0
}

declare dso_local zeroext i16 @stac9766_ac97_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @stac9766_ac97_write(%struct.snd_soc_codec*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
