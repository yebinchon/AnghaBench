; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_vt1617a.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_vt1617a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32*, i32*, i32 }

@snd_ac97_controls_vt1617a = common dso_local global i32* null, align 8
@AC97_EI_SPDIF = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_44100 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@AC97_RATES_SPDIF = common dso_local global i64 0, align 8
@patch_vt1616_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_vt1617a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt1617a(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %6 = load i32*, i32** @snd_ac97_controls_vt1617a, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32*, i32** @snd_ac97_controls_vt1617a, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = call i32 @patch_build_controls(%struct.snd_ac97* %5, i32* %7, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %12 = call i32 @snd_ac97_read(%struct.snd_ac97* %11, i32 92)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %18 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %17, i32 92, i32 32)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* @AC97_EI_SPDIF, align 4
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %22 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @SNDRV_PCM_RATE_44100, align 4
  %26 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %29 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @AC97_RATES_SPDIF, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %34 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %33, i32 0, i32 1
  store i32* @patch_vt1616_ops, i32** %34, align 8
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @patch_build_controls(%struct.snd_ac97*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
