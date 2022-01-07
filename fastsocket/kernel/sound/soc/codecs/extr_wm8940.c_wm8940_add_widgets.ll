; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_add_widgets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_add_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@wm8940_dapm_widgets = common dso_local global i32 0, align 4
@audio_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @wm8940_add_widgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_add_widgets(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %4 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %5 = load i32, i32* @wm8940_dapm_widgets, align 4
  %6 = load i32, i32* @wm8940_dapm_widgets, align 4
  %7 = call i32 @ARRAY_SIZE(i32 %6)
  %8 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %4, i32 %5, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %14 = load i32, i32* @audio_map, align 4
  %15 = load i32, i32* @audio_map, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %13, i32 %14, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %24

21:                                               ; preds = %12
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %23 = call i32 @snd_soc_dapm_new_widgets(%struct.snd_soc_codec* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %20, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_new_widgets(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
