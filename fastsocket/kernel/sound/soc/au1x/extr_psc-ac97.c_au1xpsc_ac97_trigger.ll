; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }

@au1xpsc_ac97_workdata = common dso_local global %struct.au1xpsc_audio_data* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @au1xpsc_ac97_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_ac97_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.au1xpsc_audio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %10 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** @au1xpsc_ac97_workdata, align 8
  store %struct.au1xpsc_audio_data* %10, %struct.au1xpsc_audio_data** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call i32 @SUBSTREAM_TYPE(%struct.snd_pcm_substream* %11)
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %50 [
    i32 130, label %14
    i32 131, label %14
    i32 129, label %27
    i32 128, label %27
  ]

14:                                               ; preds = %3, %3
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @AC97PCR_CLRFIFO(i32 %15)
  %17 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %18 = call i32 @AC97_PCR(%struct.au1xpsc_audio_data* %17)
  %19 = call i32 @au_writel(i32 %16, i32 %18)
  %20 = call i32 (...) @au_sync()
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @AC97PCR_START(i32 %21)
  %23 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %24 = call i32 @AC97_PCR(%struct.au1xpsc_audio_data* %23)
  %25 = call i32 @au_writel(i32 %22, i32 %24)
  %26 = call i32 (...) @au_sync()
  br label %53

27:                                               ; preds = %3, %3
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @AC97PCR_STOP(i32 %28)
  %30 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %31 = call i32 @AC97_PCR(%struct.au1xpsc_audio_data* %30)
  %32 = call i32 @au_writel(i32 %29, i32 %31)
  %33 = call i32 (...) @au_sync()
  br label %34

34:                                               ; preds = %42, %27
  %35 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %36 = call i32 @AC97_STAT(%struct.au1xpsc_audio_data* %35)
  %37 = call i32 @au_readl(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @AC97STAT_BUSY(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %34

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @AC97PCR_CLRFIFO(i32 %44)
  %46 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %47 = call i32 @AC97_PCR(%struct.au1xpsc_audio_data* %46)
  %48 = call i32 @au_writel(i32 %45, i32 %47)
  %49 = call i32 (...) @au_sync()
  br label %53

50:                                               ; preds = %3
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %43, %14
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @SUBSTREAM_TYPE(%struct.snd_pcm_substream*) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @AC97PCR_CLRFIFO(i32) #1

declare dso_local i32 @AC97_PCR(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @AC97PCR_START(i32) #1

declare dso_local i32 @AC97PCR_STOP(i32) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @AC97_STAT(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @AC97STAT_BUSY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1251}
