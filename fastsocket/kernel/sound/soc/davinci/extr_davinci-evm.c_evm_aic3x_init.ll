; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-evm.c_evm_aic3x_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-evm.c_evm_aic3x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@aic3x_dapm_widgets = common dso_local global i32 0, align 4
@audio_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MONO_LOUT\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"HPLCOM\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HPRCOM\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Line Out\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Mic Jack\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Line In\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @evm_aic3x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evm_aic3x_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %3 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %4 = load i32, i32* @aic3x_dapm_widgets, align 4
  %5 = load i32, i32* @aic3x_dapm_widgets, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %3, i32 %4, i32 %6)
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %9 = load i32, i32* @audio_map, align 4
  %10 = load i32, i32* @audio_map, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %8, i32 %9, i32 %11)
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %14 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %16 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %18 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %20 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %22 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %24 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %26 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %28 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %27)
  ret i32 0
}

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
