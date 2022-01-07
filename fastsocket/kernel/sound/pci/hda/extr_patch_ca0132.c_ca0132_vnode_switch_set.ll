; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_vnode_switch_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_vnode_switch_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.hda_codec = type { i32, %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32* }

@VNID_HP_SEL = common dso_local global i64 0, align 8
@VNID_HP_ASEL = common dso_local global i64 0, align 8
@VNODE_START_NID = common dso_local global i64 0, align 8
@VNID_AMIC1_SEL = common dso_local global i64 0, align 8
@VNID_AMIC1_ASEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ca0132_vnode_switch_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_vnode_switch_set(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ca0132_spec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %16)
  store %struct.hda_codec* %17, %struct.hda_codec** %6, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %19 = call i64 @get_amp_nid(%struct.snd_kcontrol* %18)
  store i64 %19, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 1
  %22 = load %struct.ca0132_spec*, %struct.ca0132_spec** %21, align 8
  store %struct.ca0132_spec* %22, %struct.ca0132_spec** %11, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @VNID_HP_SEL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load %struct.ca0132_spec*, %struct.ca0132_spec** %11, align 8
  %28 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @VNID_HP_ASEL, align 8
  %31 = load i64, i64* @VNODE_START_NID, align 8
  %32 = sub i64 %30, %31
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %39 = call i32 @ca0132_select_out(%struct.hda_codec* %38)
  br label %40

40:                                               ; preds = %37, %26
  store i32 1, i32* %3, align 4
  br label %108

41:                                               ; preds = %2
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @VNID_AMIC1_SEL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.ca0132_spec*, %struct.ca0132_spec** %11, align 8
  %47 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @VNID_AMIC1_ASEL, align 8
  %50 = load i64, i64* @VNODE_START_NID, align 8
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %45
  %57 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %58 = call i32 @ca0132_select_mic(%struct.hda_codec* %57)
  br label %59

59:                                               ; preds = %56, %45
  store i32 1, i32* %3, align 4
  br label %108

60:                                               ; preds = %41
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @VNID_HP_ASEL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %66 = call i32 @ca0132_select_out(%struct.hda_codec* %65)
  store i32 1, i32* %3, align 4
  br label %108

67:                                               ; preds = %60
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @VNID_AMIC1_ASEL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %73 = call i32 @ca0132_select_mic(%struct.hda_codec* %72)
  store i32 1, i32* %3, align 4
  br label %108

74:                                               ; preds = %67
  %75 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @ca0132_is_vnode_effective(%struct.hda_codec* %75, i64 %76, i64* %8)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %74
  %81 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %82 = call i32 @get_amp_direction(%struct.snd_kcontrol* %81)
  store i32 %82, i32* %13, align 4
  %83 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %84 = call i32 @get_amp_channels(%struct.snd_kcontrol* %83)
  store i32 %84, i32* %14, align 4
  %85 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %86 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %85, i32 0, i32 0
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %89 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %15, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i64 @HDA_COMPOSE_AMP_VAL(i64 %91, i32 %92, i32 0, i32 %93)
  %95 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %96 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %98 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %99 = call i32 @snd_hda_mixer_amp_switch_put(%struct.snd_kcontrol* %97, %struct.snd_ctl_elem_value* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i64, i64* %15, align 8
  %101 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %102 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %104 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  br label %106

106:                                              ; preds = %80, %74
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %71, %64, %59, %40
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @get_amp_nid(%struct.snd_kcontrol*) #1

declare dso_local i32 @ca0132_select_out(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_select_mic(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_is_vnode_effective(%struct.hda_codec*, i64, i64*) #1

declare dso_local i32 @get_amp_direction(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_channels(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @HDA_COMPOSE_AMP_VAL(i64, i32, i32, i32) #1

declare dso_local i32 @snd_hda_mixer_amp_switch_put(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
