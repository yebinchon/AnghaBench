; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_fsl_dma.c_fsl_dma_update_pointers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_fsl_dma.c_fsl_dma_update_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dma_private = type { i64, i64, i64, i64, i64, %struct.TYPE_2__*, %struct.fsl_dma_link_descriptor* }
%struct.TYPE_2__ = type { i64 }
%struct.fsl_dma_link_descriptor = type { i8*, i8* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@NUM_DMA_LINKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dma_private*)* @fsl_dma_update_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_dma_update_pointers(%struct.fsl_dma_private* %0) #0 {
  %2 = alloca %struct.fsl_dma_private*, align 8
  %3 = alloca %struct.fsl_dma_link_descriptor*, align 8
  store %struct.fsl_dma_private* %0, %struct.fsl_dma_private** %2, align 8
  %4 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %4, i32 0, i32 6
  %6 = load %struct.fsl_dma_link_descriptor*, %struct.fsl_dma_link_descriptor** %5, align 8
  %7 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.fsl_dma_link_descriptor, %struct.fsl_dma_link_descriptor* %6, i64 %9
  store %struct.fsl_dma_link_descriptor* %10, %struct.fsl_dma_link_descriptor** %3, align 8
  %11 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %12 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @cpu_to_be32(i64 %21)
  %23 = load %struct.fsl_dma_link_descriptor*, %struct.fsl_dma_link_descriptor** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_dma_link_descriptor, %struct.fsl_dma_link_descriptor* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %32

25:                                               ; preds = %1
  %26 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %27 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @cpu_to_be32(i64 %28)
  %30 = load %struct.fsl_dma_link_descriptor*, %struct.fsl_dma_link_descriptor** %3, align 8
  %31 = getelementptr inbounds %struct.fsl_dma_link_descriptor, %struct.fsl_dma_link_descriptor* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %25, %18
  %33 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %34 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %37 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %41 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %44 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %32
  %48 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %49 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %52 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %32
  %54 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %55 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* @NUM_DMA_LINKS, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %62 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %53
  ret void
}

declare dso_local i8* @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
