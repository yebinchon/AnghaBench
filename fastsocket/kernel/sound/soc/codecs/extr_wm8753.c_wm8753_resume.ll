; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32*, i64, i32, i64, i32, i32 (i32, i32*, i32)*, i32 }

@wm8753_reg = common dso_local global i32* null, align 8
@WM8753_RESET = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@SND_SOC_BIAS_ON = common dso_local global i64 0, align 8
@SND_SOC_BIAS_PREPARE = common dso_local global i32 0, align 4
@caps_charge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8753_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_resume(%struct.platform_device* %0) #0 {
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
  %20 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

24:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %77, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** @wm8753_reg, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %80

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* @WM8753_RESET, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %77

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** @wm8753_reg, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %77

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = shl i32 %51, 1
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 1
  %60 = or i32 %52, %59
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %70 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %69, i32 0, i32 5
  %71 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %70, align 8
  %72 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %73 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %76 = call i32 %71(i32 %74, i32* %75, i32 2)
  br label %77

77:                                               ; preds = %49, %48, %35
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %25

80:                                               ; preds = %25
  %81 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %82 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %83 = call i32 @wm8753_set_bias_level(%struct.snd_soc_codec* %81, i32 %82)
  %84 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %85 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %80
  %90 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %91 = load i32, i32* @SND_SOC_BIAS_PREPARE, align 4
  %92 = call i32 @wm8753_set_bias_level(%struct.snd_soc_codec* %90, i32 %91)
  %93 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %94 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %95 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %97 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %96, i32 0, i32 2
  %98 = load i32, i32* @caps_charge, align 4
  %99 = call i32 @msecs_to_jiffies(i32 %98)
  %100 = call i32 @schedule_delayed_work(i32* %97, i32 %99)
  br label %101

101:                                              ; preds = %89, %80
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %23
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wm8753_set_bias_level(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
