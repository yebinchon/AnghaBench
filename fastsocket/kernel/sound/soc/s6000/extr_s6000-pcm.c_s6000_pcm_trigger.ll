; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-pcm.c_s6000_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-pcm.c_s6000_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.s6000_pcm_dma_params* }
%struct.s6000_pcm_dma_params = type { i32 (%struct.snd_pcm_substream*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @s6000_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6000_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.s6000_pcm_dma_params*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %6, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %17, align 8
  store %struct.s6000_pcm_dma_params* %18, %struct.s6000_pcm_dma_params** %7, align 8
  %19 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %7, align 8
  %20 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %19, i32 0, i32 0
  %21 = load i32 (%struct.snd_pcm_substream*, i32, i32)*, i32 (%struct.snd_pcm_substream*, i32, i32)** %20, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 %21(%struct.snd_pcm_substream* %22, i32 %23, i32 0)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %52

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %37 [
    i32 130, label %31
    i32 131, label %31
    i32 132, label %31
    i32 129, label %34
    i32 128, label %34
    i32 133, label %34
  ]

31:                                               ; preds = %29, %29, %29
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = call i32 @s6000_pcm_start(%struct.snd_pcm_substream* %32)
  store i32 %33, i32* %8, align 4
  br label %40

34:                                               ; preds = %29, %29, %29
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %36 = call i32 @s6000_pcm_stop(%struct.snd_pcm_substream* %35)
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %34, %31
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %52

45:                                               ; preds = %40
  %46 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %7, align 8
  %47 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %46, i32 0, i32 0
  %48 = load i32 (%struct.snd_pcm_substream*, i32, i32)*, i32 (%struct.snd_pcm_substream*, i32, i32)** %47, align 8
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 %48(%struct.snd_pcm_substream* %49, i32 %50, i32 1)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %43, %27
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @s6000_pcm_start(%struct.snd_pcm_substream*) #1

declare dso_local i32 @s6000_pcm_stop(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
