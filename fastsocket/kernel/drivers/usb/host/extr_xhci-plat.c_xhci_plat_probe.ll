; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-plat.c_xhci_plat_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-plat.c_xhci_plat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { i32 }
%struct.xhci_hcd = type { %struct.usb_hcd* }
%struct.usb_hcd = type { i32, i32, i32, i64 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@xhci_plat_xhci_driver = common dso_local global %struct.hc_driver zeroinitializer, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"controller already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"error mapping memory\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xhci_plat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_plat_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = call i64 (...) @usb_disabled()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %166

15:                                               ; preds = %1
  store %struct.hc_driver* @xhci_plat_xhci_driver, %struct.hc_driver** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call i32 @platform_get_irq(%struct.platform_device* %16, i32 0)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %166

23:                                               ; preds = %15
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %6, align 8
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %166

32:                                               ; preds = %23
  %33 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_name(i32* %37)
  %39 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %33, i32* %35, i32 %38)
  store %struct.usb_hcd* %39, %struct.usb_hcd** %7, align 8
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %41 = icmp ne %struct.usb_hcd* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %166

45:                                               ; preds = %32
  %46 = load %struct.resource*, %struct.resource** %6, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = call i32 @resource_size(%struct.resource* %51)
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %62 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @request_mem_region(i32 %57, i32 %60, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %45
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %162

72:                                               ; preds = %45
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %74 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %77 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ioremap_nocache(i32 %75, i32 %78)
  %80 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %81 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %83 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %72
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_dbg(i32* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EFAULT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %154

92:                                               ; preds = %72
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @IRQF_SHARED, align 4
  %96 = call i32 @usb_add_hcd(%struct.usb_hcd* %93, i32 %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %149

100:                                              ; preds = %92
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call %struct.usb_hcd* @dev_get_drvdata(i32* %102)
  store %struct.usb_hcd* %103, %struct.usb_hcd** %7, align 8
  %104 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %105 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %104)
  store %struct.xhci_hcd* %105, %struct.xhci_hcd** %5, align 8
  %106 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @dev_name(i32* %110)
  %112 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %113 = call %struct.usb_hcd* @usb_create_shared_hcd(%struct.hc_driver* %106, i32* %108, i32 %111, %struct.usb_hcd* %112)
  %114 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %115 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %114, i32 0, i32 0
  store %struct.usb_hcd* %113, %struct.usb_hcd** %115, align 8
  %116 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %117 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %116, i32 0, i32 0
  %118 = load %struct.usb_hcd*, %struct.usb_hcd** %117, align 8
  %119 = icmp ne %struct.usb_hcd* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %100
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %146

123:                                              ; preds = %100
  %124 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %125 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %126 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %125, i32 0, i32 0
  %127 = load %struct.usb_hcd*, %struct.usb_hcd** %126, align 8
  %128 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to %struct.xhci_hcd**
  store %struct.xhci_hcd* %124, %struct.xhci_hcd** %130, align 8
  %131 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %132 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %131, i32 0, i32 0
  %133 = load %struct.usb_hcd*, %struct.usb_hcd** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @IRQF_SHARED, align 4
  %136 = call i32 @usb_add_hcd(%struct.usb_hcd* %133, i32 %134, i32 %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %123
  br label %141

140:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %166

141:                                              ; preds = %139
  %142 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %143 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %142, i32 0, i32 0
  %144 = load %struct.usb_hcd*, %struct.usb_hcd** %143, align 8
  %145 = call i32 @usb_put_hcd(%struct.usb_hcd* %144)
  br label %146

146:                                              ; preds = %141, %120
  %147 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %148 = call i32 @usb_remove_hcd(%struct.usb_hcd* %147)
  br label %149

149:                                              ; preds = %146, %99
  %150 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %151 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @iounmap(i32 %152)
  br label %154

154:                                              ; preds = %149, %86
  %155 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %156 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %159 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @release_mem_region(i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %154, %66
  %163 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %164 = call i32 @usb_put_hcd(%struct.usb_hcd* %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %162, %140, %42, %29, %20, %12
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, i32*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local %struct.usb_hcd* @dev_get_drvdata(i32*) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local %struct.usb_hcd* @usb_create_shared_hcd(%struct.hc_driver*, i32*, i32, %struct.usb_hcd*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
