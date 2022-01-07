; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8510.c_wm8510_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8510.c_wm8510_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@WM8510_POWER1 = common dso_local global i32 0, align 4
@WM8510_POWER1_BIASEN = common dso_local global i32 0, align 4
@WM8510_POWER1_BUFIOEN = common dso_local global i32 0, align 4
@WM8510_POWER2 = common dso_local global i32 0, align 4
@WM8510_POWER3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8510_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8510_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %7 = load i32, i32* @WM8510_POWER1, align 4
  %8 = call i32 @snd_soc_read(%struct.snd_soc_codec* %6, i32 %7)
  %9 = and i32 %8, -4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %52 [
    i32 130, label %11
    i32 129, label %11
    i32 128, label %18
    i32 131, label %42
  ]

11:                                               ; preds = %2, %2
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %15 = load i32, i32* @WM8510_POWER1, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snd_soc_write(%struct.snd_soc_codec* %14, i32 %15, i32 %16)
  br label %52

18:                                               ; preds = %2
  %19 = load i32, i32* @WM8510_POWER1_BIASEN, align 4
  %20 = load i32, i32* @WM8510_POWER1_BUFIOEN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %25 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 131
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %30 = load i32, i32* @WM8510_POWER1, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, 3
  %33 = call i32 @snd_soc_write(%struct.snd_soc_codec* %29, i32 %30, i32 %32)
  %34 = call i32 @mdelay(i32 100)
  br label %35

35:                                               ; preds = %28, %18
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, 2
  store i32 %37, i32* %5, align 4
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %39 = load i32, i32* @WM8510_POWER1, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @snd_soc_write(%struct.snd_soc_codec* %38, i32 %39, i32 %40)
  br label %52

42:                                               ; preds = %2
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %44 = load i32, i32* @WM8510_POWER1, align 4
  %45 = call i32 @snd_soc_write(%struct.snd_soc_codec* %43, i32 %44, i32 0)
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %47 = load i32, i32* @WM8510_POWER2, align 4
  %48 = call i32 @snd_soc_write(%struct.snd_soc_codec* %46, i32 %47, i32 0)
  %49 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %50 = load i32, i32* @WM8510_POWER3, align 4
  %51 = call i32 @snd_soc_write(%struct.snd_soc_codec* %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %2, %42, %35, %11
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %55 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
