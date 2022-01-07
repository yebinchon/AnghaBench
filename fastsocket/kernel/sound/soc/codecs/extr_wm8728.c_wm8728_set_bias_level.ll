; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8728.c_wm8728_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8728.c_wm8728_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@WM8728_DACCTL = common dso_local global i32 0, align 4
@wm8728_reg_defaults = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8728_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8728_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %48 [
    i32 130, label %8
    i32 129, label %8
    i32 128, label %8
    i32 131, label %39
  ]

8:                                                ; preds = %2, %2, %2
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 131
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %15 = load i32, i32* @WM8728_DACCTL, align 4
  %16 = call i32 @snd_soc_read(%struct.snd_soc_codec* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %18 = load i32, i32* @WM8728_DACCTL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, -5
  %21 = call i32 @snd_soc_write(%struct.snd_soc_codec* %17, i32 %18, i32 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %34, %13
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @wm8728_reg_defaults, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @snd_soc_read(%struct.snd_soc_codec* %30, i32 %31)
  %33 = call i32 @snd_soc_write(%struct.snd_soc_codec* %28, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %22

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %8
  br label %48

39:                                               ; preds = %2
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %41 = load i32, i32* @WM8728_DACCTL, align 4
  %42 = call i32 @snd_soc_read(%struct.snd_soc_codec* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %44 = load i32, i32* @WM8728_DACCTL, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, 4
  %47 = call i32 @snd_soc_write(%struct.snd_soc_codec* %43, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %2, %39, %38
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %51 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
