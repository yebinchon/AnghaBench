; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8990.c_wm8990_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8990.c_wm8990_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32*, i32, i32 (i32, i32*, i32)*, i32 }

@wm8990_reg = common dso_local global i32 0, align 4
@WM8990_RESET = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8990_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8990_resume(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.snd_soc_device* %10, %struct.snd_soc_device** %4, align 8
  %11 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %14, align 8
  store %struct.snd_soc_codec* %15, %struct.snd_soc_codec** %5, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

24:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %64, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @wm8990_reg, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* @WM8990_RESET, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %64

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = shl i32 %38, 1
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 1
  %47 = or i32 %39, %46
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 255
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %57 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %56, i32 0, i32 2
  %58 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %57, align 8
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %60 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %63 = call i32 %58(i32 %61, i32* %62, i32 2)
  br label %64

64:                                               ; preds = %36, %35
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %25

67:                                               ; preds = %25
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %69 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %70 = call i32 @wm8990_set_bias_level(%struct.snd_soc_codec* %68, i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %23
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm8990_set_bias_level(%struct.snd_soc_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
