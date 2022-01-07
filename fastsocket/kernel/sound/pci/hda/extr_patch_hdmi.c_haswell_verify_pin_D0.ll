; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_haswell_verify_pin_D0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_haswell_verify_pin_D0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_PWRST_D0 = common dso_local global i32 0, align 4
@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@AC_VERB_GET_POWER_STATE = common dso_local global i32 0, align 4
@AC_PWRST_ACTUAL = common dso_local global i32 0, align 4
@AC_PWRST_ACTUAL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Haswell HDMI audio: Power for pin 0x%x is now D%d\0A\00", align 1
@AC_VERB_GET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AC_AMP_GET_LEFT = common dso_local global i32 0, align 4
@AC_AMP_GET_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_GET_RIGHT = common dso_local global i32 0, align 4
@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AC_AMP_SET_RIGHT = common dso_local global i32 0, align 4
@AC_AMP_SET_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Haswell HDMI audio: Mute after set on pin 0x%x: [0x%x 0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32)* @haswell_verify_pin_D0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @haswell_verify_pin_D0(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AC_PWRST_D0, align 4
  %13 = call i32 @snd_hda_check_power_state(%struct.hda_codec* %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %19 = load i32, i32* @AC_PWRST_D0, align 4
  %20 = call i32 @snd_hda_codec_write(%struct.hda_codec* %16, i32 %17, i32 0, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @AC_PWRST_D0, align 4
  %25 = call i32 @snd_hda_check_power_state(%struct.hda_codec* %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %21
  %28 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %31 = load i32, i32* @AC_PWRST_D0, align 4
  %32 = call i32 @snd_hda_codec_write(%struct.hda_codec* %28, i32 %29, i32 0, i32 %30, i32 %31)
  %33 = call i32 @msleep(i32 40)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @AC_VERB_GET_POWER_STATE, align 4
  %37 = call i32 @snd_hda_codec_read(%struct.hda_codec* %34, i32 %35, i32 0, i32 %36, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AC_PWRST_ACTUAL, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @AC_PWRST_ACTUAL_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, i32, i32, ...) @snd_printd(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %27, %21
  %47 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @AC_VERB_GET_AMP_GAIN_MUTE, align 4
  %50 = load i32, i32* @AC_AMP_GET_LEFT, align 4
  %51 = load i32, i32* @AC_AMP_GET_OUTPUT, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @snd_hda_codec_read(%struct.hda_codec* %47, i32 %48, i32 0, i32 %49, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @AC_VERB_GET_AMP_GAIN_MUTE, align 4
  %57 = load i32, i32* @AC_AMP_GET_RIGHT, align 4
  %58 = load i32, i32* @AC_AMP_GET_OUTPUT, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @snd_hda_codec_read(%struct.hda_codec* %54, i32 %55, i32 0, i32 %56, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %46
  %65 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %68 = load i32, i32* @AC_AMP_SET_RIGHT, align 4
  %69 = load i32, i32* @AC_AMP_SET_OUTPUT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @snd_hda_codec_write(%struct.hda_codec* %65, i32 %66, i32 0, i32 %67, i32 %72)
  %74 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @AC_VERB_GET_AMP_GAIN_MUTE, align 4
  %77 = load i32, i32* @AC_AMP_GET_LEFT, align 4
  %78 = load i32, i32* @AC_AMP_GET_OUTPUT, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @snd_hda_codec_read(%struct.hda_codec* %74, i32 %75, i32 0, i32 %76, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @AC_VERB_GET_AMP_GAIN_MUTE, align 4
  %84 = load i32, i32* @AC_AMP_GET_RIGHT, align 4
  %85 = load i32, i32* @AC_AMP_GET_OUTPUT, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @snd_hda_codec_read(%struct.hda_codec* %81, i32 %82, i32 0, i32 %83, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i8*, i32, i32, ...) @snd_printd(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %64, %46
  ret void
}

declare dso_local i32 @snd_hda_check_power_state(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_printd(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
