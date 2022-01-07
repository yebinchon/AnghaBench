; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_ad1819.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_patch_ad1819.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@AC97_AD_SERIAL_CFG = common dso_local global i32 0, align 4
@ad1819_restbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_ad1819 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_ad1819(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %6 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %4, i32 %5)
  store i16 %6, i16* %3, align 2
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %8 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  %11 = or i32 %10, 28672
  %12 = trunc i32 %11 to i16
  %13 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %7, i32 %8, i16 zeroext %12)
  %14 = load i32, i32* @ad1819_restbl, align 4
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %16 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret i32 0
}

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
