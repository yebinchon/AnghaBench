; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32*, i32 (i32, i32*, i32)*, i32, i32 }

@wm8940_reg_defaults = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8940_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_resume(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_device*, align 8
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.snd_soc_device* %10, %struct.snd_soc_device** %3, align 8
  %11 = load %struct.snd_soc_device*, %struct.snd_soc_device** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %14, align 8
  store %struct.snd_soc_codec* %15, %struct.snd_soc_codec** %4, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %61, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @wm8940_reg_defaults, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 65280
  %33 = ashr i32 %32, 8
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %43 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %42, i32 0, i32 1
  %44 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %43, align 8
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %49 = call i32 %44(i32 %47, i32* %48, i32 3)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %24
  br label %77

53:                                               ; preds = %24
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 3
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %77

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %19

64:                                               ; preds = %19
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %66 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %67 = call i32 @wm8940_set_bias_level(%struct.snd_soc_codec* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %77

71:                                               ; preds = %64
  %72 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %74 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @wm8940_set_bias_level(%struct.snd_soc_codec* %72, i32 %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %71, %70, %56, %52
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm8940_set_bias_level(%struct.snd_soc_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
