; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, i32, i32, %struct.twl4030_priv* }
%struct.twl4030_priv = type { i32 }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@twl4030_socdev = common dso_local global %struct.snd_soc_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl4030_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.twl4030_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.snd_soc_device* %8, %struct.snd_soc_device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 24, i32 %9)
  %11 = bitcast i8* %10 to %struct.snd_soc_codec*
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %5, align 8
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %13 = icmp eq %struct.snd_soc_codec* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 4, i32 %18)
  %20 = bitcast i8* %19 to %struct.twl4030_priv*
  store %struct.twl4030_priv* %20, %struct.twl4030_priv** %6, align 8
  %21 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %22 = icmp eq %struct.twl4030_priv* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %25 = call i32 @kfree(%struct.snd_soc_codec* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %49

28:                                               ; preds = %17
  %29 = load %struct.twl4030_priv*, %struct.twl4030_priv** %6, align 8
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %31 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %30, i32 0, i32 3
  store %struct.twl4030_priv* %29, %struct.twl4030_priv** %31, align 8
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %33 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %34 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.snd_soc_codec* %32, %struct.snd_soc_codec** %36, align 8
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %38 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %37, i32 0, i32 2
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %41 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %40, i32 0, i32 1
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %44 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %43, i32 0, i32 0
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  store %struct.snd_soc_device* %46, %struct.snd_soc_device** @twl4030_socdev, align 8
  %47 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %48 = call i32 @twl4030_init(%struct.snd_soc_device* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %28, %23, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_soc_codec*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @twl4030_init(%struct.snd_soc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
