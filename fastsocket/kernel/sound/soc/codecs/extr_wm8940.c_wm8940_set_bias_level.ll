; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@WM8940_POWER1 = common dso_local global i32 0, align 4
@WM8940_OUTPUTCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8940_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %9 = load i32, i32* @WM8940_POWER1, align 4
  %10 = call i32 @snd_soc_read(%struct.snd_soc_codec* %8, i32 %9)
  %11 = and i32 %10, 496
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %54 [
    i32 130, label %13
    i32 129, label %33
    i32 128, label %41
    i32 131, label %49
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, 12
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %17 = load i32, i32* @WM8940_OUTPUTCTL, align 4
  %18 = call i32 @snd_soc_read(%struct.snd_soc_codec* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %20 = load i32, i32* @WM8940_OUTPUTCTL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 2
  %23 = call i32 @snd_soc_write(%struct.snd_soc_codec* %19, i32 %20, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %54

27:                                               ; preds = %13
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %29 = load i32, i32* @WM8940_POWER1, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, 1
  %32 = call i32 @snd_soc_write(%struct.snd_soc_codec* %28, i32 %29, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %54

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 12
  store i32 %35, i32* %6, align 4
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %37 = load i32, i32* @WM8940_POWER1, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, 1
  %40 = call i32 @snd_soc_write(%struct.snd_soc_codec* %36, i32 %37, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %54

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, 12
  store i32 %43, i32* %6, align 4
  %44 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %45 = load i32, i32* @WM8940_POWER1, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, 2
  %48 = call i32 @snd_soc_write(%struct.snd_soc_codec* %44, i32 %45, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %54

49:                                               ; preds = %2
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %51 = load i32, i32* @WM8940_POWER1, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @snd_soc_write(%struct.snd_soc_codec* %50, i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %2, %49, %41, %33, %27, %26
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
