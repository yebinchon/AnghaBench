; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_tosa.c_tosa_ac97_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_tosa.c_tosa_ac97_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"OUT3\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MONOOUT\00", align 1
@tosa_controls = common dso_local global i32 0, align 4
@tosa_dapm_widgets = common dso_local global i32 0, align 4
@audio_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @tosa_ac97_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_ac97_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %5 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %6 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %8 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %10 = load i32, i32* @tosa_controls, align 4
  %11 = load i32, i32* @tosa_controls, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %9, i32 %10, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %20 = load i32, i32* @tosa_dapm_widgets, align 4
  %21 = load i32, i32* @tosa_dapm_widgets, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %19, i32 %20, i32 %22)
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %25 = load i32, i32* @audio_map, align 4
  %26 = load i32, i32* @audio_map, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %24, i32 %25, i32 %27)
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %30 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %18, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_add_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
