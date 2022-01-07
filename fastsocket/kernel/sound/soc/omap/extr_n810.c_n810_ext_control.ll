; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_n810.c_n810_ext_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_n810.c_n810_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@n810_jack_func = common dso_local global i32 0, align 4
@n810_spk_func = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Ext Spk\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"LINE1L\00", align 1
@n810_dmic_func = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"DMic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_codec*)* @n810_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n810_ext_control(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @n810_jack_func, align 4
  switch i32 %5, label %9 [
    i32 129, label %6
    i32 130, label %7
    i32 128, label %8
  ]

6:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  br label %7

7:                                                ; preds = %1, %6
  store i32 1, i32* %3, align 4
  br label %9

8:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  br label %9

9:                                                ; preds = %1, %8, %7
  %10 = load i64, i64* @n810_spk_func, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %14 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %18

15:                                               ; preds = %9
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %17 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %23 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %27

24:                                               ; preds = %18
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %26 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %32 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %36

33:                                               ; preds = %27
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %35 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @n810_dmic_func, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %41 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %45

42:                                               ; preds = %36
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %44 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %47 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %46)
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
