; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.audiopipe*, %struct.TYPE_4__ }
%struct.audiopipe = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8*, i32, i64 }
%struct.TYPE_4__ = type { i8, i32, i32 }
%struct.echoaudio = type { i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcm_hardware_skel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"max_channels=%d\0A\00", align 1
@channels_list = common dso_local global i8* null, align 8
@DIGITAL_MODE_ADAT = common dso_local global i64 0, align 8
@SNDRV_PCM_RATE_8000_48000 = common dso_local global i32 0, align 4
@audiopipe_free = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hw_rule_sample_rate = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"s-g list allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i8)* @pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_open(%struct.snd_pcm_substream* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.audiopipe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i8 %1, i8* %5, align 1
  %11 = load i8, i8* %5, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %166

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %18)
  store %struct.echoaudio* %19, %struct.echoaudio** %6, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.audiopipe* @kzalloc(i32 48, i32 %23)
  store %struct.audiopipe* %24, %struct.audiopipe** %8, align 8
  %25 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %26 = icmp ne %struct.audiopipe* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %166

30:                                               ; preds = %17
  %31 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %32 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %34 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %33, i32 0, i32 3
  %35 = call i32 @memcpy(%struct.TYPE_4__* %34, i32* @pcm_hardware_skel, i32 4)
  %36 = load i8, i8* %5, align 1
  %37 = sext i8 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @DE_HWP(i8* %38)
  %40 = load i8*, i8** @channels_list, align 8
  %41 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %42 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %45 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %58, %30
  %48 = load i8*, i8** @channels_list, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* %5, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sle i32 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %47

61:                                               ; preds = %47
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %64 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %67 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i8, i8* %68, align 8
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* %5, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load i8, i8* %5, align 1
  %76 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %77 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i8 %75, i8* %78, align 8
  br label %79

79:                                               ; preds = %74, %61
  %80 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %81 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DIGITAL_MODE_ADAT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %87 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 48000, i32* %88, align 4
  %89 = load i32, i32* @SNDRV_PCM_RATE_8000_48000, align 4
  %90 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %91 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %89
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %85, %79
  %96 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %97 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %96, i32 0, i32 2
  %98 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %99 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %98, i32 0, i32 3
  %100 = bitcast %struct.TYPE_4__* %97 to i8*
  %101 = bitcast %struct.TYPE_4__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 12, i1 false)
  %102 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %103 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %103, i32 0, i32 1
  store %struct.audiopipe* %102, %struct.audiopipe** %104, align 8
  %105 = load i32, i32* @audiopipe_free, align 4
  %106 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %109 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %108)
  %110 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %111 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %112 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %113 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %112, i32 0, i32 2
  %114 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %110, i32 0, i32 %111, %struct.TYPE_3__* %113)
  store i32 %114, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %95
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  br label %166

118:                                              ; preds = %95
  %119 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %120 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %121 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %119, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %3, align 4
  br label %166

125:                                              ; preds = %118
  %126 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %127 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %128 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %126, i32 0, i32 %127, i32 32)
  store i32 %128, i32* %9, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %166

132:                                              ; preds = %125
  %133 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %134 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %135 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %133, i32 0, i32 %134, i32 32)
  store i32 %135, i32* %9, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %166

139:                                              ; preds = %132
  %140 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %140, i32 0, i32 0
  %142 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %141, align 8
  %143 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %144 = load i32, i32* @hw_rule_sample_rate, align 4
  %145 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %146 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %147 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %142, i32 0, i32 %143, i32 %144, %struct.echoaudio* %145, i32 %146, i32 -1)
  store i32 %147, i32* %9, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %139
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %166

151:                                              ; preds = %139
  %152 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %153 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %154 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @snd_dma_pci_data(i32 %155)
  %157 = load i32, i32* @PAGE_SIZE, align 4
  %158 = load %struct.audiopipe*, %struct.audiopipe** %8, align 8
  %159 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %158, i32 0, i32 1
  %160 = call i32 @snd_dma_alloc_pages(i32 %152, i32 %156, i32 %157, i32* %159)
  store i32 %160, i32* %9, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %151
  %163 = call i32 @DE_HWP(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %3, align 4
  br label %166

165:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %162, %149, %137, %130, %123, %116, %27, %14
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.audiopipe* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @DE_HWP(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.echoaudio*, i32, i32) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i32, i32*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
