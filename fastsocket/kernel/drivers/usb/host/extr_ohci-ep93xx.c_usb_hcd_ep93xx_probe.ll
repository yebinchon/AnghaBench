; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-ep93xx.c_usb_hcd_ep93xx_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-ep93xx.c_usb_hcd_ep93xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.usb_hcd = type { i64, i64, i32* }

@IORESOURCE_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"resource[1] is not IORESOURCE_IRQ\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ep93xx\00", align 1
@hcd_name = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ioremap failed\00", align 1
@usb_host_clock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"clk_get failed\00", align 1
@IRQF_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hc_driver*, %struct.platform_device*)* @usb_hcd_ep93xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hcd_ep93xx_probe(%struct.hc_driver* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  store %struct.hc_driver* %0, %struct.hc_driver** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IORESOURCE_IRQ, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %139

20:                                               ; preds = %2
  %21 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %21, i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.usb_hcd* %24, %struct.usb_hcd** %7, align 8
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %26 = icmp eq %struct.usb_hcd* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %139

30:                                               ; preds = %20
  %31 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %38 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %44, %50
  %52 = add nsw i64 %51, 1
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @hcd_name, align 4
  %62 = call i32 @request_mem_region(i64 %57, i64 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %30
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %66 = call i32 @usb_put_hcd(%struct.usb_hcd* %65)
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %135

69:                                               ; preds = %30
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %71 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %74 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32* @ioremap(i64 %72, i64 %75)
  %77 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %78 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  %79 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %80 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %69
  %84 = call i32 @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %127

87:                                               ; preds = %69
  %88 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @clk_get(i32* %89, i32* null)
  store i32 %90, i32* @usb_host_clock, align 4
  %91 = load i32, i32* @usb_host_clock, align 4
  %92 = call i64 @IS_ERR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = call i32 @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* @usb_host_clock, align 4
  %97 = call i32 @PTR_ERR(i32 %96)
  store i32 %97, i32* %6, align 4
  br label %122

98:                                               ; preds = %87
  %99 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @ep93xx_start_hc(i32* %100)
  %102 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %103 = call i32 @hcd_to_ohci(%struct.usb_hcd* %102)
  %104 = call i32 @ohci_hcd_init(i32 %103)
  %105 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %106 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* @IRQF_DISABLED, align 4
  %113 = call i32 @usb_add_hcd(%struct.usb_hcd* %105, i64 %111, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %98
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %3, align 4
  br label %139

118:                                              ; preds = %98
  %119 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @ep93xx_stop_hc(i32* %120)
  br label %122

122:                                              ; preds = %118, %94
  %123 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %124 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @iounmap(i32* %125)
  br label %127

127:                                              ; preds = %122, %83
  %128 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %129 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %132 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @release_mem_region(i64 %130, i64 %133)
  br label %135

135:                                              ; preds = %127, %64
  %136 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %137 = call i32 @usb_put_hcd(%struct.usb_hcd* %136)
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %116, %27, %16
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, i32*, i8*) #1

declare dso_local i32 @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32* @ioremap(i64, i64) #1

declare dso_local i32 @clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ep93xx_start_hc(i32*) #1

declare dso_local i32 @ohci_hcd_init(i32) #1

declare dso_local i32 @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i64, i32) #1

declare dso_local i32 @ep93xx_stop_hc(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
