; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_create_risc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_create_risc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bt87x = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.snd_pcm_substream = type { i32 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@MAX_RISC_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RISC_SYNC = common dso_local global i32 0, align 4
@RISC_SYNC_FM1 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RISC_WRITE = common dso_local global i32 0, align 4
@RISC_SOL = common dso_local global i32 0, align 4
@RISC_SET_STATUS_SHIFT = common dso_local global i32 0, align 4
@RISC_RESET_STATUS_SHIFT = common dso_local global i32 0, align 4
@RISC_EOL = common dso_local global i32 0, align 4
@RISC_IRQ = common dso_local global i32 0, align 4
@RISC_SYNC_VRO = common dso_local global i32 0, align 4
@RISC_JUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bt87x*, %struct.snd_pcm_substream*, i32, i32)* @snd_bt87x_create_risc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_create_risc(%struct.snd_bt87x* %0, %struct.snd_pcm_substream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_bt87x*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_bt87x* %0, %struct.snd_bt87x** %6, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %19 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %4
  %24 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %25 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %26 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snd_dma_pci_data(i32 %27)
  %29 = load i32, i32* @MAX_RISC_SIZE, align 4
  %30 = call i32 @PAGE_ALIGN(i32 %29)
  %31 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %32 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %31, i32 0, i32 2
  %33 = call i64 @snd_dma_alloc_pages(i32 %24, i32 %28, i32 %30, %struct.TYPE_2__* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %167

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %41 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %12, align 8
  store i32 0, i32* %11, align 4
  %44 = load i32, i32* @RISC_SYNC, align 4
  %45 = load i32, i32* @RISC_SYNC_FM1, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %12, align 8
  store i32 %48, i32* %49, align 4
  %51 = call i8* @cpu_to_le32(i32 0)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %12, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %133, %39
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %136

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %129, %59
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = urem i32 %63, %64
  %66 = sub i32 %62, %65
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %70, %61
  %73 = load i32, i32* @RISC_WRITE, align 4
  %74 = load i32, i32* %15, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %72
  %80 = load i32, i32* %10, align 4
  %81 = mul i32 %80, 16
  %82 = load i32, i32* %8, align 4
  %83 = udiv i32 %81, %82
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* @RISC_SOL, align 4
  %85 = load i32, i32* %14, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @RISC_SET_STATUS_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* %14, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %17, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %93, 15
  %95 = load i32, i32* @RISC_RESET_STATUS_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %79, %72
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, i32* @RISC_EOL, align 4
  %105 = load i32, i32* @RISC_IRQ, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %14, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %103, %99
  %110 = load i32, i32* %14, align 4
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load i32*, i32** %12, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %12, align 8
  store i32 %112, i32* %113, align 4
  %115 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream* %115, i32 %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load i32*, i32** %12, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %12, align 8
  store i32 %120, i32* %121, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %11, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %13, align 4
  %128 = sub i32 %127, %126
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %109
  %130 = load i32, i32* %13, align 4
  %131 = icmp ugt i32 %130, 0
  br i1 %131, label %61, label %132

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %10, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %55

136:                                              ; preds = %55
  %137 = load i32, i32* @RISC_SYNC, align 4
  %138 = load i32, i32* @RISC_SYNC_VRO, align 4
  %139 = or i32 %137, %138
  %140 = call i8* @cpu_to_le32(i32 %139)
  %141 = ptrtoint i8* %140 to i32
  %142 = load i32*, i32** %12, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %12, align 8
  store i32 %141, i32* %142, align 4
  %144 = call i8* @cpu_to_le32(i32 0)
  %145 = ptrtoint i8* %144 to i32
  %146 = load i32*, i32** %12, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %12, align 8
  store i32 %145, i32* %146, align 4
  %148 = load i32, i32* @RISC_JUMP, align 4
  %149 = call i8* @cpu_to_le32(i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load i32*, i32** %12, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %12, align 8
  store i32 %150, i32* %151, align 4
  %153 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %154 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @cpu_to_le32(i32 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load i32*, i32** %12, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %12, align 8
  store i32 %158, i32* %159, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %163 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %166 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %136, %35
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
