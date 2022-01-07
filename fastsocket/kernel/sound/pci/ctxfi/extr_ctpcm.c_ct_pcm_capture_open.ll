; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__, i32, %struct.ct_atc_pcm* }
%struct.ct_atc_pcm = type { i32, i32, %struct.snd_pcm_substream*, i64 }
%struct.ct_atc = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ct_atc_pcm_interrupt = common dso_local global i32 0, align 4
@ct_atc_pcm_free_substream = common dso_local global i32 0, align 4
@ct_pcm_capture_hw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @ct_pcm_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_pcm_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.ct_atc_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.ct_atc* %9, %struct.ct_atc** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ct_atc_pcm* @kzalloc(i32 24, i32 %13)
  store %struct.ct_atc_pcm* %14, %struct.ct_atc_pcm** %6, align 8
  %15 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %16 = icmp ne %struct.ct_atc_pcm* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %84

20:                                               ; preds = %1
  %21 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %22 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %25 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %24, i32 0, i32 2
  store %struct.snd_pcm_substream* %23, %struct.snd_pcm_substream** %25, align 8
  %26 = load i32, i32* @ct_atc_pcm_interrupt, align 4
  %27 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 2
  store %struct.ct_atc_pcm* %29, %struct.ct_atc_pcm** %31, align 8
  %32 = load i32, i32* @ct_atc_pcm_free_substream, align 4
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_2__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 bitcast (%struct.TYPE_2__* @ct_pcm_capture_hw to i8*), i64 4, i1 false)
  %38 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %39 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %42 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %49 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %50 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %20
  %54 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %55 = call i32 @kfree(%struct.ct_atc_pcm* %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %84

57:                                               ; preds = %20
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %59 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %60 = load i32, i32* @UINT_MAX, align 4
  %61 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %58, i32 %59, i32 1024, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %66 = call i32 @kfree(%struct.ct_atc_pcm* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %84

68:                                               ; preds = %57
  %69 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %70 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %73 = call i32 @ct_timer_instance_new(i32 %71, %struct.ct_atc_pcm* %72)
  %74 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %75 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %77 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %68
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %80, %64, %53, %17
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.ct_atc_pcm* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @kfree(%struct.ct_atc_pcm*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @ct_timer_instance_new(i32, %struct.ct_atc_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
