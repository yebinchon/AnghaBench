; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.azx_pcm = type { %struct.azx* }
%struct.azx = type { i32 }
%struct.azx_dev = type { i64, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @azx_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.azx_pcm*, align 8
  %6 = alloca %struct.azx*, align 8
  %7 = alloca %struct.azx_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.azx_pcm* %10, %struct.azx_pcm** %5, align 8
  %11 = load %struct.azx_pcm*, %struct.azx_pcm** %5, align 8
  %12 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %11, i32 0, i32 0
  %13 = load %struct.azx*, %struct.azx** %12, align 8
  store %struct.azx* %13, %struct.azx** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = call %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream* %14)
  store %struct.azx_dev* %15, %struct.azx_dev** %7, align 8
  %16 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %17 = call i32 @dsp_lock(%struct.azx_dev* %16)
  %18 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %19 = call i64 @dsp_is_locked(%struct.azx_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %47

24:                                               ; preds = %2
  %25 = load %struct.azx*, %struct.azx** %6, align 8
  %26 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %28 = call i32 @mark_runtime_wc(%struct.azx* %25, %struct.azx_dev* %26, %struct.snd_pcm_substream* %27, i32 0)
  %29 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %30 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %32 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %34 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %37 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %36)
  %38 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %35, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  br label %47

42:                                               ; preds = %24
  %43 = load %struct.azx*, %struct.azx** %6, align 8
  %44 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %46 = call i32 @mark_runtime_wc(%struct.azx* %43, %struct.azx_dev* %44, %struct.snd_pcm_substream* %45, i32 1)
  br label %47

47:                                               ; preds = %42, %41, %21
  %48 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %49 = call i32 @dsp_unlock(%struct.azx_dev* %48)
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dsp_lock(%struct.azx_dev*) #1

declare dso_local i64 @dsp_is_locked(%struct.azx_dev*) #1

declare dso_local i32 @mark_runtime_wc(%struct.azx*, %struct.azx_dev*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dsp_unlock(%struct.azx_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
