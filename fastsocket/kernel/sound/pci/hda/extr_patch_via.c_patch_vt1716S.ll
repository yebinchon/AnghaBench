; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_patch_vt1716S.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_patch_vt1716S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.via_spec = type { i32, i32, i32*, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@vt1716S_init_verbs = common dso_local global i32 0, align 4
@vt1716s_dmic_mixer = common dso_local global i32 0, align 4
@vt1716S_mono_out_mixer = common dso_local global i32 0, align 4
@via_patch_ops = common dso_local global i32 0, align 4
@set_widgets_power_state_vt1716S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_vt1716S to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt1716S(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call %struct.via_spec* @via_new_spec(%struct.hda_codec* %6)
  store %struct.via_spec* %7, %struct.via_spec** %4, align 8
  %8 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %9 = icmp eq %struct.via_spec* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 22, i32* %16, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = call i32 @override_mic_boost(%struct.hda_codec* %17, i32 26, i32 0, i32 3, i32 40)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = call i32 @override_mic_boost(%struct.hda_codec* %19, i32 30, i32 0, i32 3, i32 40)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = call i32 @via_parse_auto_config(%struct.hda_codec* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = call i32 @via_free(%struct.hda_codec* %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %66

29:                                               ; preds = %13
  %30 = load i32, i32* @vt1716S_init_verbs, align 4
  %31 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %32 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %35 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32 %30, i32* %39, align 4
  %40 = load i32, i32* @vt1716s_dmic_mixer, align 4
  %41 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %42 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %45 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  store i32 %40, i32* %49, align 4
  %50 = load i32, i32* @vt1716S_mono_out_mixer, align 4
  %51 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %52 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %55 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  store i32 %50, i32* %59, align 4
  %60 = load i32, i32* @via_patch_ops, align 4
  %61 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %62 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @set_widgets_power_state_vt1716S, align 4
  %64 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %65 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %29, %25, %10
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.via_spec* @via_new_spec(%struct.hda_codec*) #1

declare dso_local i32 @override_mic_boost(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @via_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @via_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
