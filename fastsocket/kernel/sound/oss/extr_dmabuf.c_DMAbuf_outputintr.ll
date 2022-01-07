; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_outputintr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_outputintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { %struct.dma_buffparms* }
%struct.dma_buffparms = type { i32, i32, i32, i32, i32, i32, i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@DMA_NODMA = common dso_local global i32 0, align 4
@isa_dma_bridge_buggy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DMAbuf_outputintr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_operations*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_buffparms*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %12, i64 %14
  %16 = load %struct.audio_operations*, %struct.audio_operations** %15, align 8
  store %struct.audio_operations* %16, %struct.audio_operations** %5, align 8
  %17 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %18 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %17, i32 0, i32 0
  %19 = load %struct.dma_buffparms*, %struct.dma_buffparms** %18, align 8
  store %struct.dma_buffparms* %19, %struct.dma_buffparms** %7, align 8
  %20 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %21 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %20, i32 0, i32 6
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %25 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DMA_NODMA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %96, label %30

30:                                               ; preds = %2
  %31 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %32 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = call i64 (...) @claim_dma_lock()
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* @isa_dma_bridge_buggy, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %39 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @disable_dma(i32 %40)
  br label %42

42:                                               ; preds = %37, %30
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @clear_dma_ff(i32 %43)
  %45 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %46 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @get_dma_residue(i32 %48)
  %50 = sub nsw i32 %47, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @isa_dma_bridge_buggy, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %42
  %54 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %55 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @enable_dma(i32 %56)
  br label %58

58:                                               ; preds = %53, %42
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @release_dma_lock(i64 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %63 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %61, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %71 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %58
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %74, %68
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %91, %75
  %77 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %78 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  %85 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %86 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %83, %87
  br label %89

89:                                               ; preds = %82, %76
  %90 = phi i1 [ false, %76 ], [ %88, %82 ]
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @do_outputintr(i32 %92, i32 %93)
  br label %76

95:                                               ; preds = %89
  br label %100

96:                                               ; preds = %2
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @do_outputintr(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %95
  %101 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %102 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %101, i32 0, i32 6
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @get_dma_residue(i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @do_outputintr(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
