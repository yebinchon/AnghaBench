; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_soc_codec_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_soc_codec_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai_link*, %struct.snd_soc_device* }
%struct.snd_soc_dai_link = type { %struct.TYPE_8__*, %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.TYPE_8__ = type { {}* }
%struct.snd_soc_dai = type { i32, %struct.TYPE_10__, i32*, %struct.TYPE_7__*, i64, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* }
%struct.TYPE_6__ = type { i64 }
%struct.snd_soc_device = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32, %struct.snd_soc_codec*, %struct.snd_soc_platform* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_soc_platform = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { {}* }

@pcm_mutex = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@pmdown_time = common dso_local global i32 0, align 4
@SND_SOC_DAPM_STREAM_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @soc_codec_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_codec_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_dai_link*, align 8
  %7 = alloca %struct.snd_soc_platform*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %3, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_device*, %struct.snd_soc_device** %15, align 8
  store %struct.snd_soc_device* %16, %struct.snd_soc_device** %4, align 8
  %17 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %18, align 8
  store %struct.snd_soc_card* %19, %struct.snd_soc_card** %5, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %21, align 8
  store %struct.snd_soc_dai_link* %22, %struct.snd_soc_dai_link** %6, align 8
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %23, i32 0, i32 2
  %25 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %24, align 8
  store %struct.snd_soc_platform* %25, %struct.snd_soc_platform** %7, align 8
  %26 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %26, i32 0, i32 2
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %27, align 8
  store %struct.snd_soc_dai* %28, %struct.snd_soc_dai** %8, align 8
  %29 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %29, i32 0, i32 1
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %30, align 8
  store %struct.snd_soc_dai* %31, %struct.snd_soc_dai** %9, align 8
  %32 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %33 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %32, i32 0, i32 1
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %33, align 8
  store %struct.snd_soc_codec* %34, %struct.snd_soc_codec** %10, align 8
  %35 = call i32 @mutex_lock(i32* @pcm_mutex)
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %55

48:                                               ; preds = %1
  %49 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %41
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %63 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %69 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %67, %61, %55
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %74 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %84 = call i32 @snd_soc_dai_digital_mute(%struct.snd_soc_dai* %83, i32 1)
  br label %85

85:                                               ; preds = %82, %72
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %86, i32 0, i32 3
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %89, align 8
  %91 = icmp ne i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %93, i32 0, i32 3
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %96, align 8
  %98 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %99 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %100 = call i32 %97(%struct.snd_pcm_substream* %98, %struct.snd_soc_dai* %99)
  br label %101

101:                                              ; preds = %92, %85
  %102 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %103 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %102, i32 0, i32 3
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %105, align 8
  %107 = icmp ne i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  %109 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %110 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %109, i32 0, i32 3
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %112, align 8
  %114 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %115 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %116 = call i32 %113(%struct.snd_pcm_substream* %114, %struct.snd_soc_dai* %115)
  br label %117

117:                                              ; preds = %108, %101
  %118 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %119 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = icmp ne %struct.TYPE_8__* %120, null
  br i1 %121, label %122, label %139

122:                                              ; preds = %117
  %123 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %124 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = bitcast {}** %126 to i32 (%struct.snd_pcm_substream*)**
  %128 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %127, align 8
  %129 = icmp ne i32 (%struct.snd_pcm_substream*)* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %122
  %131 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  %132 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = bitcast {}** %134 to i32 (%struct.snd_pcm_substream*)**
  %136 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %135, align 8
  %137 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %138 = call i32 %136(%struct.snd_pcm_substream* %137)
  br label %139

139:                                              ; preds = %130, %122, %117
  %140 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %7, align 8
  %141 = getelementptr inbounds %struct.snd_soc_platform, %struct.snd_soc_platform* %140, i32 0, i32 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = bitcast {}** %143 to i32 (%struct.snd_pcm_substream*)**
  %145 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %144, align 8
  %146 = icmp ne i32 (%struct.snd_pcm_substream*)* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %139
  %148 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %7, align 8
  %149 = getelementptr inbounds %struct.snd_soc_platform, %struct.snd_soc_platform* %148, i32 0, i32 0
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = bitcast {}** %151 to i32 (%struct.snd_pcm_substream*)**
  %153 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %152, align 8
  %154 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %155 = call i32 %153(%struct.snd_pcm_substream* %154)
  br label %156

156:                                              ; preds = %147, %139
  %157 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %158 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %157, i32 0, i32 2
  store i32* null, i32** %158, align 8
  %159 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %160 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %156
  %165 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %166 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  %167 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %168 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %167, i32 0, i32 0
  %169 = load i32, i32* @pmdown_time, align 4
  %170 = call i32 @msecs_to_jiffies(i32 %169)
  %171 = call i32 @schedule_delayed_work(i32* %168, i32 %170)
  br label %180

172:                                              ; preds = %156
  %173 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %174 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %175 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @SND_SOC_DAPM_STREAM_STOP, align 4
  %179 = call i32 @snd_soc_dapm_stream_event(%struct.snd_soc_codec* %173, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %172, %164
  %181 = call i32 @mutex_unlock(i32* @pcm_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_dai_digital_mute(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snd_soc_dapm_stream_event(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
