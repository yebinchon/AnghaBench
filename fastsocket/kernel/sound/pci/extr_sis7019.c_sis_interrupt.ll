; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_sis7019.c_sis_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_sis7019.c_sis_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis7019 = type { i64, %struct.voice, i32* }
%struct.voice = type { i32, i32 }

@SIS_GISR = common dso_local global i64 0, align 8
@SIS_GISR_AUDIO_PLAY_DMA_IRQ_STATUS = common dso_local global i32 0, align 4
@SIS_GISR_AUDIO_RECORD_DMA_IRQ_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@SIS_PISR_A = common dso_local global i64 0, align 8
@SIS_PISR_B = common dso_local global i64 0, align 8
@SIS_RISR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sis_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sis7019*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.voice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sis7019*
  store %struct.sis7019* %12, %struct.sis7019** %6, align 8
  %13 = load %struct.sis7019*, %struct.sis7019** %6, align 8
  %14 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @SIS_GISR, align 8
  %18 = add i64 %16, %17
  %19 = call i32 @inl(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @SIS_GISR_AUDIO_PLAY_DMA_IRQ_STATUS, align 4
  %21 = load i32, i32* @SIS_GISR_AUDIO_RECORD_DMA_IRQ_STATUS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %112

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %107, %29
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @SIS_PISR_A, align 8
  %33 = add i64 %31, %32
  %34 = call i32 @inl(i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.sis7019*, %struct.sis7019** %6, align 8
  %40 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @sis_voice_irq(i32 %38, i32* %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @SIS_PISR_A, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @outl(i32 %43, i64 %46)
  br label %48

48:                                               ; preds = %37, %30
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @SIS_PISR_B, align 8
  %51 = add i64 %49, %50
  %52 = call i32 @inl(i64 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.sis7019*, %struct.sis7019** %6, align 8
  %58 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 32
  %61 = call i32 @sis_voice_irq(i32 %56, i32* %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @SIS_PISR_B, align 8
  %65 = add i64 %63, %64
  %66 = call i32 @outl(i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %55, %48
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @SIS_RISR, align 8
  %70 = add i64 %68, %69
  %71 = call i32 @inl(i64 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %67
  %75 = load %struct.sis7019*, %struct.sis7019** %6, align 8
  %76 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %75, i32 0, i32 1
  store %struct.voice* %76, %struct.voice** %8, align 8
  %77 = load %struct.voice*, %struct.voice** %8, align 8
  %78 = getelementptr inbounds %struct.voice, %struct.voice* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = load %struct.voice*, %struct.voice** %8, align 8
  %83 = getelementptr inbounds %struct.voice, %struct.voice* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @snd_pcm_period_elapsed(i32 %84)
  br label %86

86:                                               ; preds = %81, %74
  %87 = load i32, i32* %10, align 4
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @SIS_RISR, align 8
  %90 = add i64 %88, %89
  %91 = call i32 @outl(i32 %87, i64 %90)
  br label %92

92:                                               ; preds = %86, %67
  %93 = load i32, i32* %9, align 4
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @SIS_GISR, align 8
  %96 = add i64 %94, %95
  %97 = call i32 @outl(i32 %93, i64 %96)
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* @SIS_GISR, align 8
  %100 = add i64 %98, %99
  %101 = call i32 @inl(i64 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* @SIS_GISR_AUDIO_PLAY_DMA_IRQ_STATUS, align 4
  %103 = load i32, i32* @SIS_GISR_AUDIO_RECORD_DMA_IRQ_STATUS, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %30, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %27
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @sis_voice_irq(i32, i32*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
