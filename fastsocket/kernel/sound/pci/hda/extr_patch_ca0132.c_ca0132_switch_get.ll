; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_switch_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_switch_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64*, i64*, i64*, i64*, i64 }

@VNODE_START_NID = common dso_local global i64 0, align 8
@VNODE_END_NID = common dso_local global i64 0, align 8
@EFFECT_START_NID = common dso_local global i64 0, align 8
@EFFECT_END_NID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ca0132_switch_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_switch_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.ca0132_spec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.hda_codec* %12, %struct.hda_codec** %6, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.ca0132_spec*, %struct.ca0132_spec** %14, align 8
  store %struct.ca0132_spec* %15, %struct.ca0132_spec** %7, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = call i64 @get_amp_nid(%struct.snd_kcontrol* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %19 = call i32 @get_amp_channels(%struct.snd_kcontrol* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @VNODE_START_NID, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %2
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @VNODE_END_NID, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  %38 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @VNODE_START_NID, align 8
  %42 = sub nsw i64 %40, %41
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %10, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %10, align 8
  br label %48

48:                                               ; preds = %36, %32
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  %54 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @VNODE_START_NID, align 8
  %58 = sub nsw i64 %56, %57
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %10, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %10, align 8
  br label %64

64:                                               ; preds = %52, %48
  store i32 0, i32* %3, align 4
  br label %97

65:                                               ; preds = %28, %2
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @EFFECT_START_NID, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @EFFECT_END_NID, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  %75 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @EFFECT_START_NID, align 8
  %79 = sub nsw i64 %77, %78
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %10, align 8
  store i64 %81, i64* %82, align 8
  store i32 0, i32* %3, align 4
  br label %97

83:                                               ; preds = %69, %65
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  %86 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %84, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  %93 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %10, align 8
  store i64 %94, i64* %95, align 8
  store i32 0, i32* %3, align 4
  br label %97

96:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %91, %73, %64
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @get_amp_nid(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_channels(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
