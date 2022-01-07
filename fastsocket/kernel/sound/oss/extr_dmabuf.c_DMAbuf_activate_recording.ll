; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_activate_recording.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_activate_recording.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32 (i32, i32)*, i32 (i32, i64, i32, i32)* }
%struct.dma_buffparms = type { i64, i32, i32, i32, i64, i32, i64, i32, i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@OPEN_READ = common dso_local global i32 0, align 4
@PCM_ENABLE_INPUT = common dso_local global i32 0, align 4
@DMODE_OUTPUT = common dso_local global i64 0, align 8
@DMODE_NONE = common dso_local global i64 0, align 8
@DMODE_INPUT = common dso_local global i64 0, align 8
@DMA_ACTIVE = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMAbuf_activate_recording(i32 %0, %struct.dma_buffparms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_buffparms*, align 8
  %6 = alloca %struct.audio_operations*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.dma_buffparms* %1, %struct.dma_buffparms** %5, align 8
  %8 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %8, i64 %10
  %12 = load %struct.audio_operations*, %struct.audio_operations** %11, align 8
  store %struct.audio_operations* %12, %struct.audio_operations** %6, align 8
  %13 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %14 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @OPEN_READ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %153

20:                                               ; preds = %2
  %21 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %22 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %153

28:                                               ; preds = %20
  %29 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %30 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DMODE_OUTPUT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %36 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %35, i32 0, i32 8
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @DMAbuf_sync(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @DMAbuf_reset(i32 %40)
  %42 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %43 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %42, i32 0, i32 8
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load i64, i64* @DMODE_NONE, align 8
  %46 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %47 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %34, %28
  %49 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %50 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %56 = call i32 @reorganize_buffers(i32 %54, %struct.dma_buffparms* %55, i32 1)
  %57 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %58 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %64 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %67 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %61(i32 %62, i32 %65, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %153

73:                                               ; preds = %53
  %74 = load i64, i64* @DMODE_INPUT, align 8
  %75 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %76 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %48
  %78 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %79 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DMA_ACTIVE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %152, label %84

84:                                               ; preds = %77
  %85 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %86 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %92 = call i32 @reorganize_buffers(i32 %90, %struct.dma_buffparms* %91, i32 0)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %95 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %96 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %99 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DMA_MODE_READ, align 4
  %102 = call i32 @local_start_dma(%struct.audio_operations* %94, i64 %97, i32 %100, i32 %101)
  %103 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %104 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %103, i32 0, i32 3
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %110 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %113 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %116 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %111, %119
  %121 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %122 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 %107(i32 %108, i64 %120, i32 %123, i32 0)
  %125 = load i32, i32* @DMA_ACTIVE, align 4
  %126 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %127 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %131 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %130, i32 0, i32 3
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32 (i32, i32)*, i32 (i32, i32)** %133, align 8
  %135 = icmp ne i32 (i32, i32)* %134, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %93
  %137 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %138 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %137, i32 0, i32 3
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32 (i32, i32)*, i32 (i32, i32)** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %144 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %147 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %145, %148
  %150 = call i32 %141(i32 %142, i32 %149)
  br label %151

151:                                              ; preds = %136, %93
  br label %152

152:                                              ; preds = %151, %77
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %71, %27, %19
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @DMAbuf_sync(i32) #1

declare dso_local i32 @DMAbuf_reset(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @reorganize_buffers(i32, %struct.dma_buffparms*, i32) #1

declare dso_local i32 @local_start_dma(%struct.audio_operations*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
