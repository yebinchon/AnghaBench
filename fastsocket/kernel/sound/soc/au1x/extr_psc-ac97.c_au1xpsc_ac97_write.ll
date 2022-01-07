; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i32 }
%struct.snd_ac97 = type { i32 }

@au1xpsc_ac97_workdata = common dso_local global %struct.au1xpsc_audio_data* null, align 8
@PSC_AC97EVNT_CD = common dso_local global i16 0, align 2
@AC97_RW_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @au1xpsc_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xpsc_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.au1xpsc_audio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %10 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** @au1xpsc_ac97_workdata, align 8
  store %struct.au1xpsc_audio_data* %10, %struct.au1xpsc_audio_data** %7, align 8
  %11 = load i16, i16* @PSC_AC97EVNT_CD, align 2
  %12 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %13 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %12)
  %14 = call i32 @au_writel(i16 zeroext %11, i32 %13)
  %15 = call i32 (...) @au_sync()
  %16 = load i32, i32* @AC97_RW_RETRIES, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %67, %3
  %18 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %19 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i16, i16* %5, align 2
  %22 = call zeroext i16 @PSC_AC97CDC_INDX(i16 zeroext %21)
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 65535
  %27 = or i32 %23, %26
  %28 = trunc i32 %27 to i16
  %29 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %30 = call i32 @AC97_CDC(%struct.au1xpsc_audio_data* %29)
  %31 = call i32 @au_writel(i16 zeroext %28, i32 %30)
  %32 = call i32 (...) @au_sync()
  store i32 2000, i32* %8, align 4
  br label %33

33:                                               ; preds = %48, %17
  %34 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %35 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %34)
  %36 = call zeroext i16 @au_readl(i32 %35)
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @PSC_AC97EVNT_CD, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %42, %33
  %47 = phi i1 [ false, %33 ], [ %45, %42 ]
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = call i32 @udelay(i32 2)
  br label %33

50:                                               ; preds = %46
  %51 = load i16, i16* @PSC_AC97EVNT_CD, align 2
  %52 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %53 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %52)
  %54 = call i32 @au_writel(i16 zeroext %51, i32 %53)
  %55 = call i32 (...) @au_sync()
  %56 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %57 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  br i1 %68, label %17, label %69

69:                                               ; preds = %67
  ret void
}

declare dso_local i32 @au_writel(i16 zeroext, i32) #1

declare dso_local i32 @AC97_EVNT(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @PSC_AC97CDC_INDX(i16 zeroext) #1

declare dso_local i32 @AC97_CDC(%struct.au1xpsc_audio_data*) #1

declare dso_local zeroext i16 @au_readl(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
