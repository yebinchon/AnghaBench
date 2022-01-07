; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@WM8753_PWR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8753_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %7 = load i32, i32* @WM8753_PWR1, align 4
  %8 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %6, i32 %7)
  %9 = and i32 %8, 65086
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %33 [
    i32 130, label %11
    i32 129, label %17
    i32 128, label %23
    i32 131, label %29
  ]

11:                                               ; preds = %2
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %13 = load i32, i32* @WM8753_PWR1, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, 192
  %16 = call i32 @wm8753_write(%struct.snd_soc_codec* %12, i32 %13, i32 %15)
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %19 = load i32, i32* @WM8753_PWR1, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, 449
  %22 = call i32 @wm8753_write(%struct.snd_soc_codec* %18, i32 %19, i32 %21)
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %25 = load i32, i32* @WM8753_PWR1, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, 321
  %28 = call i32 @wm8753_write(%struct.snd_soc_codec* %24, i32 %25, i32 %27)
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %31 = load i32, i32* @WM8753_PWR1, align 4
  %32 = call i32 @wm8753_write(%struct.snd_soc_codec* %30, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %2, %29, %23, %17, %11
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %36 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret i32 0
}

declare dso_local i32 @wm8753_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8753_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
