; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cs4281.c_snd_cs4281_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cs4281.c_snd_cs4281_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cs4281_dma* }
%struct.cs4281_dma = type { i32, i32, i32, i32, i32, i32 }
%struct.cs4281 = type { i32 }

@BA0_DCR_MSK = common dso_local global i32 0, align 4
@BA0_FCR_FEN = common dso_local global i32 0, align 4
@BA0_DMR_DMA = common dso_local global i32 0, align 4
@BA0_DMR_POLL = common dso_local global i32 0, align 4
@BA0_FCR0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_cs4281_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4281_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs4281_dma*, align 8
  %7 = alloca %struct.cs4281*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.cs4281_dma*, %struct.cs4281_dma** %11, align 8
  store %struct.cs4281_dma* %12, %struct.cs4281_dma** %6, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = call %struct.cs4281* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.cs4281* %14, %struct.cs4281** %7, align 8
  %15 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %16 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %104 [
    i32 133, label %19
    i32 132, label %30
    i32 130, label %43
    i32 131, label %43
    i32 129, label %71
    i32 128, label %71
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @BA0_DCR_MSK, align 4
  %21 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %22 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @BA0_FCR_FEN, align 4
  %26 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %27 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %110

30:                                               ; preds = %2
  %31 = load i32, i32* @BA0_DCR_MSK, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %34 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @BA0_FCR_FEN, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %40 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %110

43:                                               ; preds = %2, %2
  %44 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %45 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %46 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %49 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BA0_DMR_DMA, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %44, i32 %47, i32 %53)
  %55 = load i32, i32* @BA0_DMR_DMA, align 4
  %56 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %57 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @BA0_DCR_MSK, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %63 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @BA0_FCR_FEN, align 4
  %67 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %68 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %110

71:                                               ; preds = %2, %2
  %72 = load i32, i32* @BA0_DMR_DMA, align 4
  %73 = load i32, i32* @BA0_DMR_POLL, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %77 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @BA0_DCR_MSK, align 4
  %81 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %82 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @BA0_FCR_FEN, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %88 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %92 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @BA0_FCR0, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %71
  %97 = load i32, i32* @BA0_FCR_FEN, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %100 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %96, %71
  br label %110

104:                                              ; preds = %2
  %105 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %106 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %138

110:                                              ; preds = %103, %43, %30, %19
  %111 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %112 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %113 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %116 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %111, i32 %114, i32 %117)
  %119 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %120 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %121 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %124 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %119, i32 %122, i32 %125)
  %127 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %128 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %129 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.cs4281_dma*, %struct.cs4281_dma** %6, align 8
  %132 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %127, i32 %130, i32 %133)
  %135 = load %struct.cs4281*, %struct.cs4281** %7, align 8
  %136 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %135, i32 0, i32 0
  %137 = call i32 @spin_unlock(i32* %136)
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %110, %104
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.cs4281* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_cs4281_pokeBA0(%struct.cs4281*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
