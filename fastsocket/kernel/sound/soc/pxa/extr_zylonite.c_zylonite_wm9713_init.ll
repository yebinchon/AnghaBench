; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_zylonite.c_zylonite_wm9713_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_zylonite.c_zylonite_wm9713_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32* }

@clk_pout = common dso_local global i64 0, align 8
@pout = common dso_local global i32 0, align 4
@zylonite_dapm_widgets = common dso_local global i32 0, align 4
@audio_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Headset Earpiece\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @zylonite_wm9713_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zylonite_wm9713_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %3 = load i64, i64* @clk_pout, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %7 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* @pout, align 4
  %11 = call i32 @clk_get_rate(i32 %10)
  %12 = call i32 @snd_soc_dai_set_pll(i32* %9, i32 0, i32 %11, i32 0)
  br label %13

13:                                               ; preds = %5, %1
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %15 = load i32, i32* @zylonite_dapm_widgets, align 4
  %16 = load i32, i32* @zylonite_dapm_widgets, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %14, i32 %15, i32 %17)
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %20 = load i32, i32* @audio_map, align 4
  %21 = load i32, i32* @audio_map, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %19, i32 %20, i32 %22)
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %25 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %27 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %29 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %28)
  ret i32 0
}

declare dso_local i32 @snd_soc_dai_set_pll(i32*, i32, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
