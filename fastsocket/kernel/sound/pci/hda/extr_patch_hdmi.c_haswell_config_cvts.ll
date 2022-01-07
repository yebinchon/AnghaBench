; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_haswell_config_cvts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_haswell_config_cvts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_spec_per_pin = type { i32 }

@AC_VERB_GET_CONNECT_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"HDMI: choose converter %d for pin %d\0A\00", align 1
@AC_VERB_SET_CONNECT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32)* @haswell_config_cvts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @haswell_config_cvts(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdmi_spec*, align 8
  %8 = alloca %struct.hdmi_spec_per_pin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.hdmi_spec*, %struct.hdmi_spec** %14, align 8
  store %struct.hdmi_spec* %15, %struct.hdmi_spec** %7, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %59, %3
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %19 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %16
  %23 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %23, i32 %24)
  store %struct.hdmi_spec_per_pin* %25, %struct.hdmi_spec_per_pin** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %59

30:                                               ; preds = %22
  %31 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %32 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %8, align 8
  %33 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AC_VERB_GET_CONNECT_SEL, align 4
  %36 = call i32 @snd_hda_codec_read(%struct.hda_codec* %31, i32 %34, i32 0, i32 %35, i32 0)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @hdmi_choose_cvt(%struct.hda_codec* %41, i32 %42, i32* null, i32* %10)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %62

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @snd_printdd(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %52 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %8, align 8
  %53 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AC_VERB_SET_CONNECT_SEL, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %51, i32 %54, i32 0, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %47, %30
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %16

62:                                               ; preds = %46, %16
  ret void
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_choose_cvt(%struct.hda_codec*, i32, i32*, i32*) #1

declare dso_local i32 @snd_printdd(i8*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
