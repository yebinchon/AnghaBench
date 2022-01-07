; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8750.c_wm8750_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8750.c_wm8750_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32*, i64, i32, i64, i32, i32 (i32, i32*, i32)* }

@wm8750_reg = common dso_local global i32 0, align 4
@WM8750_RESET = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@SND_SOC_BIAS_ON = common dso_local global i64 0, align 8
@SND_SOC_BIAS_PREPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8750_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8750_resume(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_device*, align 8
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.snd_soc_device* %9, %struct.snd_soc_device** %3, align 8
  %10 = load %struct.snd_soc_device*, %struct.snd_soc_device** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  store %struct.snd_soc_codec* %14, %struct.snd_soc_codec** %4, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %55, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @wm8750_reg, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @WM8750_RESET, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %55

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 %29, 1
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 1
  %38 = or i32 %30, %37
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %48 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %47, i32 0, i32 5
  %49 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %48, align 8
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %51 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %54 = call i32 %49(i32 %52, i32* %53, i32 2)
  br label %55

55:                                               ; preds = %28, %27
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %18

58:                                               ; preds = %18
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %60 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %61 = call i32 @wm8750_set_bias_level(%struct.snd_soc_codec* %59, i32 %60)
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %63 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %69 = load i32, i32* @SND_SOC_BIAS_PREPARE, align 4
  %70 = call i32 @wm8750_set_bias_level(%struct.snd_soc_codec* %68, i32 %69)
  %71 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %72 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %73 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %75 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %74, i32 0, i32 2
  %76 = call i32 @msecs_to_jiffies(i32 1000)
  %77 = call i32 @schedule_delayed_work(i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %67, %58
  ret i32 0
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm8750_set_bias_level(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
