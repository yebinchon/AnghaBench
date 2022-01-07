; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_davinci_mcasp_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_davinci_mcasp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.davinci_audio_dev* }
%struct.davinci_audio_dev = type { i32* }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.snd_platform_data* }
%struct.snd_platform_data = type { i64 }
%struct.resource = type { i64, i64 }

@davinci_mcasp_dai = common dso_local global %struct.TYPE_5__* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_mcasp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_platform_data*, align 8
  %4 = alloca %struct.davinci_audio_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.snd_platform_data*, %struct.snd_platform_data** %8, align 8
  store %struct.snd_platform_data* %9, %struct.snd_platform_data** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @davinci_mcasp_dai, align 8
  %11 = load %struct.snd_platform_data*, %struct.snd_platform_data** %3, align 8
  %12 = getelementptr inbounds %struct.snd_platform_data, %struct.snd_platform_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %13
  %15 = call i32 @snd_soc_unregister_dai(%struct.TYPE_5__* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @davinci_mcasp_dai, align 8
  %17 = load %struct.snd_platform_data*, %struct.snd_platform_data** %3, align 8
  %18 = getelementptr inbounds %struct.snd_platform_data, %struct.snd_platform_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %21, align 8
  store %struct.davinci_audio_dev* %22, %struct.davinci_audio_dev** %4, align 8
  %23 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %4, align 8
  %24 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @clk_disable(i32* %25)
  %27 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %4, align 8
  %28 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @clk_put(i32* %29)
  %31 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %4, align 8
  %32 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %5, align 8
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.resource*, %struct.resource** %5, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.resource*, %struct.resource** %5, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = add nsw i64 %45, 1
  %47 = call i32 @release_mem_region(i64 %38, i64 %46)
  %48 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %4, align 8
  %49 = call i32 @kfree(%struct.davinci_audio_dev* %48)
  ret i32 0
}

declare dso_local i32 @snd_soc_unregister_dai(%struct.TYPE_5__*) #1

declare dso_local i32 @clk_disable(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @kfree(%struct.davinci_audio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
