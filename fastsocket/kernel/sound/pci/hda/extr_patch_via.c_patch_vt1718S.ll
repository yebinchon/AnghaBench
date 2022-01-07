; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_patch_vt1718S.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_patch_vt1718S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.via_spec = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@vt1718S_init_verbs = common dso_local global i32 0, align 4
@via_patch_ops = common dso_local global i32 0, align 4
@set_widgets_power_state_vt1718S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_vt1718S to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt1718S(%struct.hda_codec* %0) #0 {
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
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 33, i32* %16, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = call i32 @override_mic_boost(%struct.hda_codec* %17, i32 43, i32 0, i32 3, i32 40)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = call i32 @override_mic_boost(%struct.hda_codec* %19, i32 41, i32 0, i32 3, i32 40)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = call i32 @add_secret_dac_path(%struct.hda_codec* %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = call i32 @via_parse_auto_config(%struct.hda_codec* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = call i32 @via_free(%struct.hda_codec* %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %48

31:                                               ; preds = %13
  %32 = load i32, i32* @vt1718S_init_verbs, align 4
  %33 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %34 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %37 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  store i32 %32, i32* %41, align 4
  %42 = load i32, i32* @via_patch_ops, align 4
  %43 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %44 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @set_widgets_power_state_vt1718S, align 4
  %46 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %47 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %31, %27, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.via_spec* @via_new_spec(%struct.hda_codec*) #1

declare dso_local i32 @override_mic_boost(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @add_secret_dac_path(%struct.hda_codec*) #1

declare dso_local i32 @via_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @via_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
