; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_dma_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_dma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_runtime = type { i64 }
%struct.vx_pipe = type { i32, i32 }

@VX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*, i32)* @vx2_dma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx2_dma_write(%struct.vx_core* %0, %struct.snd_pcm_runtime* %1, %struct.vx_pipe* %2, i32 %3) #0 {
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %6, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %14 = load i32, i32* @VX_DMA, align 4
  %15 = call i64 @vx2_reg_addr(%struct.vx_core* %13, i32 %14)
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
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = srem i32 %26, 4
  %28 = call i64 @snd_BUG_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %94

31:                                               ; preds = %4
  %32 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %33 = call i32 @vx2_setup_pseudo_dma(%struct.vx_core* %32, i32 1)
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %38 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %31
  %42 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %43 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
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
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cpu_to_le32(i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @outl(i32 %59, i64 %60)
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %11, align 8
  br label %52

64:                                               ; preds = %52
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %11, align 8
  %69 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %70 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %31
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %74 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %8, align 4
  %78 = ashr i32 %77, 2
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %83, %71
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %8, align 4
  %82 = icmp sgt i32 %80, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cpu_to_le32(i32 %85)
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @outl(i32 %86, i64 %87)
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %11, align 8
  br label %79

91:                                               ; preds = %79
  %92 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %93 = call i32 @vx2_release_pseudo_dma(%struct.vx_core* %92)
  br label %94

94:                                               ; preds = %91, %30
  ret void
}

declare dso_local i64 @vx2_reg_addr(%struct.vx_core*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @vx2_setup_pseudo_dma(%struct.vx_core*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @vx2_release_pseudo_dma(%struct.vx_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
