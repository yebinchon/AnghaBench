; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_wolfson11.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_wolfson11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32* }

@patch_wolfson_wm9711_ops = common dso_local global i32 0, align 4
@AC97_HAS_NO_REC_GAIN = common dso_local global i32 0, align 4
@AC97_STEREO_MUTES = common dso_local global i32 0, align 4
@AC97_HAS_NO_MIC = common dso_local global i32 0, align 4
@AC97_HAS_NO_PC_BEEP = common dso_local global i32 0, align 4
@AC97_HAS_NO_VIDEO = common dso_local global i32 0, align 4
@AC97_HAS_NO_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_wolfson11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_wolfson11(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %3 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %4 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %3, i32 0, i32 1
  store i32* @patch_wolfson_wm9711_ops, i32** %4, align 8
  %5 = load i32, i32* @AC97_HAS_NO_REC_GAIN, align 4
  %6 = load i32, i32* @AC97_STEREO_MUTES, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @AC97_HAS_NO_MIC, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @AC97_HAS_NO_PC_BEEP, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @AC97_HAS_NO_VIDEO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AC97_HAS_NO_CD, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %17 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
