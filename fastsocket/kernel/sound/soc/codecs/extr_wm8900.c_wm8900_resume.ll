; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.wm8900_priv* }
%struct.wm8900_priv = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to restart FLL\0A\00", align 1
@WM8900_MAXREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to allocate register cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8900_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_resume(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.wm8900_priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.snd_soc_device* %13, %struct.snd_soc_device** %4, align 8
  %14 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %17, align 8
  store %struct.snd_soc_codec* %18, %struct.snd_soc_codec** %5, align 8
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %19, i32 0, i32 1
  %21 = load %struct.wm8900_priv*, %struct.wm8900_priv** %20, align 8
  store %struct.wm8900_priv* %21, %struct.wm8900_priv** %6, align 8
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmemdup(i32 %24, i32 4, i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %28 = call i32 @wm8900_reset(%struct.snd_soc_codec* %27)
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %30 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %31 = call i32 @wm8900_set_bias_level(%struct.snd_soc_codec* %29, i32 %30)
  %32 = load %struct.wm8900_priv*, %struct.wm8900_priv** %6, align 8
  %33 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %1
  %37 = load %struct.wm8900_priv*, %struct.wm8900_priv** %6, align 8
  %38 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.wm8900_priv*, %struct.wm8900_priv** %6, align 8
  %41 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.wm8900_priv*, %struct.wm8900_priv** %6, align 8
  %44 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.wm8900_priv*, %struct.wm8900_priv** %6, align 8
  %46 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @wm8900_set_fll(%struct.snd_soc_codec* %47, i32 0, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %36
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %2, align 4
  br label %87

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58, %1
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %76, %62
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @WM8900_MAXREG, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @snd_soc_write(%struct.snd_soc_codec* %68, i32 %69, i32 %74)
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @kfree(i32* %80)
  br label %86

82:                                               ; preds = %59
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %79
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %53
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @wm8900_reset(%struct.snd_soc_codec*) #1

declare dso_local i32 @wm8900_set_bias_level(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8900_set_fll(%struct.snd_soc_codec*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
