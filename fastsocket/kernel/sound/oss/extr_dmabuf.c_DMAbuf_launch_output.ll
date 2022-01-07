; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_launch_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_launch_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32, i64, i32, i32)*, i64 (i32, i32, i32)* }
%struct.dma_buffparms = type { i32, i32, i32*, i64, i64, i8*, i32, i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@PCM_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@DMODE_OUTPUT = common dso_local global i8* null, align 8
@DMA_ACTIVE = common dso_local global i32 0, align 4
@DMA_AUTOMODE = common dso_local global i32 0, align 4
@DMA_NODMA = common dso_local global i32 0, align 4
@DMA_STARTED = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DMAbuf_launch_output(i32 %0, %struct.dma_buffparms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buffparms*, align 8
  %5 = alloca %struct.audio_operations*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.dma_buffparms* %1, %struct.dma_buffparms** %4, align 8
  %6 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %6, i64 %8
  %10 = load %struct.audio_operations*, %struct.audio_operations** %9, align 8
  store %struct.audio_operations* %10, %struct.audio_operations** %5, align 8
  %11 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %12 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %15 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %175

22:                                               ; preds = %2
  %23 = load i8*, i8** @DMODE_OUTPUT, align 8
  %24 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %25 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %27 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DMA_ACTIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %22
  %33 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %34 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DMA_AUTOMODE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %41 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DMA_NODMA, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %169

46:                                               ; preds = %39, %32, %22
  %47 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %48 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DMA_STARTED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %95, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %56 = call i32 @reorganize_buffers(i32 %54, %struct.dma_buffparms* %55, i32 0)
  %57 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %58 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %64 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %67 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = call i64 %61(i32 %62, i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  br label %175

72:                                               ; preds = %53
  %73 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %74 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DMA_NODMA, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %72
  %80 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %81 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %82 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %85 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DMA_MODE_WRITE, align 4
  %88 = call i32 @local_start_dma(%struct.audio_operations* %80, i64 %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %79, %72
  %90 = load i32, i32* @DMA_STARTED, align 4
  %91 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %92 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %46
  %96 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %97 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %100 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %95
  %106 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %107 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %110 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %113 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %108, i32* %115, align 4
  br label %116

116:                                              ; preds = %105, %95
  %117 = load i8*, i8** @DMODE_OUTPUT, align 8
  %118 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %119 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %121 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %127 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %130 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %133 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %131, %135
  %137 = add i64 %128, %136
  %138 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %139 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %142 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 %124(i32 %125, i64 %137, i32 %145, i32 1)
  %147 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %148 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %147, i32 0, i32 3
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32 (i32, i32)*, i32 (i32, i32)** %150, align 8
  %152 = icmp ne i32 (i32, i32)* %151, null
  br i1 %152, label %153, label %168

153:                                              ; preds = %116
  %154 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %155 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %154, i32 0, i32 3
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32 (i32, i32)*, i32 (i32, i32)** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %161 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %164 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %162, %165
  %167 = call i32 %158(i32 %159, i32 %166)
  br label %168

168:                                              ; preds = %153, %116
  br label %169

169:                                              ; preds = %168, %39
  %170 = load i32, i32* @DMA_ACTIVE, align 4
  %171 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %172 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %169, %71, %21
  ret void
}

declare dso_local i32 @reorganize_buffers(i32, %struct.dma_buffparms*, i32) #1

declare dso_local i32 @local_start_dma(%struct.audio_operations*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
