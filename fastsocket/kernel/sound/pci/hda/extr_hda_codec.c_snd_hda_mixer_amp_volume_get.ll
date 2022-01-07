; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_mixer_amp_volume_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_mixer_amp_volume_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.hda_codec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_mixer_amp_volume_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.hda_codec* %13, %struct.hda_codec** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call i32 @get_amp_nid(%struct.snd_kcontrol* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = call i32 @get_amp_channels(%struct.snd_kcontrol* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = call i32 @get_amp_direction(%struct.snd_kcontrol* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = call i32 @get_amp_index(%struct.snd_kcontrol* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = call i32 @get_amp_offset(%struct.snd_kcontrol* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  %33 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @read_amp_value(%struct.hda_codec* %33, i32 %34, i32 0, i32 %35, i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i64
  %40 = load i64*, i64** %11, align 8
  %41 = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %41, i64** %11, align 8
  store i64 %39, i64* %40, align 8
  br label %42

42:                                               ; preds = %32, %2
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i8* @read_amp_value(%struct.hda_codec* %47, i32 %48, i32 1, i32 %49, i32 %50, i32 %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = load i64*, i64** %11, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %46, %42
  ret i32 0
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_nid(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_channels(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_direction(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_index(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_offset(%struct.snd_kcontrol*) #1

declare dso_local i8* @read_amp_value(%struct.hda_codec*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
