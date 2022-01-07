; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_add_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_add_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, i32 }
%struct.hdmi_spec_per_pin = type { i32, i32 }

@AC_PINCAP_HDMI = common dso_local global i32 0, align 4
@AC_PINCAP_DP = common dso_local global i32 0, align 4
@AC_JACK_PORT_NONE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @hdmi_add_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_add_pin(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdmi_spec_per_pin*, align 8
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 1
  %14 = load %struct.hdmi_spec*, %struct.hdmi_spec** %13, align 8
  store %struct.hdmi_spec* %14, %struct.hdmi_spec** %6, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @AC_PINCAP_HDMI, align 4
  %20 = load i32, i32* @AC_PINCAP_DP, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @get_defcfg_connect(i32 %29)
  %31 = load i64, i64* @AC_JACK_PORT_NONE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %73

34:                                               ; preds = %25
  %35 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %36 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, -2138691577
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @intel_haswell_fixup_connect_list(%struct.hda_codec* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %45 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %48 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %47, i32 0, i32 1
  %49 = call %struct.hdmi_spec_per_pin* @snd_array_new(i32* %48)
  store %struct.hdmi_spec_per_pin* %49, %struct.hdmi_spec_per_pin** %10, align 8
  %50 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %51 = icmp ne %struct.hdmi_spec_per_pin* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %73

55:                                               ; preds = %43
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %58 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %60 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @hdmi_read_pin_conn(%struct.hda_codec* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %55
  %69 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %70 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %66, %52, %33, %24
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i64 @get_defcfg_connect(i32) #1

declare dso_local i32 @intel_haswell_fixup_connect_list(%struct.hda_codec*, i32) #1

declare dso_local %struct.hdmi_spec_per_pin* @snd_array_new(i32*) #1

declare dso_local i32 @hdmi_read_pin_conn(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
