; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-pcm.c_davinci_pcm_dma_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-pcm.c_davinci_pcm_dma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.davinci_runtime_data* }
%struct.davinci_runtime_data = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.edmacc_param = type { i32, i32 }

@davinci_pcm_dma_irq = common dso_local global i32 0, align 4
@EVENTQ_0 = common dso_local global i32 0, align 4
@EDMA_SLOT_ANY = common dso_local global i32 0, align 4
@TCINTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @davinci_pcm_dma_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_pcm_dma_request(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.davinci_runtime_data*, align 8
  %5 = alloca %struct.edmacc_param, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %10, align 8
  store %struct.davinci_runtime_data* %11, %struct.davinci_runtime_data** %4, align 8
  %12 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %13 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @davinci_pcm_dma_irq, align 4
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = load i32, i32* @EVENTQ_0, align 4
  %20 = call i32 @edma_alloc_channel(i32 %16, i32 %17, %struct.snd_pcm_substream* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %71

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %28 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %30 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @EDMA_CTLR(i32 %31)
  %33 = load i32, i32* @EDMA_SLOT_ANY, align 4
  %34 = call i32 @edma_alloc_slot(i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %39 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @edma_free_channel(i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %71

43:                                               ; preds = %25
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %46 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %48 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @edma_read_slot(i32 %49, %struct.edmacc_param* %5)
  %51 = load i32, i32* @TCINTEN, align 4
  %52 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %53 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @EDMA_CHAN_SLOT(i32 %54)
  %56 = call i32 @EDMA_TCC(i32 %55)
  %57 = or i32 %51, %56
  %58 = getelementptr inbounds %struct.edmacc_param, %struct.edmacc_param* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %62 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @EDMA_CHAN_SLOT(i32 %63)
  %65 = shl i32 %64, 5
  %66 = getelementptr inbounds %struct.edmacc_param, %struct.edmacc_param* %5, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %68 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @edma_write_slot(i32 %69, %struct.edmacc_param* %5)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %43, %37, %23
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @edma_alloc_channel(i32, i32, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @edma_alloc_slot(i32, i32) #1

declare dso_local i32 @EDMA_CTLR(i32) #1

declare dso_local i32 @edma_free_channel(i32) #1

declare dso_local i32 @edma_read_slot(i32, %struct.edmacc_param*) #1

declare dso_local i32 @EDMA_TCC(i32) #1

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @edma_write_slot(i32, %struct.edmacc_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
