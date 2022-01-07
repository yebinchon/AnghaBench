; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd_pinnacle_mixer.c_snd_msndmix_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd_pinnacle_mixer.c_snd_msndmix_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_msnd = type { i64 }

@MSND_MIXER_LINE = common dso_local global i32 0, align 4
@bInPotPos = common dso_local global i32 0, align 4
@HDEXAR_IN_SET_POTS = common dso_local global i32 0, align 4
@MSND_MIXER_AUX = common dso_local global i32 0, align 4
@bAuxPotPos = common dso_local global i32 0, align 4
@HDEXAR_AUX_SET_POTS = common dso_local global i32 0, align 4
@MSND_MIXER_PCM = common dso_local global i32 0, align 4
@wCurrPlayVol = common dso_local global i32 0, align 4
@MSND_MIXER_IMIX = common dso_local global i32 0, align 4
@wCurrInVol = common dso_local global i32 0, align 4
@msndPinnacle = common dso_local global i64 0, align 8
@MSND_MIXER_MIC = common dso_local global i32 0, align 4
@bMicPotPos = common dso_local global i32 0, align 4
@HDEXAR_MIC_SET_POTS = common dso_local global i32 0, align 4
@MSND_MIXER_SYNTH = common dso_local global i32 0, align 4
@wCurrMHdrVol = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_msndmix_setup(%struct.snd_msnd* %0) #0 {
  %2 = alloca %struct.snd_msnd*, align 8
  store %struct.snd_msnd* %0, %struct.snd_msnd** %2, align 8
  %3 = load i32, i32* @MSND_MIXER_LINE, align 4
  %4 = load i32, i32* @bInPotPos, align 4
  %5 = load i32, i32* @HDEXAR_IN_SET_POTS, align 4
  %6 = call i32 @update_pot(i32 %3, i32 %4, i32 %5)
  %7 = load i32, i32* @MSND_MIXER_AUX, align 4
  %8 = load i32, i32* @bAuxPotPos, align 4
  %9 = load i32, i32* @HDEXAR_AUX_SET_POTS, align 4
  %10 = call i32 @update_potm(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @MSND_MIXER_PCM, align 4
  %12 = load i32, i32* @wCurrPlayVol, align 4
  %13 = call i32 @update_volm(i32 %11, i32 %12)
  %14 = load i32, i32* @MSND_MIXER_IMIX, align 4
  %15 = load i32, i32* @wCurrInVol, align 4
  %16 = call i32 @update_volm(i32 %14, i32 %15)
  %17 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %18 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @msndPinnacle, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @MSND_MIXER_MIC, align 4
  %24 = load i32, i32* @bMicPotPos, align 4
  %25 = load i32, i32* @HDEXAR_MIC_SET_POTS, align 4
  %26 = call i32 @update_pot(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @MSND_MIXER_SYNTH, align 4
  %28 = load i32, i32* @wCurrMHdrVol, align 4
  %29 = call i32 @update_volm(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %1
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
