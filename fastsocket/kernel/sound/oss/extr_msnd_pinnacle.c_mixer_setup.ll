; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_mixer_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_mixer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOUND_MIXER_LINE = common dso_local global i32 0, align 4
@bInPotPos = common dso_local global i32 0, align 4
@HDEXAR_IN_SET_POTS = common dso_local global i32 0, align 4
@SOUND_MIXER_LINE1 = common dso_local global i32 0, align 4
@bAuxPotPos = common dso_local global i32 0, align 4
@HDEXAR_AUX_SET_POTS = common dso_local global i32 0, align 4
@SOUND_MIXER_PCM = common dso_local global i32 0, align 4
@wCurrPlayVol = common dso_local global i32 0, align 4
@SOUND_MIXER_IMIX = common dso_local global i32 0, align 4
@wCurrInVol = common dso_local global i32 0, align 4
@SOUND_MIXER_MIC = common dso_local global i32 0, align 4
@bMicPotPos = common dso_local global i32 0, align 4
@HDEXAR_MIC_SET_POTS = common dso_local global i32 0, align 4
@SOUND_MIXER_SYNTH = common dso_local global i32 0, align 4
@wCurrMHdrVol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mixer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_setup() #0 {
  %1 = load i32, i32* @SOUND_MIXER_LINE, align 4
  %2 = load i32, i32* @bInPotPos, align 4
  %3 = load i32, i32* @HDEXAR_IN_SET_POTS, align 4
  %4 = call i32 @update_pot(i32 %1, i32 %2, i32 %3)
  %5 = load i32, i32* @SOUND_MIXER_LINE1, align 4
  %6 = load i32, i32* @bAuxPotPos, align 4
  %7 = load i32, i32* @HDEXAR_AUX_SET_POTS, align 4
  %8 = call i32 @update_potm(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %10 = load i32, i32* @wCurrPlayVol, align 4
  %11 = call i32 @update_volm(i32 %9, i32 %10)
  %12 = load i32, i32* @SOUND_MIXER_IMIX, align 4
  %13 = load i32, i32* @wCurrInVol, align 4
  %14 = call i32 @update_volm(i32 %12, i32 %13)
  %15 = load i32, i32* @SOUND_MIXER_MIC, align 4
  %16 = load i32, i32* @bMicPotPos, align 4
  %17 = load i32, i32* @HDEXAR_MIC_SET_POTS, align 4
  %18 = call i32 @update_pot(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @SOUND_MIXER_SYNTH, align 4
  %20 = load i32, i32* @wCurrMHdrVol, align 4
  %21 = call i32 @update_volm(i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @update_pot(i32, i32, i32) #1

declare dso_local i32 @update_potm(i32, i32, i32) #1

declare dso_local i32 @update_volm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
