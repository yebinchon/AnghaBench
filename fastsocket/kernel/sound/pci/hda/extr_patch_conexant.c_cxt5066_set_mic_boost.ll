; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_set_mic_boost.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_set_mic_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i64, i64, i64 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AC_AMP_SET_RIGHT = common dso_local global i32 0, align 4
@AC_AMP_SET_LEFT = common dso_local global i32 0, align 4
@AC_AMP_SET_OUTPUT = common dso_local global i32 0, align 4
@cxt5066_analog_mic_boost = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@AC_AMP_SET_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5066_set_mic_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5066_set_mic_boost(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.conexant_spec*, %struct.conexant_spec** %5, align 8
  store %struct.conexant_spec* %6, %struct.conexant_spec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %9 = load i32, i32* @AC_AMP_SET_RIGHT, align 4
  %10 = load i32, i32* @AC_AMP_SET_LEFT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @AC_AMP_SET_OUTPUT, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt5066_analog_mic_boost, i32 0, i32 0), align 8
  %15 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %16 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %13, %20
  %22 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %7, i32 23, i32 0, i32 %8, i32 %21)
  %23 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %24 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %29 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27, %1
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %35 = load i32, i32* @AC_AMP_SET_RIGHT, align 4
  %36 = load i32, i32* @AC_AMP_SET_LEFT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AC_AMP_SET_INPUT, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt5066_analog_mic_boost, i32 0, i32 0), align 8
  %41 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %42 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %39, %46
  %48 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %33, i32 35, i32 0, i32 %34, i32 %47)
  br label %49

49:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
