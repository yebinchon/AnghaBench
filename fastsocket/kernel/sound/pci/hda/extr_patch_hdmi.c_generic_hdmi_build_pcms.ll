; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_pcms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hda_pcm = type { %struct.hda_pcm_stream*, i32, i32 }
%struct.hda_pcm_stream = type { i32, i32 }
%struct.hdmi_spec_per_pin = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"HDMI %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HDA_PCM_TYPE_HDMI = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@generic_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @generic_hdmi_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_hdmi_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_pcm*, align 8
  %7 = alloca %struct.hda_pcm_stream*, align 8
  %8 = alloca %struct.hdmi_spec_per_pin*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 2
  %11 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  store %struct.hdmi_spec* %11, %struct.hdmi_spec** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %54, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %15 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %12
  %19 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %19, i32 %20)
  store %struct.hdmi_spec_per_pin* %21, %struct.hdmi_spec_per_pin** %8, align 8
  %22 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %8, align 8
  %23 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @sprintf(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %28 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %27, i32 0, i32 1
  %29 = call %struct.hda_pcm* @snd_array_new(%struct.TYPE_2__* %28)
  store %struct.hda_pcm* %29, %struct.hda_pcm** %6, align 8
  %30 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %31 = icmp ne %struct.hda_pcm* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %69

35:                                               ; preds = %18
  %36 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %8, align 8
  %37 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %40 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @HDA_PCM_TYPE_HDMI, align 4
  %42 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %43 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.hda_pcm*, %struct.hda_pcm** %6, align 8
  %45 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %44, i32 0, i32 0
  %46 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %45, align 8
  %47 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %48 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %46, i64 %47
  store %struct.hda_pcm_stream* %48, %struct.hda_pcm_stream** %7, align 8
  %49 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %50 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* @generic_ops, align 4
  %52 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %53 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %12

57:                                               ; preds = %12
  %58 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %59 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %62 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %64 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %68 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %57, %32
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local %struct.hda_pcm* @snd_array_new(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
