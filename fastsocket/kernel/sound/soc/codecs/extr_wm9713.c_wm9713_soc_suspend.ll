; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_soc_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_soc_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@AC97_EXTENDED_MID = common dso_local global i32 0, align 4
@AC97_EXTENDED_MSTATUS = common dso_local global i32 0, align 4
@AC97_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @wm9713_soc_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_soc_suspend(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_device*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.snd_soc_device* %9, %struct.snd_soc_device** %5, align 8
  %10 = load %struct.snd_soc_device*, %struct.snd_soc_device** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  store %struct.snd_soc_codec* %14, %struct.snd_soc_codec** %6, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %16 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %17 = call i32 @ac97_read(%struct.snd_soc_codec* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %19 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 32767
  %22 = call i32 @ac97_write(%struct.snd_soc_codec* %18, i32 %19, i32 %21)
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %24 = load i32, i32* @AC97_EXTENDED_MSTATUS, align 4
  %25 = call i32 @ac97_write(%struct.snd_soc_codec* %23, i32 %24, i32 65535)
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %27 = load i32, i32* @AC97_POWERDOWN, align 4
  %28 = call i32 @ac97_write(%struct.snd_soc_codec* %26, i32 %27, i32 28416)
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %30 = load i32, i32* @AC97_POWERDOWN, align 4
  %31 = call i32 @ac97_write(%struct.snd_soc_codec* %29, i32 %30, i32 65535)
  ret i32 0
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ac97_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ac97_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
