; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_3__, i32, i32 }
%struct.hdsp = type { i64, i32, i32, i32, %struct.snd_pcm_substream*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@snd_hdsp_capture_subinfo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@HDSP_DMA_AREA_BYTES = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@hdsp_hw_constraints_period_sizes = common dso_local global i32 0, align 4
@H9632 = common dso_local global i64 0, align 8
@SNDRV_PCM_RATE_KNOT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hdsp_hw_constraints_9632_sample_rates = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@snd_hdsp_hw_rule_in_channels = common dso_local global i32 0, align 4
@snd_hdsp_hw_rule_in_channels_rate = common dso_local global i32 0, align 4
@snd_hdsp_hw_rule_rate_in_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_hdsp_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.hdsp*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.hdsp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.hdsp* %7, %struct.hdsp** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %12 = call i64 @hdsp_check_for_iobox(%struct.hdsp* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %104

17:                                               ; preds = %1
  %18 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %19 = call i64 @hdsp_check_for_firmware(%struct.hdsp* %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %104

24:                                               ; preds = %17
  %25 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %26 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %25, i32 0, i32 3
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %28)
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = bitcast %struct.TYPE_3__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.TYPE_3__* @snd_hdsp_capture_subinfo to i8*), i64 16, i1 false)
  %33 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %34 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @HDSP_DMA_AREA_BYTES, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %45 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %48 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %47, i32 0, i32 4
  store %struct.snd_pcm_substream* %46, %struct.snd_pcm_substream** %48, align 8
  %49 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %50 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %49, i32 0, i32 3
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %53 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %52, i32 0, i32 32, i32 24)
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %55 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %56 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %54, i32 0, i32 %55, i32* @hdsp_hw_constraints_period_sizes)
  %57 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %58 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @H9632, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %24
  %63 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %64 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 4
  %69 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %70 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 192000, i32* %77, align 4
  %78 = load i32, i32* @SNDRV_PCM_RATE_KNOT, align 4
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %83 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %84 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %82, i32 0, i32 %83, i32* @hdsp_hw_constraints_9632_sample_rates)
  br label %85

85:                                               ; preds = %62, %24
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %87 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %88 = load i32, i32* @snd_hdsp_hw_rule_in_channels, align 4
  %89 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %90 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %91 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %86, i32 0, i32 %87, i32 %88, %struct.hdsp* %89, i32 %90, i32 -1)
  %92 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %93 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %94 = load i32, i32* @snd_hdsp_hw_rule_in_channels_rate, align 4
  %95 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %96 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %97 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %92, i32 0, i32 %93, i32 %94, %struct.hdsp* %95, i32 %96, i32 -1)
  %98 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %99 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %100 = load i32, i32* @snd_hdsp_hw_rule_rate_in_channels, align 4
  %101 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %102 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %103 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %98, i32 0, i32 %99, i32 %100, %struct.hdsp* %101, i32 %102, i32 -1)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %85, %21, %14
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.hdsp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @hdsp_check_for_iobox(%struct.hdsp*) #1

declare dso_local i64 @hdsp_check_for_firmware(%struct.hdsp*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.hdsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
