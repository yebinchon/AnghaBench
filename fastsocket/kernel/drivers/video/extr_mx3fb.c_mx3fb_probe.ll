; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_mx3fb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_mx3fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32, i32 }
%struct.mx3fb_data = type { i32, i32, %struct.device*, i32 }
%struct.dma_chan = type { i32 }
%struct.dma_chan_request = type { i32, %struct.mx3fb_data* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Remapped %x to %x at %p\0A\00", align 1
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@IDMAC_SDC_0 = common dso_local global i32 0, align 4
@chan_filter = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"mx3fb: failed to register fb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mx3fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3fb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.mx3fb_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_chan*, align 8
  %10 = alloca %struct.dma_chan_request, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = load i32, i32* @IORESOURCE_MEM, align 4
  %15 = call %struct.resource* @platform_get_resource(%struct.platform_device* %13, i32 %14, i32 0)
  store %struct.resource* %15, %struct.resource** %6, align 8
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %112

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mx3fb_data* @kzalloc(i32 24, i32 %22)
  store %struct.mx3fb_data* %23, %struct.mx3fb_data** %7, align 8
  %24 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %25 = icmp ne %struct.mx3fb_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %112

29:                                               ; preds = %21
  %30 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %31 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %30, i32 0, i32 3
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.resource*, %struct.resource** %6, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = call i32 @resource_size(%struct.resource* %36)
  %38 = call i32 @ioremap(i32 %35, i32 %37)
  %39 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %40 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %42 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %106

48:                                               ; preds = %29
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.resource*, %struct.resource** %6, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %56 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %57)
  %59 = call i32 (...) @dmaengine_get()
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %62 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %61, i32 0, i32 2
  store %struct.device* %60, %struct.device** %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %65 = call i32 @platform_set_drvdata(%struct.platform_device* %63, %struct.mx3fb_data* %64)
  %66 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %67 = getelementptr inbounds %struct.dma_chan_request, %struct.dma_chan_request* %10, i32 0, i32 1
  store %struct.mx3fb_data* %66, %struct.mx3fb_data** %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dma_cap_zero(i32 %68)
  %70 = load i32, i32* @DMA_SLAVE, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dma_cap_set(i32 %70, i32 %71)
  %73 = load i32, i32* @DMA_PRIVATE, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @dma_cap_set(i32 %73, i32 %74)
  %76 = load i32, i32* @IDMAC_SDC_0, align 4
  %77 = getelementptr inbounds %struct.dma_chan_request, %struct.dma_chan_request* %10, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @chan_filter, align 4
  %80 = call %struct.dma_chan* @dma_request_channel(i32 %78, i32 %79, %struct.dma_chan_request* %10)
  store %struct.dma_chan* %80, %struct.dma_chan** %9, align 8
  %81 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %82 = icmp ne %struct.dma_chan* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %48
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %100

86:                                               ; preds = %48
  %87 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %88 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %89 = call i32 @to_idmac_chan(%struct.dma_chan* %88)
  %90 = call i32 @init_fb_chan(%struct.mx3fb_data* %87, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %97

94:                                               ; preds = %86
  %95 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %96 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %95, i32 0, i32 0
  store i32 255, i32* %96, align 8
  store i32 0, i32* %2, align 4
  br label %112

97:                                               ; preds = %93
  %98 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %99 = call i32 @dma_release_channel(%struct.dma_chan* %98)
  br label %100

100:                                              ; preds = %97, %83
  %101 = call i32 (...) @dmaengine_put()
  %102 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %103 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @iounmap(i32 %104)
  br label %106

106:                                              ; preds = %100, %45
  %107 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %108 = call i32 @kfree(%struct.mx3fb_data* %107)
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %106, %94, %26, %18
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.mx3fb_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @dmaengine_get(...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mx3fb_data*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local %struct.dma_chan* @dma_request_channel(i32, i32, %struct.dma_chan_request*) #1

declare dso_local i32 @init_fb_chan(%struct.mx3fb_data*, i32) #1

declare dso_local i32 @to_idmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

declare dso_local i32 @dmaengine_put(...) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.mx3fb_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
