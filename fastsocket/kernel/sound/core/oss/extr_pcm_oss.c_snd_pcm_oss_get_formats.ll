; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_get_formats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_get_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_mask = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AFMT_MU_LAW = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@AFMT_S16_BE = common dso_local global i32 0, align 4
@AFMT_S8 = common dso_local global i32 0, align 4
@AFMT_U16_LE = common dso_local global i32 0, align 4
@AFMT_U16_BE = common dso_local global i32 0, align 4
@AFMT_S32_LE = common dso_local global i32 0, align 4
@AFMT_S32_BE = common dso_local global i32 0, align 4
@AFMT_S24_LE = common dso_local global i32 0, align 4
@AFMT_S24_BE = common dso_local global i32 0, align 4
@AFMT_S24_PACKED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*)* @snd_pcm_oss_get_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_get_formats(%struct.snd_pcm_oss_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_oss_file*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_mask, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %3, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %3, align 8
  %13 = call i32 @snd_pcm_oss_get_active_substream(%struct.snd_pcm_oss_file* %12, %struct.snd_pcm_substream** %4)
  store i32 %13, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %106

17:                                               ; preds = %1
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %30

23:                                               ; preds = %17
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %25 = call %struct.TYPE_6__* @oss_substream(%struct.snd_pcm_substream* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %23, %22
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @AFMT_MU_LAW, align 4
  %35 = load i32, i32* @AFMT_U8, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @AFMT_S16_LE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @AFMT_S16_BE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @AFMT_S8, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @AFMT_U16_LE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @AFMT_U16_BE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @AFMT_S32_LE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @AFMT_S32_BE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @AFMT_S24_LE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @AFMT_S24_BE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @AFMT_S24_PACKED, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %2, align 4
  br label %106

57:                                               ; preds = %30
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.snd_pcm_hw_params* @kmalloc(i32 4, i32 %58)
  store %struct.snd_pcm_hw_params* %59, %struct.snd_pcm_hw_params** %7, align 8
  %60 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %61 = icmp ne %struct.snd_pcm_hw_params* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %106

65:                                               ; preds = %57
  %66 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %67 = call i32 @_snd_pcm_hw_params_any(%struct.snd_pcm_hw_params* %66)
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %69 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %70 = call i32 @snd_pcm_hw_refine(%struct.snd_pcm_substream* %68, %struct.snd_pcm_hw_params* %69)
  store i32 %70, i32* %5, align 4
  %71 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %72 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %73 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %71, i32 %72)
  %74 = bitcast %struct.snd_mask* %9 to i8*
  %75 = bitcast %struct.snd_mask* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 4, i1 false)
  %76 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %77 = call i32 @kfree(%struct.snd_pcm_hw_params* %76)
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %106

82:                                               ; preds = %65
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %101, %82
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 32
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @snd_mask_test(%struct.snd_mask* %9, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @snd_pcm_oss_format_to(i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %95, %90
  br label %100

100:                                              ; preds = %99, %86
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %83

104:                                              ; preds = %83
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %80, %62, %33, %15
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @snd_pcm_oss_get_active_substream(%struct.snd_pcm_oss_file*, %struct.snd_pcm_substream**) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_6__* @oss_substream(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_pcm_hw_params* @kmalloc(i32, i32) #1

declare dso_local i32 @_snd_pcm_hw_params_any(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_hw_refine(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @snd_mask_test(%struct.snd_mask*, i32) #1

declare dso_local i32 @snd_pcm_oss_format_to(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
