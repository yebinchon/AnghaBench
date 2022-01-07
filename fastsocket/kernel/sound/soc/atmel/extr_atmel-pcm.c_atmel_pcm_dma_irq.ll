; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel-pcm.c_atmel_pcm_dma_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel-pcm.c_atmel_pcm_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.atmel_runtime_data* }
%struct.atmel_runtime_data = type { i32, i32, i32, i32, %struct.atmel_pcm_dma_params* }
%struct.atmel_pcm_dma_params = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@atmel_pcm_dma_irq.count = internal global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"atmel-pcm: buffer %s on %s (SSC_SR=%#x, count=%d)\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"underrun\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"overrun\00", align 1
@ATMEL_PDC_PTCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.snd_pcm_substream*)* @atmel_pcm_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_pcm_dma_irq(i32 %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.atmel_runtime_data*, align 8
  %6 = alloca %struct.atmel_pcm_dma_params*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %10, align 8
  store %struct.atmel_runtime_data* %11, %struct.atmel_runtime_data** %5, align 8
  %12 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %13 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %12, i32 0, i32 4
  %14 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %13, align 8
  store %struct.atmel_pcm_dma_params* %14, %struct.atmel_pcm_dma_params** %6, align 8
  %15 = load i32, i32* @atmel_pcm_dma_irq.count, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @atmel_pcm_dma_irq.count, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %19 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %116

25:                                               ; preds = %2
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %33 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %34 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @atmel_pcm_dma_irq.count, align 4
  %38 = call i32 @pr_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %40 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATMEL_PDC_PTCR, align 4
  %45 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %46 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ssc_writex(i32 %43, i32 %44, i32 %49)
  %51 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %52 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %55 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %59 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %62 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %25
  %66 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %67 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %70 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %65, %25
  %72 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %73 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %78 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %83 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ssc_writex(i32 %76, i32 %81, i32 %84)
  %86 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %87 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %92 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %97 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %100 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sdiv i32 %98, %101
  %103 = call i32 @ssc_writex(i32 %90, i32 %95, i32 %102)
  %104 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %105 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %104, i32 0, i32 2
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ATMEL_PDC_PTCR, align 4
  %110 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %111 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %110, i32 0, i32 3
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ssc_writex(i32 %108, i32 %109, i32 %114)
  br label %116

116:                                              ; preds = %71, %2
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %119 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %118, i32 0, i32 3
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %117, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %179

125:                                              ; preds = %116
  %126 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %127 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %130 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %134 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %137 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp sge i32 %135, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %125
  %141 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %142 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %145 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %140, %125
  %147 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %148 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %147, i32 0, i32 2
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %153 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %158 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ssc_writex(i32 %151, i32 %156, i32 %159)
  %161 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %162 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %161, i32 0, i32 2
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %167 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %166, i32 0, i32 1
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %5, align 8
  %172 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %6, align 8
  %175 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sdiv i32 %173, %176
  %178 = call i32 @ssc_writex(i32 %165, i32 %170, i32 %177)
  br label %179

179:                                              ; preds = %146, %116
  %180 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %181 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %180)
  ret void
}

declare dso_local i32 @pr_warning(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @ssc_writex(i32, i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
