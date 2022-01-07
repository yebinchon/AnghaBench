; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_rmchars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_rmchars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { %struct.dma_buffparms* }
%struct.dma_buffparms = type { i32*, i64, i32, i64, i32, i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@DMA_MAP_MAPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMAbuf_rmchars(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.audio_operations*, align 8
  %9 = alloca %struct.dma_buffparms*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %11, i64 %13
  %15 = load %struct.audio_operations*, %struct.audio_operations** %14, align 8
  store %struct.audio_operations* %15, %struct.audio_operations** %8, align 8
  %16 = load %struct.audio_operations*, %struct.audio_operations** %8, align 8
  %17 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %16, i32 0, i32 0
  %18 = load %struct.dma_buffparms*, %struct.dma_buffparms** %17, align 8
  store %struct.dma_buffparms* %18, %struct.dma_buffparms** %9, align 8
  %19 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %20 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %23 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %30 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DMA_MAP_MAPPED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %87

38:                                               ; preds = %3
  %39 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %40 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %87

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %49 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %47, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %54 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %57 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 0, i32* %59, align 4
  %60 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %61 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %65 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  %68 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %69 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = urem i64 %67, %71
  %73 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %74 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %84

75:                                               ; preds = %46
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %78 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %81 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %76, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %52
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %43, %35
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
