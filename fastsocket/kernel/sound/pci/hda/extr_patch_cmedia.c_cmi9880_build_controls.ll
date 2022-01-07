; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cmedia.c_cmi9880_build_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cmedia.c_cmi9880_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cmi_spec* }
%struct.cmi_spec = type { i32*, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.snd_kcontrol = type { i32 }

@cmi9880_basic_mixer = common dso_local global i32 0, align 4
@cmi9880_ch_mode_mixer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Capture Source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @cmi9880_build_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmi9880_build_controls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.cmi_spec*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.cmi_spec*, %struct.cmi_spec** %9, align 8
  store %struct.cmi_spec* %10, %struct.cmi_spec** %4, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = load i32, i32* @cmi9880_basic_mixer, align 4
  %13 = call i32 @snd_hda_add_new_ctls(%struct.hda_codec* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %117

18:                                               ; preds = %1
  %19 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %20 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load i32, i32* @cmi9880_ch_mode_mixer, align 4
  %26 = call i32 @snd_hda_add_new_ctls(%struct.hda_codec* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %117

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %34 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %32
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %41 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %45 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @snd_hda_create_spdif_out_ctls(%struct.hda_codec* %39, i64 %43, i64 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %117

53:                                               ; preds = %38
  %54 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %55 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %56 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %55, i32 0, i32 2
  %57 = call i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec* %54, %struct.TYPE_2__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %117

62:                                               ; preds = %53
  %63 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %64 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %32
  %67 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %68 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %73 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %74 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec* %72, i64 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %117

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %66
  %83 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %84 = call %struct.snd_kcontrol* @snd_hda_find_mixer_ctl(%struct.hda_codec* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.snd_kcontrol* %84, %struct.snd_kcontrol** %5, align 8
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %113, %82
  %86 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %87 = icmp ne %struct.snd_kcontrol* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %91 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br label %94

94:                                               ; preds = %88, %85
  %95 = phi i1 [ false, %85 ], [ %93, %88 ]
  br i1 %95, label %96, label %116

96:                                               ; preds = %94
  %97 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %98 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %101 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @snd_hda_add_nid(%struct.hda_codec* %97, %struct.snd_kcontrol* %98, i32 %99, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %117

112:                                              ; preds = %96
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %85

116:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %110, %79, %60, %51, %29, %16
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @snd_hda_add_new_ctls(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_create_spdif_out_ctls(%struct.hda_codec*, i64, i64) #1

declare dso_local i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec*, %struct.TYPE_2__*) #1

declare dso_local i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec*, i64) #1

declare dso_local %struct.snd_kcontrol* @snd_hda_find_mixer_ctl(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_add_nid(%struct.hda_codec*, %struct.snd_kcontrol*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
