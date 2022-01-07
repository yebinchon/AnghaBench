; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cx20442.c_cx20442_platform_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cx20442.c_cx20442_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cx20442_priv = type { %struct.snd_soc_codec }
%struct.snd_soc_codec = type { i32*, i64, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cx20442_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx20442_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cx20442_priv*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.cx20442_priv* @kzalloc(i32 32, i32 %6)
  store %struct.cx20442_priv* %7, %struct.cx20442_priv** %4, align 8
  %8 = load %struct.cx20442_priv*, %struct.cx20442_priv** %4, align 8
  %9 = icmp eq %struct.cx20442_priv* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.cx20442_priv*, %struct.cx20442_priv** %4, align 8
  %15 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %14, i32 0, i32 0
  store %struct.snd_soc_codec* %15, %struct.snd_soc_codec** %5, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %21 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.cx20442_priv*, %struct.cx20442_priv** %4, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.cx20442_priv* %27)
  %29 = load %struct.cx20442_priv*, %struct.cx20442_priv** %4, align 8
  %30 = call i32 @cx20442_register(%struct.cx20442_priv* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %13, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.cx20442_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cx20442_priv*) #1

declare dso_local i32 @cx20442_register(%struct.cx20442_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
