; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_cap_single_sw_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_cap_single_sw_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)* }
%struct.hda_codec.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @cap_single_sw_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_single_sw_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hda_gen_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.hda_codec* %10, %struct.hda_codec** %6, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %12, align 8
  store %struct.hda_gen_spec* %13, %struct.hda_gen_spec** %7, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = call i32 @snd_hda_mixer_amp_switch_put(%struct.snd_kcontrol* %14, %struct.snd_ctl_elem_value* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %23 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %22, i32 0, i32 0
  %24 = load i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)*, i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)** %23, align 8
  %25 = icmp ne i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %28 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %27, i32 0, i32 0
  %29 = load i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)*, i32 (%struct.hda_codec.0*, %struct.snd_ctl_elem_value*)** %28, align 8
  %30 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %31 = bitcast %struct.hda_codec* %30 to %struct.hda_codec.0*
  %32 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %33 = call i32 %29(%struct.hda_codec.0* %31, %struct.snd_ctl_elem_value* %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_mixer_amp_switch_put(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
