; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_ams_delta_get_audio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_ams_delta_get_audio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16* }
%struct.snd_soc_codec = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Mouthpiece\00", align 1
@AMS_DELTA_MOUTHPIECE = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [9 x i8] c"Earpiece\00", align 1
@AMS_DELTA_EARPIECE = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [11 x i8] c"Microphone\00", align 1
@AMS_DELTA_MICROPHONE = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@AMS_DELTA_SPEAKER = common dso_local global i16 0, align 2
@ams_delta_audio_agc = common dso_local global i16 0, align 2
@AMS_DELTA_AGC = common dso_local global i16 0, align 2
@ams_delta_audio_mode = common dso_local global i32 0, align 4
@ams_delta_audio_mode_pins = common dso_local global i16* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @ams_delta_get_audio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_get_audio_mode(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_codec* %10, %struct.snd_soc_codec** %6, align 8
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %12 = call zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_codec* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @AMS_DELTA_MOUTHPIECE, align 2
  %15 = zext i16 %14 to i32
  %16 = shl i32 %13, %15
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %18 = call zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_codec* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @AMS_DELTA_EARPIECE, align 2
  %21 = zext i16 %20 to i32
  %22 = shl i32 %19, %21
  %23 = or i32 %16, %22
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %7, align 2
  %25 = load i16, i16* %7, align 2
  %26 = icmp ne i16 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %29 = call zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_codec* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @AMS_DELTA_MICROPHONE, align 2
  %32 = zext i16 %31 to i32
  %33 = shl i32 %30, %32
  %34 = load i16, i16* %7, align 2
  %35 = zext i16 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %7, align 2
  br label %59

38:                                               ; preds = %2
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %40 = call zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_codec* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @AMS_DELTA_MICROPHONE, align 2
  %43 = zext i16 %42 to i32
  %44 = shl i32 %41, %43
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %46 = call zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_codec* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @AMS_DELTA_SPEAKER, align 2
  %49 = zext i16 %48 to i32
  %50 = shl i32 %47, %49
  %51 = or i32 %44, %50
  %52 = load i16, i16* @ams_delta_audio_agc, align 2
  %53 = zext i16 %52 to i32
  %54 = load i16, i16* @AMS_DELTA_AGC, align 2
  %55 = zext i16 %54 to i32
  %56 = shl i32 %53, %55
  %57 = or i32 %51, %56
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %7, align 2
  br label %59

59:                                               ; preds = %38, %27
  store i16 0, i16* %8, align 2
  br label %60

60:                                               ; preds = %79, %59
  %61 = load i16, i16* %8, align 2
  %62 = zext i16 %61 to i32
  %63 = load i32, i32* @ams_delta_audio_mode, align 4
  %64 = call zeroext i16 @ARRAY_SIZE(i32 %63)
  %65 = zext i16 %64 to i32
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %60
  %68 = load i16, i16* %7, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16*, i16** @ams_delta_audio_mode_pins, align 8
  %71 = load i16, i16* %8, align 2
  %72 = zext i16 %71 to i64
  %73 = getelementptr inbounds i16, i16* %70, i64 %72
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = icmp eq i32 %69, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %82

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load i16, i16* %8, align 2
  %81 = add i16 %80, 1
  store i16 %81, i16* %8, align 2
  br label %60

82:                                               ; preds = %77, %60
  %83 = load i16, i16* %8, align 2
  %84 = zext i16 %83 to i32
  %85 = load i32, i32* @ams_delta_audio_mode, align 4
  %86 = call zeroext i16 @ARRAY_SIZE(i32 %85)
  %87 = zext i16 %86 to i32
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %100

92:                                               ; preds = %82
  %93 = load i16, i16* %8, align 2
  %94 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %95 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i16*, i16** %97, align 8
  %99 = getelementptr inbounds i16, i16* %98, i64 0
  store i16 %93, i16* %99, align 2
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %92, %89
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local zeroext i16 @snd_soc_dapm_get_pin_status(%struct.snd_soc_codec*, i8*) #1

declare dso_local zeroext i16 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
