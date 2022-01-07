; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1988_spdif_playback_source_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1988_spdif_playback_source_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_codec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AC_VERB_GET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AC_AMP_GET_INPUT = common dso_local global i32 0, align 4
@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AC_VERB_GET_CONNECT_SEL = common dso_local global i32 0, align 4
@AC_VERB_SET_CONNECT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ad1988_spdif_playback_source_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1988_spdif_playback_source_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hda_codec* %11, %struct.hda_codec** %6, align 8
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %87

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %29 = load i32, i32* @AC_VERB_GET_AMP_GAIN_MUTE, align 4
  %30 = load i32, i32* @AC_AMP_GET_INPUT, align 4
  %31 = call i32 @snd_hda_codec_read(%struct.hda_codec* %28, i32 29, i32 0, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 128
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %38 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %39 = call i32 @AMP_IN_UNMUTE(i32 0)
  %40 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %37, i32 29, i32 0, i32 %38, i32 %39)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %42 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %43 = call i32 @AMP_IN_MUTE(i32 1)
  %44 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %41, i32 29, i32 0, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %36, %27
  br label %85

46:                                               ; preds = %24
  %47 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %48 = load i32, i32* @AC_VERB_GET_AMP_GAIN_MUTE, align 4
  %49 = load i32, i32* @AC_AMP_GET_INPUT, align 4
  %50 = or i32 %49, 1
  %51 = call i32 @snd_hda_codec_read(%struct.hda_codec* %47, i32 29, i32 0, i32 %48, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 128
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %58 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %59 = call i32 @AMP_IN_MUTE(i32 0)
  %60 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %57, i32 29, i32 0, i32 %58, i32 %59)
  %61 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %62 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %63 = call i32 @AMP_IN_UNMUTE(i32 1)
  %64 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %61, i32 29, i32 0, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %46
  %66 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %67 = load i32, i32* @AC_VERB_GET_CONNECT_SEL, align 4
  %68 = call i32 @snd_hda_codec_read(%struct.hda_codec* %66, i32 11, i32 0, i32 %67, i32 0)
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %80 = load i32, i32* @AC_VERB_SET_CONNECT_SEL, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub i32 %81, 1
  %83 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %79, i32 11, i32 0, i32 %80, i32 %82)
  br label %84

84:                                               ; preds = %78, %65
  br label %85

85:                                               ; preds = %84, %45
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %21
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @AMP_IN_UNMUTE(i32) #1

declare dso_local i32 @AMP_IN_MUTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
