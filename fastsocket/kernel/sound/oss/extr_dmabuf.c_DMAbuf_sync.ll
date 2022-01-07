; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, %struct.dma_buffparms*, i32, %struct.TYPE_2__*, i32 }
%struct.dma_buffparms = type { i64, i64, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 (i32)* }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@PCM_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@DMODE_OUTPUT = common dso_local global i64 0, align 8
@DMA_ACTIVE = common dso_local global i32 0, align 4
@DMA_SYNCING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@DMODE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMAbuf_sync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.audio_operations*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_buffparms*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %9, i64 %11
  %13 = load %struct.audio_operations*, %struct.audio_operations** %12, align 8
  store %struct.audio_operations* %13, %struct.audio_operations** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %15 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %20 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %200

26:                                               ; preds = %18, %1
  %27 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %28 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %27, i32 0, i32 1
  %29 = load %struct.dma_buffparms*, %struct.dma_buffparms** %28, align 8
  %30 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DMODE_OUTPUT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %188

34:                                               ; preds = %26
  %35 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %36 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %35, i32 0, i32 1
  %37 = load %struct.dma_buffparms*, %struct.dma_buffparms** %36, align 8
  store %struct.dma_buffparms* %37, %struct.dma_buffparms** %7, align 8
  %38 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %39 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %38, i32 0, i32 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %43 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %34
  %47 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %48 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DMA_ACTIVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %56 = call i32 @DMAbuf_launch_output(i32 %54, %struct.dma_buffparms* %55)
  br label %57

57:                                               ; preds = %53, %46, %34
  %58 = load i32, i32* @DMA_SYNCING, align 4
  %59 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %60 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %59, i32 0, i32 1
  %61 = load %struct.dma_buffparms*, %struct.dma_buffparms** %60, align 8
  %62 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 8
  %65 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %66 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %65, i32 0, i32 1
  %67 = load %struct.dma_buffparms*, %struct.dma_buffparms** %66, align 8
  %68 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %134, %57
  %70 = load i32, i32* @current, align 4
  %71 = call i32 @signal_pending(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %77 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %76, i32 0, i32 1
  %78 = load %struct.dma_buffparms*, %struct.dma_buffparms** %77, align 8
  %79 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %74, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %73
  %83 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %84 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %83, i32 0, i32 1
  %85 = load %struct.dma_buffparms*, %struct.dma_buffparms** %84, align 8
  %86 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %91 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %90, i32 0, i32 1
  %92 = load %struct.dma_buffparms*, %struct.dma_buffparms** %91, align 8
  %93 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br label %96

96:                                               ; preds = %89, %82, %73, %69
  %97 = phi i1 [ false, %82 ], [ false, %73 ], [ false, %69 ], [ %95, %89 ]
  br i1 %97, label %98, label %135

98:                                               ; preds = %96
  %99 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %100 = call i64 @dmabuf_timeout(%struct.dma_buffparms* %99)
  store i64 %100, i64* %8, align 8
  %101 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %102 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %101, i32 0, i32 4
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %106 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %105, i32 0, i32 2
  %107 = load i64, i64* %8, align 8
  %108 = call i64 @interruptible_sleep_on_timeout(i32* %106, i64 %107)
  store i64 %108, i64* %8, align 8
  %109 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %110 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %109, i32 0, i32 4
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @spin_lock_irqsave(i32* %110, i64 %111)
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %134, label %115

115:                                              ; preds = %98
  %116 = load i32, i32* @DMA_SYNCING, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %119 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %118, i32 0, i32 1
  %120 = load %struct.dma_buffparms*, %struct.dma_buffparms** %119, align 8
  %121 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %117
  store i32 %123, i32* %121, align 8
  %124 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %125 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %124, i32 0, i32 4
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %129 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %128, i32 0, i32 1
  %130 = load %struct.dma_buffparms*, %struct.dma_buffparms** %129, align 8
  %131 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %2, align 4
  br label %200

134:                                              ; preds = %98
  br label %69

135:                                              ; preds = %96
  %136 = load i32, i32* @DMA_SYNCING, align 4
  %137 = load i32, i32* @DMA_ACTIVE, align 4
  %138 = or i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %141 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %140, i32 0, i32 1
  %142 = load %struct.dma_buffparms*, %struct.dma_buffparms** %141, align 8
  %143 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %139
  store i32 %145, i32* %143, align 8
  %146 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %147 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %146, i32 0, i32 3
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i64 (i32)*, i64 (i32)** %149, align 8
  %151 = icmp ne i64 (i32)* %150, null
  br i1 %151, label %152, label %183

152:                                              ; preds = %135
  br label %153

153:                                              ; preds = %168, %152
  %154 = load i32, i32* @current, align 4
  %155 = call i32 @signal_pending(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %153
  %158 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %159 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %158, i32 0, i32 3
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64 (i32)*, i64 (i32)** %161, align 8
  %163 = load i32, i32* %3, align 4
  %164 = call i64 %162(i32 %163)
  %165 = icmp ne i64 %164, 0
  br label %166

166:                                              ; preds = %157, %153
  %167 = phi i1 [ false, %153 ], [ %165, %157 ]
  br i1 %167, label %168, label %182

168:                                              ; preds = %166
  %169 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %170 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %169, i32 0, i32 4
  %171 = load i64, i64* %5, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  %173 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %174 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %173, i32 0, i32 2
  %175 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %176 = call i64 @dmabuf_timeout(%struct.dma_buffparms* %175)
  %177 = call i64 @interruptible_sleep_on_timeout(i32* %174, i64 %176)
  %178 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %179 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %178, i32 0, i32 4
  %180 = load i64, i64* %5, align 8
  %181 = call i32 @spin_lock_irqsave(i32* %179, i64 %180)
  br label %153

182:                                              ; preds = %166
  br label %183

183:                                              ; preds = %182, %135
  %184 = load %struct.dma_buffparms*, %struct.dma_buffparms** %7, align 8
  %185 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %184, i32 0, i32 4
  %186 = load i64, i64* %5, align 8
  %187 = call i32 @spin_unlock_irqrestore(i32* %185, i64 %186)
  br label %188

188:                                              ; preds = %183, %26
  %189 = load i64, i64* @DMODE_NONE, align 8
  %190 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %191 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %190, i32 0, i32 1
  %192 = load %struct.dma_buffparms*, %struct.dma_buffparms** %191, align 8
  %193 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %192, i32 0, i32 0
  store i64 %189, i64* %193, align 8
  %194 = load %struct.audio_operations*, %struct.audio_operations** %4, align 8
  %195 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %194, i32 0, i32 1
  %196 = load %struct.dma_buffparms*, %struct.dma_buffparms** %195, align 8
  %197 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %188, %115, %25
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DMAbuf_launch_output(i32, %struct.dma_buffparms*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i64 @dmabuf_timeout(%struct.dma_buffparms*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @interruptible_sleep_on_timeout(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
