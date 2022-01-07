; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8971.c_wm8971_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8971.c_wm8971_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32*, i64, i32, i64, i32, i32 (i32, i32*, i32)* }

@wm8971_reg = common dso_local global i32 0, align 4
@WM8971_RESET = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@SND_SOC_BIAS_ON = common dso_local global i64 0, align 8
@WM8971_PWR1 = common dso_local global i32 0, align 4
@wm8971_workq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8971_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8971_resume(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_device*, align 8
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
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
  store i32* %18, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %57, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @wm8971_reg, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @WM8971_RESET, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %57

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 1
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 1
  %40 = or i32 %32, %39
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %50 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %49, i32 0, i32 5
  %51 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %50, align 8
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %53 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %56 = call i32 %51(i32 %54, i32* %55, i32 2)
  br label %57

57:                                               ; preds = %30, %29
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %62 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %63 = call i32 @wm8971_set_bias_level(%struct.snd_soc_codec* %61, i32 %62)
  %64 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %65 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %60
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %71 = load i32, i32* @WM8971_PWR1, align 4
  %72 = call i32 @snd_soc_read(%struct.snd_soc_codec* %70, i32 %71)
  %73 = and i32 %72, 65086
  store i32 %73, i32* %8, align 4
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %75 = load i32, i32* @WM8971_PWR1, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, 448
  %78 = call i32 @snd_soc_write(%struct.snd_soc_codec* %74, i32 %75, i32 %77)
  %79 = load i64, i64* @SND_SOC_BIAS_ON, align 8
  %80 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %81 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @wm8971_workq, align 4
  %83 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %84 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %83, i32 0, i32 2
  %85 = call i32 @msecs_to_jiffies(i32 1000)
  %86 = call i32 @queue_delayed_work(i32 %82, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %69, %60
  ret i32 0
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm8971_set_bias_level(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
