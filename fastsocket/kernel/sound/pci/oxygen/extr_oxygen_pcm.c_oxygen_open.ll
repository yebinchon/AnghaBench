; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_10__, i8* }
%struct.oxygen = type { i32, i32, %struct.TYPE_9__**, i32, i32, i32, %struct.snd_pcm_substream**, %struct.TYPE_7__, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 (i32, %struct.TYPE_10__*)* }

@PCM_B = common dso_local global i32 0, align 4
@CAPTURE_2_FROM_AC97_1 = common dso_local global i32 0, align 4
@oxygen_ac97_hardware = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@oxygen_hardware = common dso_local global %struct.TYPE_10__** null, align 8
@SNDRV_PCM_RATE_32000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_64000 = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@PCM_SPDIF = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@CONTROL_SPDIF_PCM = common dso_local global i64 0, align 8
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @oxygen_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxygen_open(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.oxygen* %10, %struct.oxygen** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PCM_B, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %24 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %29 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CAPTURE_2_FROM_AC97_1, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = bitcast %struct.TYPE_10__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 bitcast (%struct.TYPE_10__* @oxygen_ac97_hardware to i8*), i64 16, i1 false)
  br label %49

39:                                               ; preds = %27, %22, %2
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @oxygen_hardware, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %42, i64 %44
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = bitcast %struct.TYPE_10__* %41 to i8*
  %48 = bitcast %struct.TYPE_10__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 4 %48, i64 16, i1 false)
  br label %49

49:                                               ; preds = %39, %35
  %50 = load i32, i32* %5, align 4
  switch i32 %50, label %72 [
    i32 129, label %51
    i32 128, label %64
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* @SNDRV_PCM_RATE_32000, align 4
  %53 = load i32, i32* @SNDRV_PCM_RATE_64000, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store i32 44100, i32* %63, align 4
  br label %72

64:                                               ; preds = %49
  %65 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %66 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %49, %64, %51
  %73 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %74 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %75, align 8
  %77 = icmp ne i32 (i32, %struct.TYPE_10__*)* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %80 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %84, i32 0, i32 0
  %86 = call i32 %82(i32 %83, %struct.TYPE_10__* %85)
  br label %87

87:                                               ; preds = %78, %72
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %89 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %90 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %88, i32 0, i32 %89, i32 32)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %194

95:                                               ; preds = %87
  %96 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %97 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %98 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %96, i32 0, i32 %97, i32 32)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %194

103:                                              ; preds = %95
  %104 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  %112 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %113 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %112, i32 0, i32 32, i32 24)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %194

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %103
  %120 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp sgt i32 %123, 2
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %127 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %128 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %126, i32 0, i32 %127, i32 2)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %194

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %119
  %135 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %136 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %135)
  %137 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %138 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %139 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %138, i32 0, i32 6
  %140 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %140, i64 %142
  store %struct.snd_pcm_substream* %137, %struct.snd_pcm_substream** %143, align 8
  %144 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %145 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %144, i32 0, i32 1
  %146 = call i32 @mutex_lock(i32* %145)
  %147 = load i32, i32* %5, align 4
  %148 = shl i32 1, %147
  %149 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %150 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @PCM_SPDIF, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %190

156:                                              ; preds = %134
  %157 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %158 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %161 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %163 = xor i32 %162, -1
  %164 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %165 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %164, i32 0, i32 2
  %166 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %165, align 8
  %167 = load i64, i64* @CONTROL_SPDIF_PCM, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %166, i64 %167
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, %163
  store i32 %175, i32* %173, align 4
  %176 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %177 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %180 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %183 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %182, i32 0, i32 2
  %184 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %183, align 8
  %185 = load i64, i64* @CONTROL_SPDIF_PCM, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %184, i64 %185
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = call i32 @snd_ctl_notify(i32 %178, i32 %181, i32* %188)
  br label %190

190:                                              ; preds = %156, %134
  %191 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %192 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %191, i32 0, i32 1
  %193 = call i32 @mutex_unlock(i32* %192)
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %190, %131, %116, %101, %93
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
