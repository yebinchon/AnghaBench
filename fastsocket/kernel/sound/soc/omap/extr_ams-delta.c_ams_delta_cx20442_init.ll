; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_ams_delta_cx20442_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_ams_delta_cx20442_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.snd_soc_codec = type { %struct.TYPE_4__*, %struct.snd_soc_dai* }
%struct.TYPE_4__ = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_6__* }

@ams_delta_dai_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ams_delta_digital_mute = common dso_local global i64 0, align 8
@ams_delta_startup = common dso_local global i32 0, align 4
@ams_delta_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ams_delta_shutdown = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hook_switch\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@ams_delta_hook_switch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Failed to allocate resources for hook switch, will continue without one.\0A\00", align 1
@ams_delta_hook_switch_gpios = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [82 x i8] c"Failed to set up hook switch GPIO line, will continue with hook switch inactive.\0A\00", align 1
@N_V253 = common dso_local global i32 0, align 4
@cx81801_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"Failed to register line discipline, will continue without any controls.\0A\00", align 1
@ams_delta_dapm_widgets = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"Failed to register DAPM controls, will continue without any.\0A\00", align 1
@ams_delta_audio_map = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [69 x i8] c"Failed to set up DAPM routes, will continue with codec default map.\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Mouthpiece\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Earpiece\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Microphone\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"AGCIN\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"AGCOUT\00", align 1
@ams_delta_audio_controls = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [66 x i8] c"Failed to register audio mode control, will continue without it.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @ams_delta_cx20442_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_cx20442_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %7, i32 0, i32 1
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  store %struct.snd_soc_dai* %9, %struct.snd_soc_dai** %4, align 8
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %13, align 8
  store %struct.snd_soc_card* %14, %struct.snd_soc_card** %5, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  store %struct.TYPE_6__* @ams_delta_dai_ops, %struct.TYPE_6__** %21, align 8
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* @ams_delta_digital_mute, align 8
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 %30, i64* %34, align 8
  br label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @ams_delta_startup, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_delta_ops, i32 0, i32 1), align 4
  %37 = load i32, i32* @ams_delta_shutdown, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ams_delta_ops, i32 0, i32 0), align 4
  br label %38

38:                                               ; preds = %35, %29
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %41 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %42 = call i32 @ams_delta_set_bias_level(%struct.snd_soc_card* %40, i32 %41)
  %43 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %44 = load i32, i32* @SND_JACK_HEADSET, align 4
  %45 = call i32 @snd_soc_jack_new(%struct.snd_soc_card* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %44, i32* @ams_delta_hook_switch)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %50 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_warn(i32 %51, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  br label %66

53:                                               ; preds = %39
  %54 = load i32, i32* @ams_delta_hook_switch_gpios, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = load i32, i32* @ams_delta_hook_switch_gpios, align 4
  %57 = call i32 @snd_soc_jack_add_gpios(i32* @ams_delta_hook_switch, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %62 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_warn(i32 %63, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, i32* @N_V253, align 4
  %68 = call i32 @tty_register_ldisc(i32 %67, i32* @cx81801_ops)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %73 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_warn(i32 %74, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %130

76:                                               ; preds = %66
  %77 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %78 = load i32, i32* @ams_delta_dapm_widgets, align 4
  %79 = load i32, i32* @ams_delta_dapm_widgets, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %77, i32 %78, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %86 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_warn(i32 %87, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %130

89:                                               ; preds = %76
  %90 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %91 = load i32, i32* @ams_delta_audio_map, align 4
  %92 = load i32, i32* @ams_delta_audio_map, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %90, i32 %91, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %99 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_warn(i32 %100, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %130

102:                                              ; preds = %89
  %103 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %104 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %105 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %106 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %107 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %108 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %109 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %110 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %112 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %113 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %114 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %115 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %116 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %115)
  %117 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %118 = load i32, i32* @ams_delta_audio_controls, align 4
  %119 = load i32, i32* @ams_delta_audio_controls, align 4
  %120 = call i32 @ARRAY_SIZE(i32 %119)
  %121 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %117, i32 %118, i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %102
  %125 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %126 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dev_warn(i32 %127, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0))
  br label %129

129:                                              ; preds = %124, %102
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %97, %84, %71
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @ams_delta_set_bias_level(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @snd_soc_jack_new(%struct.snd_soc_card*, i8*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_jack_add_gpios(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @tty_register_ldisc(i32, i32*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_add_controls(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
