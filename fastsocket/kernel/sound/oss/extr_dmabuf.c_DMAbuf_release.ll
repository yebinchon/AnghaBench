; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, i32, %struct.dma_buffparms*, %struct.dma_buffparms*, %struct.TYPE_2__* }
%struct.dma_buffparms = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@OPEN_WRITE = common dso_local global i32 0, align 4
@OPEN_READ = common dso_local global i32 0, align 4
@DMA_MAP_MAPPED = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@DMODE_OUTPUT = common dso_local global i64 0, align 8
@DMA_DUPLEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMAbuf_release(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_operations*, align 8
  %6 = alloca %struct.dma_buffparms*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %8, i64 %10
  %12 = load %struct.audio_operations*, %struct.audio_operations** %11, align 8
  store %struct.audio_operations* %12, %struct.audio_operations** %5, align 8
  %13 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %14 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %13, i32 0, i32 3
  %15 = load %struct.dma_buffparms*, %struct.dma_buffparms** %14, align 8
  store %struct.dma_buffparms* %15, %struct.dma_buffparms** %6, align 8
  %16 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %17 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OPEN_WRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %24 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %23, i32 0, i32 3
  %25 = load %struct.dma_buffparms*, %struct.dma_buffparms** %24, align 8
  %26 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %29 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @OPEN_READ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %36 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %35, i32 0, i32 2
  %37 = load %struct.dma_buffparms*, %struct.dma_buffparms** %36, align 8
  %38 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %40 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %39, i32 0, i32 2
  %41 = load %struct.dma_buffparms*, %struct.dma_buffparms** %40, align 8
  store %struct.dma_buffparms* %41, %struct.dma_buffparms** %6, align 8
  br label %42

42:                                               ; preds = %34, %27
  %43 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %44 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @OPEN_WRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %42
  %50 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %51 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %50, i32 0, i32 3
  %52 = load %struct.dma_buffparms*, %struct.dma_buffparms** %51, align 8
  %53 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DMA_MAP_MAPPED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @current, align 4
  %60 = call i32 @signal_pending(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %64 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %63, i32 0, i32 3
  %65 = load %struct.dma_buffparms*, %struct.dma_buffparms** %64, align 8
  %66 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DMODE_OUTPUT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @DMAbuf_sync(i32 %71)
  br label %73

73:                                               ; preds = %70, %62, %58
  br label %74

74:                                               ; preds = %73, %49
  br label %75

75:                                               ; preds = %74, %42
  %76 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %77 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %76, i32 0, i32 3
  %78 = load %struct.dma_buffparms*, %struct.dma_buffparms** %77, align 8
  %79 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DMODE_OUTPUT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %75
  %84 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %85 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %84, i32 0, i32 3
  %86 = load %struct.dma_buffparms*, %struct.dma_buffparms** %85, align 8
  %87 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %90 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %89, i32 0, i32 3
  %91 = load %struct.dma_buffparms*, %struct.dma_buffparms** %90, align 8
  %92 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %95 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %94, i32 0, i32 3
  %96 = load %struct.dma_buffparms*, %struct.dma_buffparms** %95, align 8
  %97 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memset(i32 %88, i32 %93, i32 %98)
  br label %100

100:                                              ; preds = %83, %75
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @DMAbuf_reset(i32 %101)
  %103 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %104 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %103, i32 0, i32 3
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @spin_lock_irqsave(i32* %104, i64 %105)
  %107 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %108 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %107, i32 0, i32 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32 (i32)*, i32 (i32)** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = call i32 %111(i32 %112)
  %114 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %115 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @OPEN_WRITE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %100
  %121 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %122 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %123 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %122, i32 0, i32 3
  %124 = load %struct.dma_buffparms*, %struct.dma_buffparms** %123, align 8
  %125 = call i32 @close_dmap(%struct.audio_operations* %121, %struct.dma_buffparms* %124)
  br label %126

126:                                              ; preds = %120, %100
  %127 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %128 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @OPEN_READ, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %145, label %132

132:                                              ; preds = %126
  %133 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %134 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @OPEN_WRITE, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %140 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DMA_DUPLEX, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138, %126
  %146 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %147 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %148 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %147, i32 0, i32 2
  %149 = load %struct.dma_buffparms*, %struct.dma_buffparms** %148, align 8
  %150 = call i32 @close_dmap(%struct.audio_operations* %146, %struct.dma_buffparms* %149)
  br label %151

151:                                              ; preds = %145, %138, %132
  %152 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %153 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %155 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %154, i32 0, i32 3
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  ret i32 0
}

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @DMAbuf_sync(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @DMAbuf_reset(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @close_dmap(%struct.audio_operations*, %struct.dma_buffparms*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
