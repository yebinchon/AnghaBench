; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_n810.c_n810_aic33_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_n810.c_n810_aic33_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"MONO_LOUT\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"HPLCOM\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HPRCOM\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"MIC3L\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"MIC3R\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"LINE1R\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"LINE2L\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"LINE2R\00", align 1
@aic33_n810_controls = common dso_local global i32 0, align 4
@aic33_dapm_widgets = common dso_local global i32 0, align 4
@audio_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @n810_aic33_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n810_aic33_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %5 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %6 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %8 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %10 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %12 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %14 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %16 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %18 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %20 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %22 = load i32, i32* @aic33_n810_controls, align 4
  %23 = load i32, i32* @aic33_n810_controls, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %21, i32 %22, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %1
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %32 = load i32, i32* @aic33_dapm_widgets, align 4
  %33 = load i32, i32* @aic33_dapm_widgets, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %31, i32 %32, i32 %34)
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %37 = load i32, i32* @audio_map, align 4
  %38 = load i32, i32* @audio_map, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %36, i32 %37, i32 %39)
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %42 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %30, %28
  %44 = load i32, i32* %2, align 4
  ret i32 %44
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
