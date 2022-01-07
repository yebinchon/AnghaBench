; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_atiixp_build_dma_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_atiixp_build_dma_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_modem = type { i64, i32, i32 }
%struct.atiixp_dma = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, i32 (%struct.atiixp_modem*, i32)* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.atiixp_dma_desc = type { i32, i8*, i64, i8* }

@ATI_MAX_DESCRIPTORS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@ATI_DESC_LIST_SIZE = common dso_local global i32 0, align 4
@ATI_REG_LINKPTR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp_modem*, %struct.atiixp_dma*, %struct.snd_pcm_substream*, i32, i32)* @atiixp_build_dma_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_build_dma_packets(%struct.atiixp_modem* %0, %struct.atiixp_dma* %1, %struct.snd_pcm_substream* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.atiixp_modem*, align 8
  %8 = alloca %struct.atiixp_dma*, align 8
  %9 = alloca %struct.snd_pcm_substream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.atiixp_dma_desc*, align 8
  store %struct.atiixp_modem* %0, %struct.atiixp_modem** %7, align 8
  store %struct.atiixp_dma* %1, %struct.atiixp_dma** %8, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @ATI_MAX_DESCRIPTORS, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %181

23:                                               ; preds = %5
  %24 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %25 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %31 = load %struct.atiixp_modem*, %struct.atiixp_modem** %7, align 8
  %32 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_dma_pci_data(i32 %33)
  %35 = load i32, i32* @ATI_DESC_LIST_SIZE, align 4
  %36 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %37 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %36, i32 0, i32 3
  %38 = call i64 @snd_dma_alloc_pages(i32 %30, i32 %34, i32 %35, %struct.TYPE_6__* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %181

43:                                               ; preds = %29
  %44 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %45 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %47 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %23
  %49 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %50 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %56 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %181

61:                                               ; preds = %54, %48
  %62 = load %struct.atiixp_modem*, %struct.atiixp_modem** %7, align 8
  %63 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %62, i32 0, i32 1
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.atiixp_modem*, %struct.atiixp_modem** %7, align 8
  %67 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %70 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %68, %73
  %75 = call i32 @writel(i32 0, i64 %74)
  %76 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %77 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32 (%struct.atiixp_modem*, i32)*, i32 (%struct.atiixp_modem*, i32)** %79, align 8
  %81 = load %struct.atiixp_modem*, %struct.atiixp_modem** %7, align 8
  %82 = call i32 %80(%struct.atiixp_modem* %81, i32 0)
  %83 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %84 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32 (%struct.atiixp_modem*, i32)*, i32 (%struct.atiixp_modem*, i32)** %86, align 8
  %88 = load %struct.atiixp_modem*, %struct.atiixp_modem** %7, align 8
  %89 = call i32 %87(%struct.atiixp_modem* %88, i32 1)
  %90 = load %struct.atiixp_modem*, %struct.atiixp_modem** %7, align 8
  %91 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %90, i32 0, i32 1
  %92 = load i64, i64* %15, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %13, align 4
  %100 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %101 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %154, %61
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %157

109:                                              ; preds = %105
  %110 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %111 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = bitcast i32* %113 to %struct.atiixp_dma_desc*
  %115 = load i32, i32* %12, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.atiixp_dma_desc, %struct.atiixp_dma_desc* %114, i64 %116
  store %struct.atiixp_dma_desc* %117, %struct.atiixp_dma_desc** %16, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.atiixp_dma_desc*, %struct.atiixp_dma_desc** %16, align 8
  %121 = getelementptr inbounds %struct.atiixp_dma_desc, %struct.atiixp_dma_desc* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load %struct.atiixp_dma_desc*, %struct.atiixp_dma_desc** %16, align 8
  %123 = getelementptr inbounds %struct.atiixp_dma_desc, %struct.atiixp_dma_desc* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load i32, i32* %11, align 4
  %125 = lshr i32 %124, 2
  %126 = load %struct.atiixp_dma_desc*, %struct.atiixp_dma_desc** %16, align 8
  %127 = getelementptr inbounds %struct.atiixp_dma_desc, %struct.atiixp_dma_desc* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %129, 32
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %10, align 4
  %134 = sub i32 %133, 1
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %109
  %137 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %138 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.atiixp_dma_desc*, %struct.atiixp_dma_desc** %16, align 8
  %144 = getelementptr inbounds %struct.atiixp_dma_desc, %struct.atiixp_dma_desc* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  br label %150

145:                                              ; preds = %109
  %146 = load i32, i32* %14, align 4
  %147 = call i8* @cpu_to_le32(i32 %146)
  %148 = load %struct.atiixp_dma_desc*, %struct.atiixp_dma_desc** %16, align 8
  %149 = getelementptr inbounds %struct.atiixp_dma_desc, %struct.atiixp_dma_desc* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %145, %136
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %13, align 4
  %153 = add i32 %152, %151
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %12, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %105

157:                                              ; preds = %105
  %158 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %159 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = load i32, i32* @ATI_REG_LINKPTR_EN, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.atiixp_modem*, %struct.atiixp_modem** %7, align 8
  %166 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %169 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %168, i32 0, i32 2
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %167, %172
  %174 = call i32 @writel(i32 %164, i64 %173)
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %177 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.atiixp_dma*, %struct.atiixp_dma** %8, align 8
  %180 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %157, %60, %40, %20
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
