; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.azx_pcm = type { i32, %struct.hda_pcm_stream**, %struct.azx* }
%struct.hda_pcm_stream = type { i32 }
%struct.azx = type { i32 }
%struct.azx_dev = type { i64, i64, i64, i64 }

@SD_BDLPL = common dso_local global i32 0, align 4
@SD_BDLPU = common dso_local global i32 0, align 4
@SD_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @azx_pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.azx_pcm*, align 8
  %4 = alloca %struct.azx_dev*, align 8
  %5 = alloca %struct.azx*, align 8
  %6 = alloca %struct.hda_pcm_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.azx_pcm* %8, %struct.azx_pcm** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream* %9)
  store %struct.azx_dev* %10, %struct.azx_dev** %4, align 8
  %11 = load %struct.azx_pcm*, %struct.azx_pcm** %3, align 8
  %12 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %11, i32 0, i32 2
  %13 = load %struct.azx*, %struct.azx** %12, align 8
  store %struct.azx* %13, %struct.azx** %5, align 8
  %14 = load %struct.azx_pcm*, %struct.azx_pcm** %3, align 8
  %15 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %14, i32 0, i32 1
  %16 = load %struct.hda_pcm_stream**, %struct.hda_pcm_stream*** %15, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %16, i64 %19
  %21 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %20, align 8
  store %struct.hda_pcm_stream* %21, %struct.hda_pcm_stream** %6, align 8
  %22 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %23 = call i32 @dsp_lock(%struct.azx_dev* %22)
  %24 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %25 = call i32 @dsp_is_locked(%struct.azx_dev* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %1
  %28 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %29 = load i32, i32* @SD_BDLPL, align 4
  %30 = call i32 @azx_sd_writel(%struct.azx_dev* %28, i32 %29, i32 0)
  %31 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %32 = load i32, i32* @SD_BDLPU, align 4
  %33 = call i32 @azx_sd_writel(%struct.azx_dev* %31, i32 %32, i32 0)
  %34 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %35 = load i32, i32* @SD_CTL, align 4
  %36 = call i32 @azx_sd_writel(%struct.azx_dev* %34, i32 %35, i32 0)
  %37 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %38 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %40 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %42 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %27, %1
  %44 = load %struct.azx_pcm*, %struct.azx_pcm** %3, align 8
  %45 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %6, align 8
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %49 = call i32 @snd_hda_codec_cleanup(i32 %46, %struct.hda_pcm_stream* %47, %struct.snd_pcm_substream* %48)
  %50 = load %struct.azx*, %struct.azx** %5, align 8
  %51 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %53 = call i32 @mark_runtime_wc(%struct.azx* %50, %struct.azx_dev* %51, %struct.snd_pcm_substream* %52, i32 0)
  %54 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %55 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %57 = call i32 @dsp_unlock(%struct.azx_dev* %56)
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %59 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %58)
  ret i32 %59
}

declare dso_local %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dsp_lock(%struct.azx_dev*) #1

declare dso_local i32 @dsp_is_locked(%struct.azx_dev*) #1

declare dso_local i32 @azx_sd_writel(%struct.azx_dev*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_cleanup(i32, %struct.hda_pcm_stream*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @mark_runtime_wc(%struct.azx*, %struct.azx_dev*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @dsp_unlock(%struct.azx_dev*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
