; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.platform_device = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.resource = type { i64, i64 }

@au1xpsc_ac97_workdata = common dso_local global %struct.TYPE_8__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"au1xpsc_ac97\00", align 1
@PSC_AC97CFG_RT_FIFO8 = common dso_local global i32 0, align 4
@PSC_AC97CFG_TT_FIFO8 = common dso_local global i32 0, align 4
@PSC_AC97CFG_DE_ENABLE = common dso_local global i32 0, align 4
@PSC_SEL_CLK_MASK = common dso_local global i64 0, align 8
@PSC_CTRL_DISABLE = common dso_local global i64 0, align 8
@PSC_SEL_PS_AC97MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.snd_soc_dai*)* @au1xpsc_ac97_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_ac97_probe(%struct.platform_device* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %110

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_8__* @kzalloc(i32 4, i32 %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %110

22:                                               ; preds = %14
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %7, align 8
  %29 = load %struct.resource*, %struct.resource** %7, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %106

34:                                               ; preds = %22
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.resource*, %struct.resource** %7, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.resource*, %struct.resource** %7, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.resource*, %struct.resource** %7, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = add nsw i64 %46, 1
  %48 = call %struct.TYPE_8__* @request_mem_region(i64 %39, i64 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %34
  br label %106

56:                                               ; preds = %34
  %57 = load %struct.resource*, %struct.resource** %7, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ioremap(i64 %59, i32 65535)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  br label %97

68:                                               ; preds = %56
  %69 = load i32, i32* @PSC_AC97CFG_RT_FIFO8, align 4
  %70 = load i32, i32* @PSC_AC97CFG_TT_FIFO8, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @PSC_AC97CFG_DE_ENABLE, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %77 = call i32 @PSC_SEL(%struct.TYPE_8__* %76)
  %78 = call i64 @au_readl(i32 %77)
  %79 = load i64, i64* @PSC_SEL_CLK_MASK, align 8
  %80 = and i64 %78, %79
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* @PSC_CTRL_DISABLE, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %83 = call i32 @PSC_CTRL(%struct.TYPE_8__* %82)
  %84 = call i32 @au_writel(i64 %81, i32 %83)
  %85 = call i32 (...) @au_sync()
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %87 = call i32 @PSC_SEL(%struct.TYPE_8__* %86)
  %88 = call i32 @au_writel(i64 0, i32 %87)
  %89 = call i32 (...) @au_sync()
  %90 = load i64, i64* @PSC_SEL_PS_AC97MODE, align 8
  %91 = load i64, i64* %8, align 8
  %92 = or i64 %90, %91
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %94 = call i32 @PSC_SEL(%struct.TYPE_8__* %93)
  %95 = call i32 @au_writel(i64 %92, i32 %94)
  %96 = call i32 (...) @au_sync()
  store i32 0, i32* %3, align 4
  br label %110

97:                                               ; preds = %67
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = call i32 @release_resource(%struct.TYPE_8__* %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = call i32 @kfree(%struct.TYPE_8__* %104)
  br label %106

106:                                              ; preds = %97, %55, %31
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %108 = call i32 @kfree(%struct.TYPE_8__* %107)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @au1xpsc_ac97_workdata, align 8
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %68, %19, %11
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @request_mem_region(i64, i64, i8*) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i64 @au_readl(i32) #1

declare dso_local i32 @PSC_SEL(%struct.TYPE_8__*) #1

declare dso_local i32 @au_writel(i64, i32) #1

declare dso_local i32 @PSC_CTRL(%struct.TYPE_8__*) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @release_resource(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
