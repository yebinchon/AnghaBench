; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_fsl_dma.c_fsl_dma_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_fsl_dma.c_fsl_dma_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32*, i32*, i32, i32 }
%struct.fsl_dma_info = type { i32*, i32*, i32, i32 }

@fsl_dma_configure.initialized = internal global i32 0, align 4
@dma_global_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_dma_configure(%struct.fsl_dma_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_dma_info*, align 8
  store %struct.fsl_dma_info* %0, %struct.fsl_dma_info** %3, align 8
  %4 = load i32, i32* @fsl_dma_configure.initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

7:                                                ; preds = %1
  %8 = load %struct.fsl_dma_info*, %struct.fsl_dma_info** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_dma_info, %struct.fsl_dma_info* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_global_data, i32 0, i32 4), align 4
  %11 = load %struct.fsl_dma_info*, %struct.fsl_dma_info** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_dma_info, %struct.fsl_dma_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_global_data, i32 0, i32 3), align 8
  %14 = load %struct.fsl_dma_info*, %struct.fsl_dma_info** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_dma_info, %struct.fsl_dma_info* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_global_data, i32 0, i32 2), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.fsl_dma_info*, %struct.fsl_dma_info** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_dma_info, %struct.fsl_dma_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_global_data, i32 0, i32 2), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.fsl_dma_info*, %struct.fsl_dma_info** %3, align 8
  %29 = getelementptr inbounds %struct.fsl_dma_info, %struct.fsl_dma_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_global_data, i32 0, i32 1), align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.fsl_dma_info*, %struct.fsl_dma_info** %3, align 8
  %36 = getelementptr inbounds %struct.fsl_dma_info, %struct.fsl_dma_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_global_data, i32 0, i32 1), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %39, i32* %41, align 4
  %42 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_global_data, i32 0, i32 0), align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 0, i64* %43, align 8
  %44 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_global_data, i32 0, i32 0), align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  store i64 0, i64* %45, align 8
  store i32 1, i32* @fsl_dma_configure.initialized, align 4
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %7, %6
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
