; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_magician.c_magician_ext_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_magician.c_magician_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@magician_spk_switch = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@magician_hp_switch = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@magician_in_sel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Call Mic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_codec*)* @magician_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @magician_ext_control(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %3 = load i64, i64* @magician_spk_switch, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %7 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %11

8:                                                ; preds = %1
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %10 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %5
  %12 = load i64, i64* @magician_hp_switch, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %16 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %20

17:                                               ; preds = %11
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %19 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @magician_in_sel, align 4
  switch i32 %21, label %32 [
    i32 129, label %22
    i32 128, label %27
  ]

22:                                               ; preds = %20
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %24 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %26 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %32

27:                                               ; preds = %20
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %29 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %31 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %20, %27, %22
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %34 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %33)
  ret void
}

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
