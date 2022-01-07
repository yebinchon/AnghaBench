; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_sdp3430.c_sdp3430_twl4030_voice_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_sdp3430.c_sdp3430_twl4030_voice_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i16 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32, i16)* }

@TWL4030_REG_VOICE_IF = common dso_local global i32 0, align 4
@TWL4030_VIF_DIN_EN = common dso_local global i16 0, align 2
@TWL4030_VIF_DOUT_EN = common dso_local global i16 0, align 2
@TWL4030_VIF_EN = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @sdp3430_twl4030_voice_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdp3430_twl4030_voice_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %4 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %4, i32 0, i32 0
  %6 = load i16 (%struct.snd_soc_codec*, i32)*, i16 (%struct.snd_soc_codec*, i32)** %5, align 8
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %8 = load i32, i32* @TWL4030_REG_VOICE_IF, align 4
  %9 = call zeroext i16 %6(%struct.snd_soc_codec* %7, i32 %8)
  store i16 %9, i16* %3, align 2
  %10 = load i16, i16* @TWL4030_VIF_DIN_EN, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @TWL4030_VIF_DOUT_EN, align 2
  %13 = zext i16 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i16, i16* @TWL4030_VIF_EN, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %14, %16
  %18 = load i16, i16* %3, align 2
  %19 = zext i16 %18 to i32
  %20 = or i32 %19, %17
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %3, align 2
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %23 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %22, i32 0, i32 1
  %24 = load i32 (%struct.snd_soc_codec*, i32, i16)*, i32 (%struct.snd_soc_codec*, i32, i16)** %23, align 8
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %26 = load i32, i32* @TWL4030_REG_VOICE_IF, align 4
  %27 = load i16, i16* %3, align 2
  %28 = call i32 %24(%struct.snd_soc_codec* %25, i32 %26, i16 zeroext %27)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
