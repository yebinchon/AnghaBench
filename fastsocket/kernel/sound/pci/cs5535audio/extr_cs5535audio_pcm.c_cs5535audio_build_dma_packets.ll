; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_cs5535audio_build_dma_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_cs5535audio_build_dma_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535audio = type { i32, i32 }
%struct.cs5535audio_dma = type { i32, i32, %struct.TYPE_5__*, %struct.snd_pcm_substream*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 (%struct.cs5535audio*, i32)*, i32 (%struct.cs5535audio*)* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.cs5535audio_dma_desc = type { i32, i8*, i8* }

@CS5535AUDIO_MAX_DESCRIPTORS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@CS5535AUDIO_DESC_LIST_SIZE = common dso_local global i64 0, align 8
@PRD_EOP = common dso_local global i32 0, align 4
@PRD_JMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs5535audio*, %struct.cs5535audio_dma*, %struct.snd_pcm_substream*, i32, i32)* @cs5535audio_build_dma_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs5535audio_build_dma_packets(%struct.cs5535audio* %0, %struct.cs5535audio_dma* %1, %struct.snd_pcm_substream* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs5535audio*, align 8
  %8 = alloca %struct.cs5535audio_dma*, align 8
  %9 = alloca %struct.snd_pcm_substream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cs5535audio_dma_desc*, align 8
  %17 = alloca %struct.cs5535audio_dma_desc*, align 8
  store %struct.cs5535audio* %0, %struct.cs5535audio** %7, align 8
  store %struct.cs5535audio_dma* %1, %struct.cs5535audio_dma** %8, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @CS5535AUDIO_MAX_DESCRIPTORS, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %176

24:                                               ; preds = %5
  %25 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %26 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %32 = load %struct.cs5535audio*, %struct.cs5535audio** %7, align 8
  %33 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_dma_pci_data(i32 %34)
  %36 = load i64, i64* @CS5535AUDIO_DESC_LIST_SIZE, align 8
  %37 = add nsw i64 %36, 1
  %38 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %39 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %38, i32 0, i32 4
  %40 = call i64 @snd_dma_alloc_pages(i32 %31, i32 %35, i64 %37, %struct.TYPE_6__* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %176

45:                                               ; preds = %30
  %46 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %47 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %49 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %24
  %51 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %52 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %58 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %176

63:                                               ; preds = %56, %50
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %13, align 4
  %70 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %71 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %108, %63
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %75
  %80 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %81 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = bitcast i32* %83 to %struct.cs5535audio_dma_desc*
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %84, i64 %86
  store %struct.cs5535audio_dma_desc* %87, %struct.cs5535audio_dma_desc** %17, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %17, align 8
  %92 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %17, align 8
  %96 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @PRD_EOP, align 4
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %17, align 8
  %100 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, 24
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %79
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %75

111:                                              ; preds = %75
  %112 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %113 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = bitcast i32* %115 to %struct.cs5535audio_dma_desc*
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %116, i64 %118
  store %struct.cs5535audio_dma_desc* %119, %struct.cs5535audio_dma_desc** %16, align 8
  %120 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %121 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %16, align 8
  %128 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %16, align 8
  %130 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %129, i32 0, i32 2
  store i8* null, i8** %130, align 8
  %131 = load i32, i32* @PRD_JMP, align 4
  %132 = call i8* @cpu_to_le32(i32 %131)
  %133 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %16, align 8
  %134 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.cs5535audio_dma_desc*, %struct.cs5535audio_dma_desc** %16, align 8
  %136 = getelementptr inbounds %struct.cs5535audio_dma_desc, %struct.cs5535audio_dma_desc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = mul i64 24, %140
  %142 = add i64 %138, %141
  %143 = trunc i64 %142 to i32
  %144 = call i8* @cpu_to_le32(i32 %143)
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %15, align 4
  %146 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %147 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %148 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %147, i32 0, i32 3
  store %struct.snd_pcm_substream* %146, %struct.snd_pcm_substream** %148, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %151 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %154 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.cs5535audio*, %struct.cs5535audio** %7, align 8
  %156 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %155, i32 0, i32 0
  %157 = call i32 @spin_lock_irq(i32* %156)
  %158 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %159 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %158, i32 0, i32 2
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32 (%struct.cs5535audio*)*, i32 (%struct.cs5535audio*)** %161, align 8
  %163 = load %struct.cs5535audio*, %struct.cs5535audio** %7, align 8
  %164 = call i32 %162(%struct.cs5535audio* %163)
  %165 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %8, align 8
  %166 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %165, i32 0, i32 2
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32 (%struct.cs5535audio*, i32)*, i32 (%struct.cs5535audio*, i32)** %168, align 8
  %170 = load %struct.cs5535audio*, %struct.cs5535audio** %7, align 8
  %171 = load i32, i32* %15, align 4
  %172 = call i32 %169(%struct.cs5535audio* %170, i32 %171)
  %173 = load %struct.cs5535audio*, %struct.cs5535audio** %7, align 8
  %174 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %173, i32 0, i32 0
  %175 = call i32 @spin_unlock_irq(i32* %174)
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %111, %62, %42, %21
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
