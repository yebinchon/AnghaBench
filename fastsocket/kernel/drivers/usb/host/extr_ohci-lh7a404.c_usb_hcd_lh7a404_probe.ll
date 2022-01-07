; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-lh7a404.c_usb_hcd_lh7a404_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-lh7a404.c_usb_hcd_lh7a404_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.usb_hcd = type { i64, i64, i32 }

@IORESOURCE_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"resource[1] is not IORESOURCE_IRQ\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"lh7a404\00", align 1
@hcd_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"request_mem_region failed\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"ioremap failed\00", align 1
@IRQF_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_lh7a404_probe(%struct.hc_driver* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  store %struct.hc_driver* %0, %struct.hc_driver** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IORESOURCE_IRQ, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %124

20:                                               ; preds = %2
  %21 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 1
  %24 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %21, i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.usb_hcd* %24, %struct.usb_hcd** %7, align 8
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %26 = icmp ne %struct.usb_hcd* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %124

30:                                               ; preds = %20
  %31 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %38 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
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
  br i1 %63, label %68, label %64

64:                                               ; preds = %30
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %120

68:                                               ; preds = %30
  %69 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %70 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %73 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ioremap(i64 %71, i64 %74)
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %77 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %79 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %68
  %83 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %112

86:                                               ; preds = %68
  %87 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %88 = call i32 @lh7a404_start_hc(%struct.platform_device* %87)
  %89 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %90 = call i32 @hcd_to_ohci(%struct.usb_hcd* %89)
  %91 = call i32 @ohci_hcd_init(i32 %90)
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @IRQF_DISABLED, align 4
  %100 = call i32 @usb_add_hcd(%struct.usb_hcd* %92, i64 %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %86
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %124

105:                                              ; preds = %86
  %106 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %107 = call i32 @lh7a404_stop_hc(%struct.platform_device* %106)
  %108 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %109 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @iounmap(i32 %110)
  br label %112

112:                                              ; preds = %105, %82
  %113 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %114 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %117 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @release_mem_region(i64 %115, i64 %118)
  br label %120

120:                                              ; preds = %112, %64
  %121 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %122 = call i32 @usb_put_hcd(%struct.usb_hcd* %121)
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %103, %27, %16
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, i32*, i8*) #1

declare dso_local i32 @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @lh7a404_start_hc(%struct.platform_device*) #1

declare dso_local i32 @ohci_hcd_init(i32) #1

declare dso_local i32 @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i64, i32) #1

declare dso_local i32 @lh7a404_stop_hc(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
