; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_zoom2.c_zoom2_twl4030_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_zoom2.c_zoom2_twl4030_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@zoom2_twl4030_dapm_widgets = common dso_local global i32 0, align 4
@audio_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Ext Mic\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Ext Spk\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Headset Stereophone\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Aux In\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"CARKITMIC\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"DIGIMIC0\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"DIGIMIC1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"OUTL\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"OUTR\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"EARPIECE\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"PREDRIVEL\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"PREDRIVER\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"CARKITL\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"CARKITR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @zoom2_twl4030_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoom2_twl4030_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %5 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %6 = load i32, i32* @zoom2_twl4030_dapm_widgets, align 4
  %7 = load i32, i32* @zoom2_twl4030_dapm_widgets, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %5, i32 %6, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %16 = load i32, i32* @audio_map, align 4
  %17 = load i32, i32* @audio_map, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %15, i32 %16, i32 %18)
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %21 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %23 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %25 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %27 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %29 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %31 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %33 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %35 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %37 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %39 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %41 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %43 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %44 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %45 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %47 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %48 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %49 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %51 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %14, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
