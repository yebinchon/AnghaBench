; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_in_jack_mode_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_in_jack_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_codec = type { i32 }

@AC_PINCTL_VREFEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @in_jack_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_jack_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.hda_codec* %12, %struct.hda_codec** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @get_vref_caps(%struct.hda_codec* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @AC_PINCTL_VREFEN, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @cvt_from_vref_idx(i32 %22, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %27, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

37:                                               ; preds = %2
  %38 = load i32, i32* @AC_PINCTL_VREFEN, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @get_vref_idx(i32 %42, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %53, i32 %54, i32 %55)
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %37, %36
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_vref_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_get_pin_target(%struct.hda_codec*, i32) #1

declare dso_local i32 @cvt_from_vref_idx(i32, i32) #1

declare dso_local i32 @get_vref_idx(i32, i32) #1

declare dso_local i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
