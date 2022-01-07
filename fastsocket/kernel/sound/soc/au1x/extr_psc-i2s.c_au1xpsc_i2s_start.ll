; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i32 }

@PSC_I2SSTAT_TB = common dso_local global i64 0, align 8
@PSC_I2SSTAT_RB = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1xpsc_audio_data*, i32)* @au1xpsc_i2s_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_i2s_start(%struct.au1xpsc_audio_data* %0, i32 %1) #0 {
  %3 = alloca %struct.au1xpsc_audio_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.au1xpsc_audio_data* %0, %struct.au1xpsc_audio_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %9 = call i32 @I2S_STAT(%struct.au1xpsc_audio_data* %8)
  %10 = call i64 @au_readl(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PSC_I2SSTAT_TB, align 8
  %13 = load i64, i64* @PSC_I2SSTAT_RB, align 8
  %14 = or i64 %12, %13
  %15 = and i64 %11, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %19 = call i32 @au1xpsc_i2s_configure(%struct.au1xpsc_audio_data* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %66

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @I2SPCR_CLRFIFO(i32 %25)
  %27 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %28 = call i32 @I2S_PCR(%struct.au1xpsc_audio_data* %27)
  %29 = call i32 @au_writel(i32 %26, i32 %28)
  %30 = call i32 (...) @au_sync()
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @I2SPCR_START(i32 %31)
  %33 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %34 = call i32 @I2S_PCR(%struct.au1xpsc_audio_data* %33)
  %35 = call i32 @au_writel(i32 %32, i32 %34)
  %36 = call i32 (...) @au_sync()
  store i64 1000000, i64* %5, align 8
  br label %37

37:                                               ; preds = %50, %24
  %38 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %39 = call i32 @I2S_STAT(%struct.au1xpsc_audio_data* %38)
  %40 = call i64 @au_readl(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @I2SSTAT_BUSY(i32 %41)
  %43 = and i64 %40, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi i1 [ false, %37 ], [ %47, %45 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %5, align 8
  br label %37

53:                                               ; preds = %48
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @I2SPCR_STOP(i32 %57)
  %59 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %3, align 8
  %60 = call i32 @I2S_PCR(%struct.au1xpsc_audio_data* %59)
  %61 = call i32 @au_writel(i32 %58, i32 %60)
  %62 = call i32 (...) @au_sync()
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %56, %53
  br label %66

66:                                               ; preds = %65, %22
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i64 @au_readl(i32) #1

declare dso_local i32 @I2S_STAT(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @au1xpsc_i2s_configure(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @I2SPCR_CLRFIFO(i32) #1

declare dso_local i32 @I2S_PCR(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @I2SPCR_START(i32) #1

declare dso_local i64 @I2SSTAT_BUSY(i32) #1

declare dso_local i32 @I2SPCR_STOP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
