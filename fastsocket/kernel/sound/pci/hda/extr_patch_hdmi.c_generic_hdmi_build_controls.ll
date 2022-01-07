; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_spec_per_pin = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@HDA_PCM_TYPE_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @generic_hdmi_build_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_hdmi_build_controls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdmi_spec_per_pin*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  store %struct.hdmi_spec* %10, %struct.hdmi_spec** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %18, i32 %19)
  store %struct.hdmi_spec_per_pin* %20, %struct.hdmi_spec_per_pin** %7, align 8
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @generic_hdmi_build_jack(%struct.hda_codec* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %67

28:                                               ; preds = %17
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %31 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %34 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HDA_PCM_TYPE_HDMI, align 4
  %39 = call i32 @snd_hda_create_dig_out_ctls(%struct.hda_codec* %29, i32 %32, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %67

44:                                               ; preds = %28
  %45 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec* %45, i32 %46)
  %48 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.TYPE_2__* @get_pcm_rec(%struct.hdmi_spec* %50, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @hdmi_create_eld_ctl(%struct.hda_codec* %48, i32 %49, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %44
  %61 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %62 = call i32 @hdmi_present_sense(%struct.hdmi_spec_per_pin* %61, i32 0)
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %11

66:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %58, %42, %26
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @generic_hdmi_build_jack(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_create_dig_out_ctls(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec*, i32) #1

declare dso_local i32 @hdmi_create_eld_ctl(%struct.hda_codec*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @get_pcm_rec(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @hdmi_present_sense(%struct.hdmi_spec_per_pin*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
