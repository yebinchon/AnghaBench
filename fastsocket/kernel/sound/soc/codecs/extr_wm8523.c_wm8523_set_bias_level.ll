; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8523.c_wm8523_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8523.c_wm8523_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, i32, %struct.wm8523_priv* }
%struct.wm8523_priv = type { i32, i32* }

@WM8523_PSCTRL1 = common dso_local global i32 0, align 4
@WM8523_SYS_ENA_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@WM8523_AIF_CTRL1 = common dso_local global i32 0, align 4
@WM8523_MAX_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8523_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8523_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8523_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %9, i32 0, i32 2
  %11 = load %struct.wm8523_priv*, %struct.wm8523_priv** %10, align 8
  store %struct.wm8523_priv* %11, %struct.wm8523_priv** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %87 [
    i32 130, label %13
    i32 129, label %14
    i32 128, label %19
    i32 131, label %73
  ]

13:                                               ; preds = %2
  br label %87

14:                                               ; preds = %2
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %16 = load i32, i32* @WM8523_PSCTRL1, align 4
  %17 = load i32, i32* @WM8523_SYS_ENA_MASK, align 4
  %18 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %15, i32 %16, i32 %17, i32 3)
  br label %87

19:                                               ; preds = %2
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 131
  br i1 %23, label %24, label %68

24:                                               ; preds = %19
  %25 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %26 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %30 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @regulator_bulk_enable(i32 %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %91

42:                                               ; preds = %24
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %44 = load i32, i32* @WM8523_PSCTRL1, align 4
  %45 = load i32, i32* @WM8523_SYS_ENA_MASK, align 4
  %46 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %43, i32 %44, i32 %45, i32 1)
  %47 = load i32, i32* @WM8523_AIF_CTRL1, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %63, %42
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @WM8523_MAX_REGISTER, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %56 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snd_soc_write(%struct.snd_soc_codec* %53, i32 %54, i32 %61)
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %48

66:                                               ; preds = %48
  %67 = call i32 @msleep(i32 100)
  br label %68

68:                                               ; preds = %66, %19
  %69 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %70 = load i32, i32* @WM8523_PSCTRL1, align 4
  %71 = load i32, i32* @WM8523_SYS_ENA_MASK, align 4
  %72 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %69, i32 %70, i32 %71, i32 2)
  br label %87

73:                                               ; preds = %2
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %75 = load i32, i32* @WM8523_PSCTRL1, align 4
  %76 = load i32, i32* @WM8523_SYS_ENA_MASK, align 4
  %77 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %74, i32 %75, i32 %76, i32 0)
  %78 = call i32 @msleep(i32 100)
  %79 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %80 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ARRAY_SIZE(i32 %81)
  %83 = load %struct.wm8523_priv*, %struct.wm8523_priv** %6, align 8
  %84 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @regulator_bulk_disable(i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %2, %73, %68, %14, %13
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %90 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %35
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
