; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8971.c_wm8971_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8971.c_wm8971_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_device = type { %struct.TYPE_2__*, %struct.wm8971_setup_data* }
%struct.TYPE_2__ = type { %struct.wm8971_priv* }
%struct.wm8971_priv = type { %struct.wm8971_priv*, i32, i32, i32, i32 }
%struct.wm8971_setup_data = type { i64 }
%struct.platform_device = type { i32 }
%struct.snd_soc_codec = type { %struct.snd_soc_codec*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"WM8971 Audio Codec %s\00", align 1
@WM8971_VERSION = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8971_socdev = common dso_local global %struct.snd_soc_device* null, align 8
@wm8971_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"wm8971\00", align 1
@wm8971_workq = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8971_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8971_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.wm8971_setup_data*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.wm8971_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.snd_soc_device* %10, %struct.snd_soc_device** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @WM8971_VERSION, align 4
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %13, i32 0, i32 1
  %15 = load %struct.wm8971_setup_data*, %struct.wm8971_setup_data** %14, align 8
  store %struct.wm8971_setup_data* %15, %struct.wm8971_setup_data** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 24, i32 %16)
  %18 = bitcast i8* %17 to %struct.snd_soc_codec*
  store %struct.snd_soc_codec* %18, %struct.snd_soc_codec** %6, align 8
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %20 = icmp eq %struct.snd_soc_codec* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %91

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 24, i32 %25)
  %27 = bitcast i8* %26 to %struct.wm8971_priv*
  store %struct.wm8971_priv* %27, %struct.wm8971_priv** %7, align 8
  %28 = load %struct.wm8971_priv*, %struct.wm8971_priv** %7, align 8
  %29 = icmp eq %struct.wm8971_priv* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %32 = bitcast %struct.snd_soc_codec* %31 to %struct.wm8971_priv*
  %33 = call i32 @kfree(%struct.wm8971_priv* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %91

36:                                               ; preds = %24
  %37 = load %struct.wm8971_priv*, %struct.wm8971_priv** %7, align 8
  %38 = bitcast %struct.wm8971_priv* %37 to %struct.snd_soc_codec*
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %40 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %39, i32 0, i32 0
  store %struct.snd_soc_codec* %38, %struct.snd_soc_codec** %40, align 8
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %42 = bitcast %struct.snd_soc_codec* %41 to %struct.wm8971_priv*
  %43 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %44 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.wm8971_priv* %42, %struct.wm8971_priv** %46, align 8
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %48 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %47, i32 0, i32 4
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %51 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %50, i32 0, i32 3
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %54 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %53, i32 0, i32 2
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  store %struct.snd_soc_device* %56, %struct.snd_soc_device** @wm8971_socdev, align 8
  %57 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %58 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %57, i32 0, i32 1
  %59 = load i32, i32* @wm8971_work, align 4
  %60 = call i32 @INIT_DELAYED_WORK(i32* %58, i32 %59)
  %61 = call i32* @create_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %61, i32** @wm8971_workq, align 8
  %62 = load i32*, i32** @wm8971_workq, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %36
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %66 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %65, i32 0, i32 0
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %66, align 8
  %68 = bitcast %struct.snd_soc_codec* %67 to %struct.wm8971_priv*
  %69 = call i32 @kfree(%struct.wm8971_priv* %68)
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %71 = bitcast %struct.snd_soc_codec* %70 to %struct.wm8971_priv*
  %72 = call i32 @kfree(%struct.wm8971_priv* %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %91

75:                                               ; preds = %36
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32*, i32** @wm8971_workq, align 8
  %80 = call i32 @destroy_workqueue(i32* %79)
  %81 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %82 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %81, i32 0, i32 0
  %83 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %82, align 8
  %84 = bitcast %struct.snd_soc_codec* %83 to %struct.wm8971_priv*
  %85 = call i32 @kfree(%struct.wm8971_priv* %84)
  %86 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %87 = bitcast %struct.snd_soc_codec* %86 to %struct.wm8971_priv*
  %88 = call i32 @kfree(%struct.wm8971_priv* %87)
  br label %89

89:                                               ; preds = %78, %75
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %64, %30, %21
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.wm8971_priv*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32* @create_workqueue(i8*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
