; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vxp_dma_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vxp_dma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_runtime = type { i64 }
%struct.vx_pipe = type { i32, i32 }
%struct.snd_vxpocket = type { i32 }

@VX_DMA = common dso_local global i32 0, align 4
@VXP_DLG_DMAREAD_SEL_MASK = common dso_local global i32 0, align 4
@DIALOG = common dso_local global i32 0, align 4
@VXP_DLG_DMA16_SEL_MASK = common dso_local global i32 0, align 4
@ICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*, i32)* @vxp_dma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxp_dma_read(%struct.vx_core* %0, %struct.snd_pcm_runtime* %1, %struct.vx_pipe* %2, i32 %3) #0 {
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_vxpocket*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %6, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %15 = bitcast %struct.vx_core* %14 to %struct.snd_vxpocket*
  store %struct.snd_vxpocket* %15, %struct.snd_vxpocket** %9, align 8
  %16 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %17 = load i32, i32* @VX_DMA, align 4
  %18 = call i64 @vxp_reg_addr(%struct.vx_core* %16, i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %20 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = inttoptr i64 %27 to i16*
  store i16* %28, i16** %12, align 8
  %29 = load i32, i32* %8, align 4
  %30 = srem i32 %29, 2
  %31 = call i64 @snd_BUG_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %125

34:                                               ; preds = %4
  %35 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %36 = call i32 @vx_setup_pseudo_dma(%struct.vx_core* %35, i32 0)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %41 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %34
  %45 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %46 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %13, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %59, %44
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %13, align 4
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @inw(i64 %60)
  %62 = call i8* @le16_to_cpu(i32 %61)
  %63 = ptrtoint i8* %62 to i16
  %64 = load i16*, i16** %12, align 8
  %65 = getelementptr inbounds i16, i16* %64, i32 1
  store i16* %65, i16** %12, align 8
  store i16 %63, i16* %64, align 2
  br label %55

66:                                               ; preds = %55
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i16*
  store i16* %70, i16** %12, align 8
  %71 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %72 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %34
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %76 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %85, %73
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %8, align 4
  %84 = icmp sgt i32 %82, 1
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @inw(i64 %86)
  %88 = call i8* @le16_to_cpu(i32 %87)
  %89 = ptrtoint i8* %88 to i16
  %90 = load i16*, i16** %12, align 8
  %91 = getelementptr inbounds i16, i16* %90, i32 1
  store i16* %91, i16** %12, align 8
  store i16 %89, i16* %90, align 2
  br label %81

92:                                               ; preds = %81
  %93 = load i32, i32* @VXP_DLG_DMAREAD_SEL_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %9, align 8
  %96 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %100 = load i32, i32* @DIALOG, align 4
  %101 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %9, align 8
  %102 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @vx_outb(%struct.vx_core* %99, i32 %100, i32 %103)
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @inw(i64 %105)
  %107 = call i8* @le16_to_cpu(i32 %106)
  %108 = ptrtoint i8* %107 to i16
  %109 = load i16*, i16** %12, align 8
  store i16 %108, i16* %109, align 2
  %110 = load i32, i32* @VXP_DLG_DMA16_SEL_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %9, align 8
  %113 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %117 = load i32, i32* @DIALOG, align 4
  %118 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %9, align 8
  %119 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @vx_outb(%struct.vx_core* %116, i32 %117, i32 %120)
  %122 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %123 = load i32, i32* @ICR, align 4
  %124 = call i32 @vx_outb(%struct.vx_core* %122, i32 %123, i32 0)
  br label %125

125:                                              ; preds = %92, %33
  ret void
}

declare dso_local i64 @vxp_reg_addr(%struct.vx_core*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @vx_setup_pseudo_dma(%struct.vx_core*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @vx_outb(%struct.vx_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
