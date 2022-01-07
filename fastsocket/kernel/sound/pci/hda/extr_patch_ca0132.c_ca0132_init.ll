; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32, i32, i32*, i32, i32*, i32*, i32, i32*, i32*, i32, i32, i32, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, i32* }

@DSP_DOWNLOAD_INIT = common dso_local global i32 0, align 4
@INVALID_CHIP_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ca0132_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca %struct.auto_pin_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  store %struct.ca0132_spec* %8, %struct.ca0132_spec** %3, align 8
  %9 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %10 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %9, i32 0, i32 13
  store %struct.auto_pin_cfg* %10, %struct.auto_pin_cfg** %4, align 8
  %11 = load i32, i32* @DSP_DOWNLOAD_INIT, align 4
  %12 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %13 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %12, i32 0, i32 12
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @INVALID_CHIP_ADDRESS, align 4
  %15 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %16 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = call i32 @snd_hda_power_up(%struct.hda_codec* %17)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = call i32 @ca0132_init_params(%struct.hda_codec* %19)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @ca0132_init_flags(%struct.hda_codec* %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %25 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %23, i32 %26)
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = call i32 @ca0132_download_dsp(%struct.hda_codec* %28)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = call i32 @ca0132_refresh_widget_caps(%struct.hda_codec* %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = call i32 @ca0132_setup_defaults(%struct.hda_codec* %32)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = call i32 @ca0132_init_analog_mic2(%struct.hda_codec* %34)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = call i32 @ca0132_init_dmic(%struct.hda_codec* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %59, %1
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %41 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %47 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %46, i32 0, i32 9
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %54 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @init_output(%struct.hda_codec* %45, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %64 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %65 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %70 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @init_output(%struct.hda_codec* %63, i32 %68, i32 %71)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %96, %62
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %76 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %81 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %82 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %89 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @init_input(%struct.hda_codec* %80, i32 %87, i32 %94)
  br label %96

96:                                               ; preds = %79
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %73

99:                                               ; preds = %73
  %100 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %101 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %102 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %105 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @init_input(%struct.hda_codec* %100, i32 %103, i32 %106)
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %124, %99
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %111 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %116 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %117 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %115, i32 %122)
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %108

127:                                              ; preds = %108
  %128 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %129 = call i32 @ca0132_init_unsol(%struct.hda_codec* %128)
  %130 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %131 = call i32 @ca0132_select_out(%struct.hda_codec* %130)
  %132 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %133 = call i32 @ca0132_select_mic(%struct.hda_codec* %132)
  %134 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %135 = call i32 @snd_hda_jack_report_sync(%struct.hda_codec* %134)
  %136 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %137 = call i32 @snd_hda_power_down(%struct.hda_codec* %136)
  ret i32 0
}

declare dso_local i32 @snd_hda_power_up(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_init_params(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_init_flags(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, i32) #1

declare dso_local i32 @ca0132_download_dsp(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_refresh_widget_caps(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_setup_defaults(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_init_analog_mic2(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_init_dmic(%struct.hda_codec*) #1

declare dso_local i32 @init_output(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @init_input(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @ca0132_init_unsol(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_select_out(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_select_mic(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_jack_report_sync(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_power_down(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
