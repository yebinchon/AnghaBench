; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_e750_wm9705.c_e750_ac97_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_e750_wm9705.c_e750_ac97_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"LOUT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ROUT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"PHONE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"LINEINL\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"LINEINR\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"CDINL\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"CDINR\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"PCBEEP\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"MIC2\00", align 1
@e750_dapm_widgets = common dso_local global i32 0, align 4
@audio_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @e750_ac97_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e750_ac97_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %3 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %4 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %6 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %8 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %10 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %12 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %14 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %16 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %18 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %20 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %22 = load i32, i32* @e750_dapm_widgets, align 4
  %23 = load i32, i32* @e750_dapm_widgets, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %21, i32 %22, i32 %24)
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %27 = load i32, i32* @audio_map, align 4
  %28 = load i32, i32* @audio_map, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %26, i32 %27, i32 %29)
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %32 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %31)
  ret i32 0
}

declare dso_local i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
