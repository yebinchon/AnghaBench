; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_hdmi.c_xonar_set_hdmi_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_hdmi.c_xonar_set_hdmi_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }
%struct.xonar_hdmi = type { i32* }
%struct.snd_pcm_hw_params = type { i32 }

@IEC958_AES3_CON_FS_44100 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_96000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_192000 = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xonar_set_hdmi_params(%struct.oxygen* %0, %struct.xonar_hdmi* %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca %struct.xonar_hdmi*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store %struct.xonar_hdmi* %1, %struct.xonar_hdmi** %5, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %6, align 8
  %7 = load %struct.xonar_hdmi*, %struct.xonar_hdmi** %5, align 8
  %8 = getelementptr inbounds %struct.xonar_hdmi, %struct.xonar_hdmi* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %12 = call i32 @params_rate(%struct.snd_pcm_hw_params* %11)
  switch i32 %12, label %25 [
    i32 44100, label %13
    i32 48000, label %19
    i32 192000, label %31
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @IEC958_AES3_CON_FS_44100, align 4
  %15 = load %struct.xonar_hdmi*, %struct.xonar_hdmi** %5, align 8
  %16 = getelementptr inbounds %struct.xonar_hdmi, %struct.xonar_hdmi* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %14, i32* %18, align 4
  br label %37

19:                                               ; preds = %3
  %20 = load i32, i32* @IEC958_AES3_CON_FS_48000, align 4
  %21 = load %struct.xonar_hdmi*, %struct.xonar_hdmi** %5, align 8
  %22 = getelementptr inbounds %struct.xonar_hdmi, %struct.xonar_hdmi* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  br label %37

25:                                               ; preds = %3
  %26 = load i32, i32* @IEC958_AES3_CON_FS_96000, align 4
  %27 = load %struct.xonar_hdmi*, %struct.xonar_hdmi** %5, align 8
  %28 = getelementptr inbounds %struct.xonar_hdmi, %struct.xonar_hdmi* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %26, i32* %30, align 4
  br label %37

31:                                               ; preds = %3
  %32 = load i32, i32* @IEC958_AES3_CON_FS_192000, align 4
  %33 = load %struct.xonar_hdmi*, %struct.xonar_hdmi** %5, align 8
  %34 = getelementptr inbounds %struct.xonar_hdmi, %struct.xonar_hdmi* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %25, %19, %13
  %38 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %39 = call i32 @params_channels(%struct.snd_pcm_hw_params* %38)
  %40 = sdiv i32 %39, 2
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.xonar_hdmi*, %struct.xonar_hdmi** %5, align 8
  %43 = getelementptr inbounds %struct.xonar_hdmi, %struct.xonar_hdmi* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 %41, i32* %45, align 4
  %46 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %47 = call i64 @params_format(%struct.snd_pcm_hw_params* %46)
  %48 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load %struct.xonar_hdmi*, %struct.xonar_hdmi** %5, align 8
  %52 = getelementptr inbounds %struct.xonar_hdmi, %struct.xonar_hdmi* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 0, i32* %54, align 4
  br label %60

55:                                               ; preds = %37
  %56 = load %struct.xonar_hdmi*, %struct.xonar_hdmi** %5, align 8
  %57 = getelementptr inbounds %struct.xonar_hdmi, %struct.xonar_hdmi* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 192, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.xonar_hdmi*, %struct.xonar_hdmi** %5, align 8
  %62 = getelementptr inbounds %struct.xonar_hdmi, %struct.xonar_hdmi* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 1, i32* %64, align 4
  %65 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %66 = load %struct.xonar_hdmi*, %struct.xonar_hdmi** %5, align 8
  %67 = getelementptr inbounds %struct.xonar_hdmi, %struct.xonar_hdmi* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @hdmi_write_command(%struct.oxygen* %65, i32 84, i32 5, i32* %68)
  ret void
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @hdmi_write_command(%struct.oxygen*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
