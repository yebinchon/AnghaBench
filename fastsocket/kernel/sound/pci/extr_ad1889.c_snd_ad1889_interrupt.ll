; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ad1889.c_snd_ad1889_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ad1889.c_snd_ad1889_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1889 = type { i64, i64 }

@AD_DMA_DISR = common dso_local global i32 0, align 4
@AD_INTR_MASK = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@AD_DMA_DISR_PMAI = common dso_local global i64 0, align 8
@AD_DMA_DISR_PTAI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Unexpected master or target abort interrupt!\0A\00", align 1
@AD_DMA_DISR_WAVI = common dso_local global i64 0, align 8
@AD_DMA_DISR_ADCI = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_ad1889_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1889_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_ad1889*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.snd_ad1889*
  store %struct.snd_ad1889* %9, %struct.snd_ad1889** %7, align 8
  %10 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %11 = load i32, i32* @AD_DMA_DISR, align 4
  %12 = call i64 @ad1889_readl(%struct.snd_ad1889* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %14 = load i32, i32* @AD_DMA_DISR, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @ad1889_writel(%struct.snd_ad1889* %13, i32 %14, i64 %15)
  %17 = load i64, i64* @AD_INTR_MASK, align 8
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %69

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @AD_DMA_DISR_PMAI, align 8
  %31 = load i64, i64* @AD_DMA_DISR_PTAI, align 8
  %32 = or i64 %30, %31
  %33 = and i64 %29, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 @ad1889_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @AD_DMA_DISR_WAVI, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %44 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %49 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @snd_pcm_period_elapsed(i64 %50)
  br label %52

52:                                               ; preds = %47, %42, %37
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @AD_DMA_DISR_ADCI, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %59 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %64 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @snd_pcm_period_elapsed(i64 %65)
  br label %67

67:                                               ; preds = %62, %57, %52
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %26
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @ad1889_readl(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @ad1889_writel(%struct.snd_ad1889*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ad1889_debug(i8*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
