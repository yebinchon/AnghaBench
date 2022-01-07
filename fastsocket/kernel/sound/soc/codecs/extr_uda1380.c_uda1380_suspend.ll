; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @uda1380_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1380_suspend(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_device*, align 8
  %6 = alloca %struct.snd_soc_codec*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.snd_soc_device* %8, %struct.snd_soc_device** %5, align 8
  %9 = load %struct.snd_soc_device*, %struct.snd_soc_device** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  store %struct.snd_soc_codec* %13, %struct.snd_soc_codec** %6, align 8
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %15 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %16 = call i32 @uda1380_set_bias_level(%struct.snd_soc_codec* %14, i32 %15)
  ret i32 0
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @uda1380_set_bias_level(%struct.snd_soc_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
