; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_via_pin_power_ctl_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_via_pin_power_ctl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @via_pin_power_ctl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_pin_power_ctl_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.via_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.hda_codec* %10, %struct.hda_codec** %6, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.via_spec*, %struct.via_spec** %12, align 8
  store %struct.via_spec* %13, %struct.via_spec** %7, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.via_spec*, %struct.via_spec** %7, align 8
  %26 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.via_spec*, %struct.via_spec** %7, align 8
  %33 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %35 = call i32 @set_widgets_power_state(%struct.hda_codec* %34)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %37 = call i32 @analog_low_current_mode(%struct.hda_codec* %36)
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @set_widgets_power_state(%struct.hda_codec*) #1

declare dso_local i32 @analog_low_current_mode(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
