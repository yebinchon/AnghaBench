; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_set_dai_clkdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_set_dai_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8940_CLOCK = common dso_local global i32 0, align 4
@WM8940_ADDCNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @wm8940_set_dai_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_set_dai_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  store %struct.snd_soc_codec* %12, %struct.snd_soc_codec** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %50 [
    i32 130, label %14
    i32 129, label %26
    i32 128, label %38
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %16 = load i32, i32* @WM8940_CLOCK, align 4
  %17 = call i32 @snd_soc_read(%struct.snd_soc_codec* %15, i32 %16)
  %18 = and i32 %17, 1048307
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %20 = load i32, i32* @WM8940_CLOCK, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 2
  %24 = or i32 %21, %23
  %25 = call i32 @snd_soc_write(%struct.snd_soc_codec* %19, i32 %20, i32 %24)
  store i32 %25, i32* %9, align 4
  br label %50

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %28 = load i32, i32* @WM8940_CLOCK, align 4
  %29 = call i32 @snd_soc_read(%struct.snd_soc_codec* %27, i32 %28)
  %30 = and i32 %29, 65311
  store i32 %30, i32* %8, align 4
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %32 = load i32, i32* @WM8940_CLOCK, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %34, 5
  %36 = or i32 %33, %35
  %37 = call i32 @snd_soc_write(%struct.snd_soc_codec* %31, i32 %32, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %50

38:                                               ; preds = %3
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %40 = load i32, i32* @WM8940_ADDCNTRL, align 4
  %41 = call i32 @snd_soc_read(%struct.snd_soc_codec* %39, i32 %40)
  %42 = and i32 %41, 65487
  store i32 %42, i32* %8, align 4
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %44 = load i32, i32* @WM8940_ADDCNTRL, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 4
  %48 = or i32 %45, %47
  %49 = call i32 @snd_soc_write(%struct.snd_soc_codec* %43, i32 %44, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %3, %38, %26, %14
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
