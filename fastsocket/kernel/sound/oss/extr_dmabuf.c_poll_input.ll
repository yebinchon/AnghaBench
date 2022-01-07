; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_poll_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_poll_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, i32, i64, %struct.dma_buffparms* }
%struct.dma_buffparms = type { i32, i64, i64, i32 }
%struct.file = type { i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@OPEN_READ = common dso_local global i32 0, align 4
@DMA_MAP_MAPPED = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@DMODE_INPUT = common dso_local global i64 0, align 8
@DMODE_NONE = common dso_local global i64 0, align 8
@PCM_ENABLE_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32*)* @poll_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_input(%struct.file* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.audio_operations*, align 8
  %9 = alloca %struct.dma_buffparms*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %11, i64 %13
  %15 = load %struct.audio_operations*, %struct.audio_operations** %14, align 8
  store %struct.audio_operations* %15, %struct.audio_operations** %8, align 8
  %16 = load %struct.audio_operations*, %struct.audio_operations** %8, align 8
  %17 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %16, i32 0, i32 3
  %18 = load %struct.dma_buffparms*, %struct.dma_buffparms** %17, align 8
  store %struct.dma_buffparms* %18, %struct.dma_buffparms** %9, align 8
  %19 = load %struct.audio_operations*, %struct.audio_operations** %8, align 8
  %20 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OPEN_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

26:                                               ; preds = %3
  %27 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %28 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DMA_MAP_MAPPED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %35 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @POLLIN, align 4
  %40 = load i32, i32* @POLLRDNORM, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %4, align 4
  br label %95

42:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %95

43:                                               ; preds = %26
  %44 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %45 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DMODE_INPUT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %43
  %50 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %51 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DMODE_NONE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %49
  %56 = load %struct.audio_operations*, %struct.audio_operations** %8, align 8
  %57 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %55
  %63 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %64 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %62
  %68 = load %struct.audio_operations*, %struct.audio_operations** %8, align 8
  %69 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %74 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %73, i32 0, i32 3
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %79 = call i32 @DMAbuf_activate_recording(i32 %77, %struct.dma_buffparms* %78)
  %80 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %81 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %80, i32 0, i32 3
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  br label %84

84:                                               ; preds = %72, %67, %62, %55, %49
  store i32 0, i32* %4, align 4
  br label %95

85:                                               ; preds = %43
  %86 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %87 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %95

91:                                               ; preds = %85
  %92 = load i32, i32* @POLLIN, align 4
  %93 = load i32, i32* @POLLRDNORM, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %90, %84, %42, %38, %25
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DMAbuf_activate_recording(i32, %struct.dma_buffparms*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
