; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_palm27x.c_palm27x_ac97_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_palm27x.c_palm27x_ac97_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@palm27x_dapm_widgets = common dso_local global i32 0, align 4
@audio_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"MIC1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"HPOUTL\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HPOUTR\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"LOUT2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ROUT2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"OUT3\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"MONOOUT\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"LINEINL\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"LINEINR\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"PCBEEP\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"PHONE\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"MIC2\00", align 1
@palm27x_asoc = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@hs_jack = common dso_local global i32 0, align 4
@hs_jack_pins = common dso_local global i32 0, align 4
@hs_jack_gpios = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @palm27x_ac97_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palm27x_ac97_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %5 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %6 = load i32, i32* @palm27x_dapm_widgets, align 4
  %7 = load i32, i32* @palm27x_dapm_widgets, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %5, i32 %6, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %81

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %16 = load i32, i32* @audio_map, align 4
  %17 = load i32, i32* @audio_map, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %15, i32 %16, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %81

24:                                               ; preds = %14
  %25 = call i64 (...) @machine_is_palmld()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %29 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %32 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %34 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %36 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %38 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %40 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %42 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %44 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %46 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %48 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %49 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %50 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %51 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %52 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %54 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %30
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %81

59:                                               ; preds = %30
  %60 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %61 = call i32 @snd_soc_jack_new(i32* @palm27x_asoc, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %60, i32* @hs_jack)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %81

66:                                               ; preds = %59
  %67 = load i32, i32* @hs_jack_pins, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = load i32, i32* @hs_jack_pins, align 4
  %70 = call i32 @snd_soc_jack_add_pins(i32* @hs_jack, i32 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %81

75:                                               ; preds = %66
  %76 = load i32, i32* @hs_jack_gpios, align 4
  %77 = call i32 @ARRAY_SIZE(i32 %76)
  %78 = load i32, i32* @hs_jack_gpios, align 4
  %79 = call i32 @snd_soc_jack_add_gpios(i32* @hs_jack, i32 %77, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %73, %64, %57, %22, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i64 @machine_is_palmld(...) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_jack_new(i32*, i8*, i32, i32*) #1

declare dso_local i32 @snd_soc_jack_add_pins(i32*, i32, i32) #1

declare dso_local i32 @snd_soc_jack_add_gpios(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
