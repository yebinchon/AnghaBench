; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_tosa.c_tosa_ext_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_tosa.c_tosa_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@tosa_jack_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Mic (Internal)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@tosa_spk_func = common dso_local global i64 0, align 8
@TOSA_SPK_ON = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_codec*)* @tosa_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tosa_ext_control(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %3 = load i32, i32* @tosa_jack_func, align 4
  switch i32 %3, label %25 [
    i32 129, label %4
    i32 128, label %11
    i32 130, label %18
  ]

4:                                                ; preds = %1
  %5 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %6 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %8 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %10 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %13 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %15 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %17 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %20 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %22 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %24 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %1, %18, %11, %4
  %26 = load i64, i64* @tosa_spk_func, align 8
  %27 = load i64, i64* @TOSA_SPK_ON, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %31 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %34 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %37 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %36)
  ret void
}

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
