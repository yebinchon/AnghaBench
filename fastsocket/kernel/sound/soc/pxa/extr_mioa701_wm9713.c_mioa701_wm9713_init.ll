; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_mioa701_wm9713.c_mioa701_wm9713_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_mioa701_wm9713.c_mioa701_wm9713_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i16 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32, i16)* }

@mioa701_dapm_widgets = common dso_local global i32 0, align 4
@audio_map = common dso_local global i32 0, align 4
@AC97_GPIO_CFG = common dso_local global i32 0, align 4
@AC97_3D_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Front Speaker\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Rear Speaker\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Front Mic\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"GSM Line In\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"GSM Line Out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @mioa701_wm9713_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mioa701_wm9713_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %4 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %5 = load i32, i32* @mioa701_dapm_widgets, align 4
  %6 = call i32 @ARRAY_AND_SIZE(i32 %5)
  %7 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %4, i32 %6)
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %9 = load i32, i32* @audio_map, align 4
  %10 = call i32 @ARRAY_AND_SIZE(i32 %9)
  %11 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %8, i32 %10)
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %13 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %12, i32 0, i32 0
  %14 = load i16 (%struct.snd_soc_codec*, i32)*, i16 (%struct.snd_soc_codec*, i32)** %13, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %16 = load i32, i32* @AC97_GPIO_CFG, align 4
  %17 = call zeroext i16 %14(%struct.snd_soc_codec* %15, i32 %16)
  store i16 %17, i16* %3, align 2
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 1
  %20 = load i32 (%struct.snd_soc_codec*, i32, i16)*, i32 (%struct.snd_soc_codec*, i32, i16)** %19, align 8
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %22 = load i32, i32* @AC97_GPIO_CFG, align 4
  %23 = load i16, i16* %3, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %24, 256
  %26 = trunc i32 %25 to i16
  %27 = call i32 %20(%struct.snd_soc_codec* %21, i32 %22, i16 zeroext %26)
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %29 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %28, i32 0, i32 0
  %30 = load i16 (%struct.snd_soc_codec*, i32)*, i16 (%struct.snd_soc_codec*, i32)** %29, align 8
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %32 = load i32, i32* @AC97_3D_CONTROL, align 4
  %33 = call zeroext i16 %30(%struct.snd_soc_codec* %31, i32 %32)
  store i16 %33, i16* %3, align 2
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %35 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %34, i32 0, i32 1
  %36 = load i32 (%struct.snd_soc_codec*, i32, i16)*, i32 (%struct.snd_soc_codec*, i32, i16)** %35, align 8
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %38 = load i32, i32* @AC97_3D_CONTROL, align 4
  %39 = load i16, i16* %3, align 2
  %40 = zext i16 %39 to i32
  %41 = or i32 %40, 49152
  %42 = trunc i32 %41 to i16
  %43 = call i32 %36(%struct.snd_soc_codec* %37, i32 %38, i16 zeroext %42)
  %44 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %45 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %47 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %49 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %51 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %53 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %55 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %54)
  ret i32 0
}

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ARRAY_AND_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
