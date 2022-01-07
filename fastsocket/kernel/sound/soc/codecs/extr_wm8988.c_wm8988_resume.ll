; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8988.c_wm8988_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8988.c_wm8988_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32*, i32, i32 (i32, i32*, i32)* }

@WM8988_NUM_REG = common dso_local global i32 0, align 4
@WM8988_RESET = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8988_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8988_resume(%struct.platform_device* %0) #0 {
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

18:                                               ; preds = %54, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @WM8988_NUM_REG, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @WM8988_RESET, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %54

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 1
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 1
  %37 = or i32 %29, %36
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %47 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %46, i32 0, i32 2
  %48 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %47, align 8
  %49 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %50 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %53 = call i32 %48(i32 %51, i32* %52, i32 2)
  br label %54

54:                                               ; preds = %27, %26
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %18

57:                                               ; preds = %18
  %58 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %59 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %60 = call i32 @wm8988_set_bias_level(%struct.snd_soc_codec* %58, i32 %59)
  ret i32 0
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @wm8988_set_bias_level(%struct.snd_soc_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
