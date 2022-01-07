; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_formats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mask = type { i32* }

@SNDRV_PCM_FMTBIT_U8 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S8 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_U16_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_U16_BE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_BE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_U24_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S24_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_U24_BE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S24_BE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_U24_3LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S24_3LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_U24_3BE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S24_3BE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_U32_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_U32_BE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_BE = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_MU_LAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mask*, i32)* @snd_pcm_plug_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_plug_formats(%struct.snd_mask* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mask*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_mask, align 8
  %6 = alloca i32, align 4
  store %struct.snd_mask* %0, %struct.snd_mask** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_mask*, %struct.snd_mask** %3, align 8
  %8 = bitcast %struct.snd_mask* %5 to i8*
  %9 = bitcast %struct.snd_mask* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 8, i1 false)
  %10 = load i32, i32* @SNDRV_PCM_FMTBIT_U8, align 4
  %11 = load i32, i32* @SNDRV_PCM_FMTBIT_S8, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SNDRV_PCM_FMTBIT_U16_LE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SNDRV_PCM_FMTBIT_U16_BE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_BE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SNDRV_PCM_FMTBIT_U24_LE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_LE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SNDRV_PCM_FMTBIT_U24_BE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_BE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SNDRV_PCM_FMTBIT_U24_3LE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_3LE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SNDRV_PCM_FMTBIT_U24_3BE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_3BE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SNDRV_PCM_FMTBIT_U32_LE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SNDRV_PCM_FMTBIT_U32_BE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_BE, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @SNDRV_PCM_FORMAT_MU_LAW, align 4
  %46 = call i32 @snd_mask_set(%struct.snd_mask* %5, i32 %45)
  %47 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %5, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %2
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %5, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %2
  %62 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %5, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 32
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 32
  %73 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %5, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %61
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @snd_mask_test(%struct.snd_mask* %5, i32 %79)
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_mask_set(%struct.snd_mask*, i32) #2

declare dso_local i32 @snd_mask_test(%struct.snd_mask*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
