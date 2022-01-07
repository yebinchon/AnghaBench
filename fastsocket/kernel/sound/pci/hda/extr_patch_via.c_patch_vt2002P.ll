; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_patch_vt2002P.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_patch_vt2002P.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.via_spec = type { i64, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VT1802 = common dso_local global i64 0, align 8
@vt2002p_fixups = common dso_local global i32 0, align 4
@via_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@vt1802_init_verbs = common dso_local global i32 0, align 4
@vt2002P_init_verbs = common dso_local global i32 0, align 4
@via_patch_ops = common dso_local global i32 0, align 4
@set_widgets_power_state_vt2002P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_vt2002P to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt2002P(%struct.hda_codec* %0) #0 {
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
  br label %82

13:                                               ; preds = %1
  %14 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 33, i32* %16, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = call i32 @override_mic_boost(%struct.hda_codec* %17, i32 43, i32 0, i32 3, i32 40)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = call i32 @override_mic_boost(%struct.hda_codec* %19, i32 41, i32 0, i32 3, i32 40)
  %21 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %22 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VT1802, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = call i32 @fix_vt1802_connections(%struct.hda_codec* %27)
  br label %29

29:                                               ; preds = %26, %13
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = call i32 @add_secret_dac_path(%struct.hda_codec* %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = load i32, i32* @vt2002p_fixups, align 4
  %34 = load i32, i32* @via_fixups, align 4
  %35 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %32, i32* null, i32 %33, i32 %34)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %37 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %38 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %36, i32 %37)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = call i32 @via_parse_auto_config(%struct.hda_codec* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = call i32 @via_free(%struct.hda_codec* %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %82

47:                                               ; preds = %29
  %48 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %49 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VT1802, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i32, i32* @vt1802_init_verbs, align 4
  %55 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %56 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %59 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  store i32 %54, i32* %63, align 4
  br label %75

64:                                               ; preds = %47
  %65 = load i32, i32* @vt2002P_init_verbs, align 4
  %66 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %67 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %70 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  store i32 %65, i32* %74, align 4
  br label %75

75:                                               ; preds = %64, %53
  %76 = load i32, i32* @via_patch_ops, align 4
  %77 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %78 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @set_widgets_power_state_vt2002P, align 4
  %80 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %81 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %75, %43, %10
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.via_spec* @via_new_spec(%struct.hda_codec*) #1

declare dso_local i32 @override_mic_boost(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @fix_vt1802_connections(%struct.hda_codec*) #1

declare dso_local i32 @add_secret_dac_path(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32*, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @via_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @via_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
