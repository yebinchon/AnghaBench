; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_getwrbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_getwrbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { %struct.dma_buffparms* }
%struct.dma_buffparms = type { i32, i64, i32, i64 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@EIO = common dso_local global i32 0, align 4
@DMA_MAP_MAPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMODE_INPUT = common dso_local global i64 0, align 8
@DMODE_OUTPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMAbuf_getwrbuffer(i32 %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.audio_operations*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_buffparms*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %14, i64 %16
  %18 = load %struct.audio_operations*, %struct.audio_operations** %17, align 8
  store %struct.audio_operations* %18, %struct.audio_operations** %10, align 8
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.audio_operations*, %struct.audio_operations** %10, align 8
  %22 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %21, i32 0, i32 0
  %23 = load %struct.dma_buffparms*, %struct.dma_buffparms** %22, align 8
  store %struct.dma_buffparms* %23, %struct.dma_buffparms** %13, align 8
  %24 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  %25 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DMA_MAP_MAPPED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %94

33:                                               ; preds = %4
  %34 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  %35 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %34, i32 0, i32 2
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  %39 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  %45 = call i32 @reorganize_buffers(i32 %43, %struct.dma_buffparms* %44, i32 0)
  br label %46

46:                                               ; preds = %42, %33
  %47 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  %48 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DMODE_INPUT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  %54 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %53, i32 0, i32 2
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @DMAbuf_reset(i32 %57)
  %59 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  %60 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %59, i32 0, i32 2
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %52, %46
  %64 = load i64, i64* @DMODE_OUTPUT, align 8
  %65 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  %66 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %84, %63
  %68 = load i32, i32* %6, align 4
  %69 = load i8**, i8*** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i64 @find_output_space(i32 %68, i8** %69, i32* %70)
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  %75 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %74, i32 0, i32 2
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @output_sleep(i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %94

84:                                               ; preds = %73
  %85 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  %86 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %85, i32 0, i32 2
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  br label %67

89:                                               ; preds = %67
  %90 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  %91 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %90, i32 0, i32 2
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %89, %82, %30
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reorganize_buffers(i32, %struct.dma_buffparms*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DMAbuf_reset(i32) #1

declare dso_local i64 @find_output_space(i32, i8**, i32*) #1

declare dso_local i32 @output_sleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
