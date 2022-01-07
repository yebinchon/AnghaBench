; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_playback_pro_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_playback_pro_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__, i8* }
%struct.snd_ice1712 = type { i32, i32, i64*, %struct.snd_pcm_substream* }

@vt1724_playback_pro_reg = common dso_local global i32 0, align 4
@snd_vt1724_playback_pro = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@VT1724_BUFFER_ALIGN = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_vt1724_playback_pro_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_playback_pro_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 1
  store i8* bitcast (i32* @vt1724_playback_pro_reg to i8*), i8** %13, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %15, i32 0, i32 3
  store %struct.snd_pcm_substream* %14, %struct.snd_pcm_substream** %16, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 0
  %19 = bitcast %struct.TYPE_2__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 4 bitcast (%struct.TYPE_2__* @snd_vt1724_playback_pro to i8*), i64 4, i1 false)
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %21 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %20)
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %23 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %22, i32 0, i32 32, i32 24)
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %26 = call i32 @set_rate_constraints(%struct.snd_ice1712* %24, %struct.snd_pcm_substream* %25)
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 2
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %50, %1
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %41 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %53

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %35

53:                                               ; preds = %48, %35
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = mul nsw i32 %55, 2
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = icmp sgt i32 %61, 2
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %65 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %66 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %64, i32 0, i32 %65, i32 2)
  br label %67

67:                                               ; preds = %63, %53
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %69 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %72 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %73 = load i32, i32* @VT1724_BUFFER_ALIGN, align 4
  %74 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %71, i32 0, i32 %72, i32 %73)
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %76 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %77 = load i32, i32* @VT1724_BUFFER_ALIGN, align 4
  %78 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %75, i32 0, i32 %76, i32 %77)
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @set_rate_constraints(%struct.snd_ice1712*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
