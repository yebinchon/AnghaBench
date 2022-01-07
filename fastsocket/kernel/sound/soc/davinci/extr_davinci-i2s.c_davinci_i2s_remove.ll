; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-i2s.c_davinci_i2s_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-i2s.c_davinci_i2s_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.davinci_mcbsp_dev* }
%struct.davinci_mcbsp_dev = type { i32* }
%struct.platform_device = type { i32 }
%struct.resource = type { i64, i64 }

@davinci_i2s_dai = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_i2s_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_i2s_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.davinci_mcbsp_dev*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @davinci_i2s_dai, i32 0, i32 0), align 8
  store %struct.davinci_mcbsp_dev* %5, %struct.davinci_mcbsp_dev** %3, align 8
  %6 = call i32 @snd_soc_unregister_dai(%struct.TYPE_3__* @davinci_i2s_dai)
  %7 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %3, align 8
  %8 = getelementptr inbounds %struct.davinci_mcbsp_dev, %struct.davinci_mcbsp_dev* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @clk_disable(i32* %9)
  %11 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %3, align 8
  %12 = getelementptr inbounds %struct.davinci_mcbsp_dev, %struct.davinci_mcbsp_dev* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @clk_put(i32* %13)
  %15 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %3, align 8
  %16 = getelementptr inbounds %struct.davinci_mcbsp_dev, %struct.davinci_mcbsp_dev* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %3, align 8
  %18 = call i32 @kfree(%struct.davinci_mcbsp_dev* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %4, align 8
  %22 = load %struct.resource*, %struct.resource** %4, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.resource*, %struct.resource** %4, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.resource*, %struct.resource** %4, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = add nsw i64 %31, 1
  %33 = call i32 @release_mem_region(i64 %24, i64 %32)
  ret i32 0
}

declare dso_local i32 @snd_soc_unregister_dai(%struct.TYPE_3__*) #1

declare dso_local i32 @clk_disable(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @kfree(%struct.davinci_mcbsp_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
