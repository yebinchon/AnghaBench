; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_neo1973_gta02_wm8753.c_neo1973_gta02_wm8753_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_neo1973_gta02_wm8753.c_neo1973_gta02_wm8753_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"OUT3\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT4\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"LINE1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"LINE2\00", align 1
@wm8753_dapm_widgets = common dso_local global i32 0, align 4
@wm8753_neo1973_gta02_controls = common dso_local global i32 0, align 4
@audio_map = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Stereo Out\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"GSM Line Out\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"GSM Line In\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Handset Mic\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Handset Spk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @neo1973_gta02_wm8753_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neo1973_gta02_wm8753_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %5 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %6 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %8 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %10 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %12 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %14 = load i32, i32* @wm8753_dapm_widgets, align 4
  %15 = load i32, i32* @wm8753_dapm_widgets, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %13, i32 %14, i32 %16)
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %19 = load i32, i32* @wm8753_neo1973_gta02_controls, align 4
  %20 = load i32, i32* @wm8753_neo1973_gta02_controls, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %18, i32 %19, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %47

27:                                               ; preds = %1
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %29 = load i32, i32* @audio_map, align 4
  %30 = load i32, i32* @audio_map, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %28, i32 %29, i32 %31)
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %34 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %36 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %38 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %40 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %42 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %44 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %46 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %27, %25
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_add_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
