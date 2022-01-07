; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_dma_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_dma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_runtime = type { i64 }
%struct.vx_pipe = type { i32, i32 }

@VX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*, i32)* @vx2_dma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx2_dma_read(%struct.vx_core* %0, %struct.snd_pcm_runtime* %1, %struct.vx_pipe* %2, i32 %3) #0 {
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %6, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %14 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %10, align 8
  %23 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %24 = load i32, i32* @VX_DMA, align 4
  %25 = call i64 @vx2_reg_addr(%struct.vx_core* %23, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = srem i32 %26, 4
  %28 = call i64 @snd_BUG_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %92

31:                                               ; preds = %4
  %32 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %33 = call i32 @vx2_setup_pseudo_dma(%struct.vx_core* %32, i32 0)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %38 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %31
  %42 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %43 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %12, align 4
  %51 = ashr i32 %50, 2
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %56, %41
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %12, align 4
  %55 = icmp sgt i32 %53, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @inl(i64 %57)
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  br label %52

63:                                               ; preds = %52
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %10, align 8
  %68 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %69 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %31
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %73 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 2
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %82, %70
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %8, align 4
  %81 = icmp sgt i32 %79, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @inl(i64 %83)
  %85 = call i8* @le32_to_cpu(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  br label %78

89:                                               ; preds = %78
  %90 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %91 = call i32 @vx2_release_pseudo_dma(%struct.vx_core* %90)
  br label %92

92:                                               ; preds = %89, %30
  ret void
}

declare dso_local i64 @vx2_reg_addr(%struct.vx_core*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @vx2_setup_pseudo_dma(%struct.vx_core*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @vx2_release_pseudo_dma(%struct.vx_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
