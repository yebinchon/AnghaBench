; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart.c_snd_mixart_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart.c_snd_mixart_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.mixart_stream* }
%struct.mixart_stream = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_mixart = type { i32, %struct.mixart_mgr* }
%struct.mixart_mgr = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mixart_bufferinfo = type { i32, i32 }

@MIXART_PCM_DIGITAL = common dso_local global i32 0, align 4
@MIXART_PCM_ANALOG = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@MIXART_MAX_STREAM_PER_CARD = common dso_local global i32 0, align 4
@MIXART_PLAYBACK_STREAMS = common dso_local global i32 0, align 4
@MIXART_CAPTURE_STREAMS = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [75 x i8] c"snd_mixart_hw_params(pcm %d) : dma_addr(%x) dma_bytes(%x) subs-number(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_mixart_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixart_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_mixart*, align 8
  %7 = alloca %struct.mixart_mgr*, align 8
  %8 = alloca %struct.mixart_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mixart_bufferinfo*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = call %struct.snd_mixart* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %15)
  store %struct.snd_mixart* %16, %struct.snd_mixart** %6, align 8
  %17 = load %struct.snd_mixart*, %struct.snd_mixart** %6, align 8
  %18 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %17, i32 0, i32 1
  %19 = load %struct.mixart_mgr*, %struct.mixart_mgr** %18, align 8
  store %struct.mixart_mgr* %19, %struct.mixart_mgr** %7, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load %struct.mixart_stream*, %struct.mixart_stream** %23, align 8
  store %struct.mixart_stream* %24, %struct.mixart_stream** %8, align 8
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %26 = call i32 @params_channels(%struct.snd_pcm_hw_params* %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %28 = call i32 @params_format(%struct.snd_pcm_hw_params* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %30 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.mixart_stream*, %struct.mixart_stream** %8, align 8
  %33 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MIXART_PCM_DIGITAL, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %2
  %38 = load %struct.mixart_stream*, %struct.mixart_stream** %8, align 8
  %39 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MIXART_PCM_ANALOG, align 4
  %42 = icmp sgt i32 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = load %struct.snd_mixart*, %struct.snd_mixart** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mixart_update_playback_stream_level(%struct.snd_mixart* %50, i32 %51, i32 %54)
  br label %60

56:                                               ; preds = %37
  %57 = load %struct.snd_mixart*, %struct.snd_mixart** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @mixart_update_capture_stream_level(%struct.snd_mixart* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %49
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.mixart_stream*, %struct.mixart_stream** %8, align 8
  %64 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mixart_stream*, %struct.mixart_stream** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @mixart_set_format(%struct.mixart_stream* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %72 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %159

75:                                               ; preds = %61
  %76 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %77 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %78 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %77)
  %79 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %76, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %154

82:                                               ; preds = %75
  %83 = load %struct.snd_mixart*, %struct.snd_mixart** %6, align 8
  %84 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MIXART_MAX_STREAM_PER_CARD, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load %struct.mixart_stream*, %struct.mixart_stream** %8, align 8
  %89 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MIXART_PLAYBACK_STREAMS, align 4
  %92 = load i32, i32* @MIXART_CAPTURE_STREAMS, align 4
  %93 = add nsw i32 %91, %92
  %94 = mul nsw i32 %90, %93
  %95 = add nsw i32 %87, %94
  %96 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %97 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %14, align 4
  %100 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %82
  %106 = load i32, i32* @MIXART_PLAYBACK_STREAMS, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %105, %82
  %110 = load %struct.snd_mixart*, %struct.snd_mixart** %6, align 8
  %111 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %110, i32 0, i32 1
  %112 = load %struct.mixart_mgr*, %struct.mixart_mgr** %111, align 8
  %113 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.mixart_bufferinfo*
  store %struct.mixart_bufferinfo* %116, %struct.mixart_bufferinfo** %13, align 8
  %117 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mixart_bufferinfo*, %struct.mixart_bufferinfo** %13, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.mixart_bufferinfo, %struct.mixart_bufferinfo* %122, i64 %124
  %126 = getelementptr inbounds %struct.mixart_bufferinfo, %struct.mixart_bufferinfo* %125, i32 0, i32 1
  store i32 %121, i32* %126, align 4
  %127 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %128 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mixart_bufferinfo*, %struct.mixart_bufferinfo** %13, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.mixart_bufferinfo, %struct.mixart_bufferinfo* %132, i64 %134
  %136 = getelementptr inbounds %struct.mixart_bufferinfo, %struct.mixart_bufferinfo* %135, i32 0, i32 0
  store i32 %131, i32* %136, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.mixart_bufferinfo*, %struct.mixart_bufferinfo** %13, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.mixart_bufferinfo, %struct.mixart_bufferinfo* %138, i64 %140
  %142 = getelementptr inbounds %struct.mixart_bufferinfo, %struct.mixart_bufferinfo* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.mixart_bufferinfo*, %struct.mixart_bufferinfo** %13, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.mixart_bufferinfo, %struct.mixart_bufferinfo* %144, i64 %146
  %148 = getelementptr inbounds %struct.mixart_bufferinfo, %struct.mixart_bufferinfo* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %151 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @snd_printdd(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %143, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %109, %75
  %155 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %156 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %155, i32 0, i32 0
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %154, %70
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.snd_mixart* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mixart_update_playback_stream_level(%struct.snd_mixart*, i32, i32) #1

declare dso_local i32 @mixart_update_capture_stream_level(%struct.snd_mixart*, i32) #1

declare dso_local i32 @mixart_set_format(%struct.mixart_stream*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_printdd(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
