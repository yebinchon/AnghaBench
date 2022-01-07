; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.hdmi_spec_per_cvt = type { i64 }
%struct.hdmi_spec_per_pin = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @hdmi_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_pcm_close(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.hdmi_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %12 = alloca %struct.hdmi_spec_per_pin*, align 8
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.hdmi_spec*, %struct.hdmi_spec** %14, align 8
  store %struct.hdmi_spec* %15, %struct.hdmi_spec** %8, align 8
  %16 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %17 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %3
  %21 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %22 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %23 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cvt_nid_to_cvt_index(%struct.hdmi_spec* %21, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @snd_BUG_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %68

34:                                               ; preds = %20
  %35 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %35, i32 %36)
  store %struct.hdmi_spec_per_cvt* %37, %struct.hdmi_spec_per_cvt** %11, align 8
  %38 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %11, align 8
  %39 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @snd_BUG_ON(i32 %43)
  %45 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %11, align 8
  %46 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %48 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %50 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %51 = call i32 @hinfo_to_pin_index(%struct.hdmi_spec* %49, %struct.hda_pcm_stream* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @snd_BUG_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %34
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %68

60:                                               ; preds = %34
  %61 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %61, i32 %62)
  store %struct.hdmi_spec_per_pin* %63, %struct.hdmi_spec_per_pin** %12, align 8
  %64 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec* %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %3
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %57, %31
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @cvt_nid_to_cvt_index(%struct.hdmi_spec*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @hinfo_to_pin_index(%struct.hdmi_spec*, %struct.hda_pcm_stream*) #1

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
