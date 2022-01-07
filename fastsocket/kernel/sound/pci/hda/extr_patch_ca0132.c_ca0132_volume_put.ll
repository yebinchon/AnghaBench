; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_volume_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.hda_codec = type { i32, %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64*, i64* }

@VNODE_START_NID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ca0132_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.ca0132_spec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %15)
  store %struct.hda_codec* %16, %struct.hda_codec** %5, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 1
  %19 = load %struct.ca0132_spec*, %struct.ca0132_spec** %18, align 8
  store %struct.ca0132_spec* %19, %struct.ca0132_spec** %6, align 8
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = call i64 @get_amp_nid(%struct.snd_kcontrol* %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = call i32 @get_amp_channels(%struct.snd_kcontrol* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 1, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %36 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @VNODE_START_NID, align 8
  %40 = sub i64 %38, %39
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  store i64 %34, i64* %41, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %9, align 8
  br label %44

44:                                               ; preds = %32, %2
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i64*, i64** %9, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  %52 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @VNODE_START_NID, align 8
  %56 = sub i64 %54, %55
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64 %50, i64* %57, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %9, align 8
  br label %60

60:                                               ; preds = %48, %44
  %61 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @ca0132_is_vnode_effective(%struct.hda_codec* %61, i64 %62, i64* %10)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %60
  %67 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %68 = call i32 @get_amp_direction(%struct.snd_kcontrol* %67)
  store i32 %68, i32* %13, align 4
  %69 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %70 = call i32 @snd_hda_power_up(%struct.hda_codec* %69)
  %71 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %72 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %75 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %14, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i64 @HDA_COMPOSE_AMP_VAL(i64 %77, i32 %78, i32 0, i32 %79)
  %81 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %82 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %84 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %85 = call i32 @snd_hda_mixer_amp_volume_put(%struct.snd_kcontrol* %83, %struct.snd_ctl_elem_value* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i64, i64* %14, align 8
  %87 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %88 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %90 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %93 = call i32 @snd_hda_power_down(%struct.hda_codec* %92)
  br label %94

94:                                               ; preds = %66, %60
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @get_amp_nid(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_channels(%struct.snd_kcontrol*) #1

declare dso_local i32 @ca0132_is_vnode_effective(%struct.hda_codec*, i64, i64*) #1

declare dso_local i32 @get_amp_direction(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_power_up(%struct.hda_codec*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @HDA_COMPOSE_AMP_VAL(i64, i32, i32, i32) #1

declare dso_local i32 @snd_hda_mixer_amp_volume_put(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_hda_power_down(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
