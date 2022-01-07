; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_playpaq_wm8510.c_playpaq_wm8510_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_playpaq_wm8510.c_playpaq_wm8510_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@playpaq_dapm_widgets = common dso_local global i32* null, align 8
@intercon = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Int Mic\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Ext Spk\00", align 1
@WM8510_OPCLKDIV = common dso_local global i32 0, align 4
@WM8510_OPCLKDIV_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @playpaq_wm8510_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playpaq_wm8510_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** @playpaq_dapm_widgets, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %11 = load i32*, i32** @playpaq_dapm_widgets, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @snd_soc_dapm_new_control(%struct.snd_soc_codec* %10, i32* %14)
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %21 = load i32*, i32** @intercon, align 8
  %22 = load i32*, i32** @intercon, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %20, i32* %21, i32 %23)
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %26 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %28 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %30 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %29)
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %32 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WM8510_OPCLKDIV, align 4
  %35 = load i32, i32* @WM8510_OPCLKDIV_1, align 4
  %36 = or i32 %35, 4
  %37 = call i32 @snd_soc_dai_set_clkdiv(i32 %33, i32 %34, i32 %36)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_dapm_new_control(%struct.snd_soc_codec*, i32*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32*, i32) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_dai_set_clkdiv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
