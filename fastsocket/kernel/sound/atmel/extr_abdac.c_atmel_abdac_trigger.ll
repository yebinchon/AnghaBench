; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_abdac.c_atmel_abdac_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_abdac.c_atmel_abdac_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.atmel_abdac = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CTRL = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @atmel_abdac_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_abdac_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_abdac*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.atmel_abdac* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.atmel_abdac* %8, %struct.atmel_abdac** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %45 [
    i32 132, label %10
    i32 131, label %10
    i32 130, label %10
    i32 133, label %29
    i32 128, label %29
    i32 129, label %29
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %12 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_enable(i32 %13)
  %15 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %16 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dw_dma_cyclic_start(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %49

23:                                               ; preds = %10
  %24 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %25 = load i32, i32* @CTRL, align 4
  %26 = load i32, i32* @EN, align 4
  %27 = call i32 @DAC_BIT(i32 %26)
  %28 = call i32 @dac_writel(%struct.atmel_abdac* %24, i32 %25, i32 %27)
  br label %48

29:                                               ; preds = %2, %2, %2
  %30 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %31 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dw_dma_cyclic_stop(i32 %33)
  %35 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %36 = load i32, i32* @DATA, align 4
  %37 = call i32 @dac_writel(%struct.atmel_abdac* %35, i32 %36, i32 0)
  %38 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %39 = load i32, i32* @CTRL, align 4
  %40 = call i32 @dac_writel(%struct.atmel_abdac* %38, i32 %39, i32 0)
  %41 = load %struct.atmel_abdac*, %struct.atmel_abdac** %5, align 8
  %42 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable(i32 %43)
  br label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %29, %23
  br label %49

49:                                               ; preds = %48, %22
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.atmel_abdac* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dw_dma_cyclic_start(i32) #1

declare dso_local i32 @dac_writel(%struct.atmel_abdac*, i32, i32) #1

declare dso_local i32 @DAC_BIT(i32) #1

declare dso_local i32 @dw_dma_cyclic_stop(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
