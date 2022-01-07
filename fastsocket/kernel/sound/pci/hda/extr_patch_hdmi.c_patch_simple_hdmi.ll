; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_patch_simple_hdmi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_patch_simple_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i64 }
%struct.hdmi_spec_per_cvt = type { i8* }
%struct.hdmi_spec_per_pin = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_pcm_playback = common dso_local global i32 0, align 4
@simple_hdmi_patch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*, i8*)* @patch_simple_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_simple_hdmi(%struct.hda_codec* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hdmi_spec*, align 8
  %9 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %10 = alloca %struct.hdmi_spec_per_pin*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.hdmi_spec* @kzalloc(i32 48, i32 %11)
  store %struct.hdmi_spec* %12, %struct.hdmi_spec** %8, align 8
  %13 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %14 = icmp ne %struct.hdmi_spec* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 1
  store %struct.hdmi_spec* %19, %struct.hdmi_spec** %21, align 8
  %22 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %23 = call i32 @hdmi_array_init(%struct.hdmi_spec* %22, i32 1)
  %24 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %25 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %28 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 2, i32* %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %32 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %35 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %37 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %39 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %38, i32 0, i32 4
  %40 = call i8* @snd_array_new(i32* %39)
  %41 = bitcast i8* %40 to %struct.hdmi_spec_per_pin*
  store %struct.hdmi_spec_per_pin* %41, %struct.hdmi_spec_per_pin** %10, align 8
  %42 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %43 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %42, i32 0, i32 3
  %44 = call i8* @snd_array_new(i32* %43)
  %45 = bitcast i8* %44 to %struct.hdmi_spec_per_cvt*
  store %struct.hdmi_spec_per_cvt* %45, %struct.hdmi_spec_per_cvt** %9, align 8
  %46 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %47 = icmp ne %struct.hdmi_spec_per_pin* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %18
  %49 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %9, align 8
  %50 = icmp ne %struct.hdmi_spec_per_cvt* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48, %18
  %52 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %53 = call i32 @simple_playback_free(%struct.hda_codec* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %69

56:                                               ; preds = %48
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %9, align 8
  %59 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %62 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @simple_pcm_playback, align 4
  %64 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %65 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @simple_hdmi_patch_ops, align 4
  %67 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %68 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %56, %51, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.hdmi_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @hdmi_array_init(%struct.hdmi_spec*, i32) #1

declare dso_local i8* @snd_array_new(i32*) #1

declare dso_local i32 @simple_playback_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
