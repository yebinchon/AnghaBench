; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_via_set_jack_unsol_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_via_set_jack_unsol_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, i32, i64*, i64* }

@via_hp_automute = common dso_local global i32 0, align 4
@via_line_automute = common dso_local global i32 0, align 4
@VIA_JACK_EVENT = common dso_local global i32 0, align 4
@via_jack_powerstate_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @via_set_jack_unsol_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_set_jack_unsol_events(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.via_spec*, align 8
  %4 = alloca %struct.auto_pin_cfg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.via_spec*, %struct.via_spec** %8, align 8
  store %struct.via_spec* %9, %struct.via_spec** %3, align 8
  %10 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %11 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store %struct.auto_pin_cfg* %12, %struct.auto_pin_cfg** %4, align 8
  %13 = load i32, i32* @via_hp_automute, align 4
  %14 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %17, i32 0, i32 3
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @via_line_automute, align 4
  %25 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %26 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  br label %28

28:                                               ; preds = %23, %1
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %62, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %35
  %46 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @snd_hda_jack_tbl_get(%struct.hda_codec* %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %45
  %51 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @is_jack_detectable(%struct.hda_codec* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* @VIA_JACK_EVENT, align 4
  %59 = load i32, i32* @via_jack_powerstate_event, align 4
  %60 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %56, i64 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %50, %45, %35
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %29

65:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %99, %65
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %69 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %66
  %73 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %74 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %5, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %72
  %83 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @snd_hda_jack_tbl_get(%struct.hda_codec* %83, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %82
  %88 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i64 @is_jack_detectable(%struct.hda_codec* %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %94 = load i64, i64* %5, align 8
  %95 = load i32, i32* @VIA_JACK_EVENT, align 4
  %96 = load i32, i32* @via_jack_powerstate_event, align 4
  %97 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %93, i64 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %87, %82, %72
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %66

102:                                              ; preds = %66
  ret void
}

declare dso_local i32 @snd_hda_jack_tbl_get(%struct.hda_codec*, i64) #1

declare dso_local i64 @is_jack_detectable(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
