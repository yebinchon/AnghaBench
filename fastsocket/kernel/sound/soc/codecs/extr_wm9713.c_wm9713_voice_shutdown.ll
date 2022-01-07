; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_voice_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_voice_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_kcontrol = type { i32 }

@SND_SOC_DAPM_PRE_PMD = common dso_local global i32 0, align 4
@AC97_EXTENDED_MID = common dso_local global i32 0, align 4
@AC97_HANDSET_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm9713_voice_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_voice_shutdown(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  store %struct.snd_soc_codec* %12, %struct.snd_soc_codec** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SND_SOC_DAPM_PRE_PMD, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %19 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %20 = call i32 @ac97_read(%struct.snd_soc_codec* %18, i32 %19)
  %21 = or i32 %20, 4096
  store i32 %21, i32* %8, align 4
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %23 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %24 = call i32 @ac97_read(%struct.snd_soc_codec* %22, i32 %23)
  %25 = and i32 %24, 61695
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %27 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, 512
  %30 = call i32 @ac97_write(%struct.snd_soc_codec* %26, i32 %27, i32 %29)
  %31 = call i32 @msecs_to_jiffies(i32 1)
  %32 = call i32 @schedule_timeout_interruptible(i32 %31)
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %34 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, 3840
  %37 = call i32 @ac97_write(%struct.snd_soc_codec* %33, i32 %34, i32 %36)
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %39 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ac97_write(%struct.snd_soc_codec* %38, i32 %39, i32 %40)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ac97_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ac97_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
