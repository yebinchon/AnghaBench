; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8971.c_wm8971_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8971.c_wm8971_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@WM8971_PWR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8971_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8971_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %7 = load i32, i32* @WM8971_PWR1, align 4
  %8 = call i32 @snd_soc_read(%struct.snd_soc_codec* %6, i32 %7)
  %9 = and i32 %8, 65086
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %28 [
    i32 130, label %11
    i32 129, label %17
    i32 128, label %18
    i32 131, label %24
  ]

11:                                               ; preds = %2
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %13 = load i32, i32* @WM8971_PWR1, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, 193
  %16 = call i32 @snd_soc_write(%struct.snd_soc_codec* %12, i32 %13, i32 %15)
  br label %28

17:                                               ; preds = %2
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %20 = load i32, i32* @WM8971_PWR1, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 320
  %23 = call i32 @snd_soc_write(%struct.snd_soc_codec* %19, i32 %20, i32 %22)
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %26 = load i32, i32* @WM8971_PWR1, align 4
  %27 = call i32 @snd_soc_write(%struct.snd_soc_codec* %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %2, %24, %18, %17, %11
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %31 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
