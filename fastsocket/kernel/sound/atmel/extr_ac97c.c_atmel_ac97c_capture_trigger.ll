; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_ac97c.c_atmel_ac97c_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_ac97c.c_atmel_ac97c_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.atmel_ac97c = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAMR = common dso_local global i32 0, align 4
@AC97C_CMR_CENA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @atmel_ac97c_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ac97c_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_ac97c*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.atmel_ac97c* %9, %struct.atmel_ac97c** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %11 = load i32, i32* @CAMR, align 4
  %12 = call i64 @ac97c_readl(%struct.atmel_ac97c* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %43 [
    i32 132, label %14
    i32 131, label %14
    i32 130, label %14
    i32 133, label %27
    i32 128, label %27
    i32 129, label %27
  ]

14:                                               ; preds = %2, %2, %2
  %15 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %16 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dw_dma_cyclic_start(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %51

23:                                               ; preds = %14
  %24 = load i64, i64* @AC97C_CMR_CENA, align 8
  %25 = load i64, i64* %6, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %6, align 8
  br label %46

27:                                               ; preds = %2, %2, %2
  %28 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %29 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dw_dma_cyclic_stop(i32 %31)
  %33 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %34 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load i64, i64* @AC97C_CMR_CENA, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %37, %27
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %42, %23
  %47 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %48 = load i32, i32* @CAMR, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @ac97c_writel(%struct.atmel_ac97c* %47, i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %46, %22
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @ac97c_readl(%struct.atmel_ac97c*, i32) #1

declare dso_local i32 @dw_dma_cyclic_start(i32) #1

declare dso_local i32 @dw_dma_cyclic_stop(i32) #1

declare dso_local i32 @ac97c_writel(%struct.atmel_ac97c*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
