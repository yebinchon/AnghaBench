; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i32 }
%struct.snd_ac97 = type { i32 }

@au1xpsc_ac97_workdata = common dso_local global %struct.au1xpsc_audio_data* null, align 8
@PSC_AC97EVNT_CD = common dso_local global i32 0, align 4
@AC97_RW_RETRIES = common dso_local global i16 0, align 2
@PSC_AC97CDC_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @au1xpsc_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @au1xpsc_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.au1xpsc_audio_data*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %9 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** @au1xpsc_ac97_workdata, align 8
  store %struct.au1xpsc_audio_data* %9, %struct.au1xpsc_audio_data** %5, align 8
  %10 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %11 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %12 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %11)
  %13 = call i32 @au_writel(i32 %10, i32 %12)
  %14 = call i32 (...) @au_sync()
  %15 = load i16, i16* @AC97_RW_RETRIES, align 2
  store i16 %15, i16* %7, align 2
  br label %16

16:                                               ; preds = %67, %2
  %17 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %18 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* @PSC_AC97CDC_RD, align 4
  %21 = load i16, i16* %4, align 2
  %22 = call i32 @PSC_AC97CDC_INDX(i16 zeroext %21)
  %23 = or i32 %20, %22
  %24 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %25 = call i32 @AC97_CDC(%struct.au1xpsc_audio_data* %24)
  %26 = call i32 @au_writel(i32 %23, i32 %25)
  %27 = call i32 (...) @au_sync()
  store i16 2000, i16* %8, align 2
  br label %28

28:                                               ; preds = %42, %16
  %29 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %30 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %29)
  %31 = call i32 @au_readl(i32 %30)
  %32 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load i16, i16* %8, align 2
  %37 = add i16 %36, -1
  store i16 %37, i16* %8, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %35, %28
  %41 = phi i1 [ false, %28 ], [ %39, %35 ]
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = call i32 @udelay(i32 2)
  br label %28

44:                                               ; preds = %40
  %45 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %46 = call i32 @AC97_CDC(%struct.au1xpsc_audio_data* %45)
  %47 = call i32 @au_readl(i32 %46)
  %48 = and i32 %47, 65535
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %6, align 2
  %50 = load i32, i32* @PSC_AC97EVNT_CD, align 4
  %51 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %52 = call i32 @AC97_EVNT(%struct.au1xpsc_audio_data* %51)
  %53 = call i32 @au_writel(i32 %50, i32 %52)
  %54 = call i32 (...) @au_sync()
  %55 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %56 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %58

58:                                               ; preds = %44
  %59 = load i16, i16* %7, align 2
  %60 = add i16 %59, -1
  store i16 %60, i16* %7, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i16, i16* %8, align 2
  %65 = icmp ne i16 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i1 [ false, %58 ], [ %66, %63 ]
  br i1 %68, label %16, label %69

69:                                               ; preds = %67
  %70 = load i16, i16* %7, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i16, i16* %6, align 2
  %75 = zext i16 %74 to i32
  br label %77

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 65535, %76 ]
  %79 = trunc i32 %78 to i16
  ret i16 %79
}

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @AC97_EVNT(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @PSC_AC97CDC_INDX(i16 zeroext) #1

declare dso_local i32 @AC97_CDC(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
