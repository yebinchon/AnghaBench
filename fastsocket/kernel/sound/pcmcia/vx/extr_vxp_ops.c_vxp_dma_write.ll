; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vxp_dma_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vxp_dma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_runtime = type { i64 }
%struct.vx_pipe = type { i32, i32 }

@VX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*, i32)* @vxp_dma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxp_dma_write(%struct.vx_core* %0, %struct.snd_pcm_runtime* %1, %struct.vx_pipe* %2, i32 %3) #0 {
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %6, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %14 = load i32, i32* @VX_DMA, align 4
  %15 = call i64 @vxp_reg_addr(%struct.vx_core* %13, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %17 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = inttoptr i64 %24 to i16*
  store i16* %25, i16** %11, align 8
  %26 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %27 = call i32 @vx_setup_pseudo_dma(%struct.vx_core* %26, i32 1)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  %31 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %32 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %4
  %36 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %37 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %12, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %50, %35
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %12, align 4
  %49 = icmp sgt i32 %47, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i16*, i16** %11, align 8
  %52 = load i16, i16* %51, align 2
  %53 = call i32 @cpu_to_le16(i16 zeroext %52)
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @outw(i32 %53, i64 %54)
  %56 = load i16*, i16** %11, align 8
  %57 = getelementptr inbounds i16, i16* %56, i32 1
  store i16* %57, i16** %11, align 8
  br label %46

58:                                               ; preds = %46
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i16*
  store i16* %62, i16** %11, align 8
  %63 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %64 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %68 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %8, align 4
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %77, %65
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %8, align 4
  %76 = icmp sgt i32 %74, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i16*, i16** %11, align 8
  %79 = load i16, i16* %78, align 2
  %80 = call i32 @cpu_to_le16(i16 zeroext %79)
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @outw(i32 %80, i64 %81)
  %83 = load i16*, i16** %11, align 8
  %84 = getelementptr inbounds i16, i16* %83, i32 1
  store i16* %84, i16** %11, align 8
  br label %73

85:                                               ; preds = %73
  %86 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %87 = call i32 @vx_release_pseudo_dma(%struct.vx_core* %86)
  ret void
}

declare dso_local i64 @vxp_reg_addr(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_setup_pseudo_dma(%struct.vx_core*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @cpu_to_le16(i16 zeroext) #1

declare dso_local i32 @vx_release_pseudo_dma(%struct.vx_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
