; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_audio.c_dma_set_fragment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_audio.c_dma_set_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dma_buffparms = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_SUB_BUFFERS = common dso_local global i32 0, align 4
@audio_devs = common dso_local global %struct.TYPE_2__** null, align 8
@DMA_AUTOMODE = common dso_local global i32 0, align 4
@OS_DMA_MINBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dma_buffparms*, i32)* @dma_set_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_set_fragment(i32 %0, %struct.dma_buffparms* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_buffparms*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.dma_buffparms* %1, %struct.dma_buffparms** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %170

15:                                               ; preds = %3
  %16 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %17 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %22 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %15
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %170

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 65535
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 32767
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @MAX_SUB_BUFFERS, align 4
  store i32 %37, i32* %9, align 4
  br label %46

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MAX_SUB_BUFFERS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, 17
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %170

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %170

61:                                               ; preds = %55
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @audio_devs, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @audio_devs, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %71, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %70
  %81 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @audio_devs, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %81, i64 %83
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %80, %70
  br label %89

89:                                               ; preds = %88, %61
  %90 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @audio_devs, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %90, i64 %92
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %89
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @audio_devs, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %100, i64 %102
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %99, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %98
  %109 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @audio_devs, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %109, i64 %111
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %108, %98
  br label %117

117:                                              ; preds = %116, %89
  %118 = load i32, i32* %8, align 4
  %119 = shl i32 1, %118
  %120 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %121 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %124 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %126 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %129 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %117
  %133 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %134 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %137 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %132, %117
  %139 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %140 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %143 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %141, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %138
  %147 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @audio_devs, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %147, i64 %149
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @DMA_AUTOMODE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %159 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %160, 2
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %157, %146, %138
  %163 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %164 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %163, i32 0, i32 0
  store i32 1, i32* %164, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %9, align 4
  %167 = sub nsw i32 %166, 1
  %168 = shl i32 %167, 16
  %169 = or i32 %165, %168
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %162, %58, %52, %25, %12
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
