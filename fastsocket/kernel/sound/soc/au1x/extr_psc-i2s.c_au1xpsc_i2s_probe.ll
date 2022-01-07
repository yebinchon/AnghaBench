; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.platform_device = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.resource = type { i64, i64 }

@au1xpsc_i2s_workdata = common dso_local global %struct.TYPE_9__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"au1xpsc_i2s\00", align 1
@PSC_SEL_CLK_MASK = common dso_local global i64 0, align 8
@PSC_CTRL_DISABLE = common dso_local global i64 0, align 8
@PSC_SEL_PS_I2SMODE = common dso_local global i64 0, align 8
@PSC_I2SCFG_RT_FIFO8 = common dso_local global i32 0, align 4
@PSC_I2SCFG_TT_FIFO8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.snd_soc_dai*)* @au1xpsc_i2s_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_i2s_probe(%struct.platform_device* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %106

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_9__* @kzalloc(i32 4, i32 %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %106

22:                                               ; preds = %14
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %6, align 8
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %102

31:                                               ; preds = %22
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.resource*, %struct.resource** %6, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = add nsw i64 %43, 1
  %45 = call %struct.TYPE_9__* @request_mem_region(i64 %36, i64 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %31
  br label %102

53:                                               ; preds = %31
  %54 = load %struct.resource*, %struct.resource** %6, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ioremap(i64 %56, i32 65535)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  br label %93

65:                                               ; preds = %53
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %67 = call i32 @PSC_SEL(%struct.TYPE_9__* %66)
  %68 = call i64 @au_readl(i32 %67)
  %69 = load i64, i64* @PSC_SEL_CLK_MASK, align 8
  %70 = and i64 %68, %69
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* @PSC_CTRL_DISABLE, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %73 = call i32 @PSC_CTRL(%struct.TYPE_9__* %72)
  %74 = call i32 @au_writel(i64 %71, i32 %73)
  %75 = call i32 (...) @au_sync()
  %76 = load i64, i64* @PSC_SEL_PS_I2SMODE, align 8
  %77 = load i64, i64* %7, align 8
  %78 = or i64 %76, %77
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %80 = call i32 @PSC_SEL(%struct.TYPE_9__* %79)
  %81 = call i32 @au_writel(i64 %78, i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %83 = call i32 @I2S_CFG(%struct.TYPE_9__* %82)
  %84 = call i32 @au_writel(i64 0, i32 %83)
  %85 = call i32 (...) @au_sync()
  %86 = load i32, i32* @PSC_I2SCFG_RT_FIFO8, align 4
  %87 = load i32, i32* @PSC_I2SCFG_TT_FIFO8, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  store i32 0, i32* %3, align 4
  br label %106

93:                                               ; preds = %64
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = call i32 @release_resource(%struct.TYPE_9__* %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = call i32 @kfree(%struct.TYPE_9__* %100)
  br label %102

102:                                              ; preds = %93, %52, %28
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %104 = call i32 @kfree(%struct.TYPE_9__* %103)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** @au1xpsc_i2s_workdata, align 8
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %65, %19, %11
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_9__* @kzalloc(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @request_mem_region(i64, i64, i8*) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i64 @au_readl(i32) #1

declare dso_local i32 @PSC_SEL(%struct.TYPE_9__*) #1

declare dso_local i32 @au_writel(i64, i32) #1

declare dso_local i32 @PSC_CTRL(%struct.TYPE_9__*) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @I2S_CFG(%struct.TYPE_9__*) #1

declare dso_local i32 @release_resource(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
