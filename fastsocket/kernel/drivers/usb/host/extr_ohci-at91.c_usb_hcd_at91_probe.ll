; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-at91.c_usb_hcd_at91_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-at91.c_usb_hcd_at91_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.usb_hcd = type { i64, i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"hcd probe: invalid num_resources\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@IORESOURCE_IRQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"hcd probe: invalid resource type\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"at91\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hcd_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"request_mem_region failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"ohci_clk\00", align 1
@iclk = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"uhpck\00", align 1
@fclk = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"hck0\00", align 1
@hclk = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hc_driver*, %struct.platform_device*)* @usb_hcd_at91_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hcd_at91_probe(%struct.hc_driver* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  store %struct.hc_driver* %0, %struct.hc_driver** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store %struct.usb_hcd* null, %struct.usb_hcd** %7, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %165

16:                                               ; preds = %2
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IORESOURCE_MEM, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %16
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IORESOURCE_IRQ, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %25, %16
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %165

38:                                               ; preds = %25
  %39 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 2
  %42 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %39, i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.usb_hcd* %42, %struct.usb_hcd** %7, align 8
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %44 = icmp ne %struct.usb_hcd* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %165

48:                                               ; preds = %38
  %49 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %62, %68
  %70 = add nsw i64 %69, 1
  %71 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %72 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %74 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %77 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @hcd_name, align 4
  %80 = call i32 @request_mem_region(i64 %75, i64 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %48
  %83 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %161

86:                                               ; preds = %48
  %87 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %88 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %91 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @ioremap(i64 %89, i64 %92)
  %94 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %95 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %97 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %86
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %153

104:                                              ; preds = %86
  %105 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 2
  %107 = call i32 @clk_get(i32* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %107, i32* @iclk, align 4
  %108 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 2
  %110 = call i32 @clk_get(i32* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %110, i32* @fclk, align 4
  %111 = call i64 (...) @cpu_is_at91sam9261()
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 2
  %116 = call i32 @clk_get(i32* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 %116, i32* @hclk, align 4
  br label %117

117:                                              ; preds = %113, %104
  %118 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %119 = call i32 @at91_start_hc(%struct.platform_device* %118)
  %120 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %121 = call i32 @hcd_to_ohci(%struct.usb_hcd* %120)
  %122 = call i32 @ohci_hcd_init(i32 %121)
  %123 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %124 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @IRQF_SHARED, align 4
  %131 = call i32 @usb_add_hcd(%struct.usb_hcd* %123, i64 %129, i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %117
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %3, align 4
  br label %165

136:                                              ; preds = %117
  %137 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %138 = call i32 @at91_stop_hc(%struct.platform_device* %137)
  %139 = call i64 (...) @cpu_is_at91sam9261()
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* @hclk, align 4
  %143 = call i32 @clk_put(i32 %142)
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i32, i32* @fclk, align 4
  %146 = call i32 @clk_put(i32 %145)
  %147 = load i32, i32* @iclk, align 4
  %148 = call i32 @clk_put(i32 %147)
  %149 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %150 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @iounmap(i32 %151)
  br label %153

153:                                              ; preds = %144, %100
  %154 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %155 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %158 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @release_mem_region(i64 %156, i64 %159)
  br label %161

161:                                              ; preds = %153, %82
  %162 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %163 = call i32 @usb_put_hcd(%struct.usb_hcd* %162)
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %161, %134, %45, %34, %12
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, i32*, i8*) #1

declare dso_local i32 @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @cpu_is_at91sam9261(...) #1

declare dso_local i32 @at91_start_hc(%struct.platform_device*) #1

declare dso_local i32 @ohci_hcd_init(i32) #1

declare dso_local i32 @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i64, i32) #1

declare dso_local i32 @at91_stop_hc(%struct.platform_device*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
