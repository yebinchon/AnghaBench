; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-ixp4xx.c_ixp4xx_ehci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-ixp4xx.c_ixp4xx_ehci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32, i32, i32* }
%struct.resource = type { i32, i32 }

@ixp4xx_ehci_hc_driver = common dso_local global %struct.hc_driver zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Found HC with no IRQ. Check %s setup!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Found HC with no register addr. Check %s setup!\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"controller already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"error mapping memory\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"init %s fail, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ixp4xx_ehci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp4xx_ehci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.hc_driver*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.hc_driver* @ixp4xx_ehci_hc_driver, %struct.hc_driver** %5, align 8
  %9 = call i64 (...) @usb_disabled()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %148

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @IORESOURCE_IRQ, align 4
  %17 = call %struct.resource* @platform_get_resource(%struct.platform_device* %15, i32 %16, i32 0)
  store %struct.resource* %17, %struct.resource** %6, align 8
  %18 = load %struct.resource*, %struct.resource** %6, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_name(i32* %24)
  %26 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %148

29:                                               ; preds = %14
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.hc_driver*, %struct.hc_driver** %5, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_name(i32* %37)
  %39 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %33, i32* %35, i32 %38)
  store %struct.usb_hcd* %39, %struct.usb_hcd** %4, align 8
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %41 = icmp ne %struct.usb_hcd* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %139

45:                                               ; preds = %29
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = call %struct.resource* @platform_get_resource(%struct.platform_device* %46, i32 %47, i32 0)
  store %struct.resource* %48, %struct.resource** %6, align 8
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = icmp ne %struct.resource* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_name(i32* %55)
  %57 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %136

60:                                               ; preds = %45
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %65 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.resource*, %struct.resource** %6, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  %73 = add nsw i32 %72, 1
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %75 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %77 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %80 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.hc_driver*, %struct.hc_driver** %5, align 8
  %83 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @request_mem_region(i32 %78, i32 %81, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %60
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @dev_dbg(i32* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %136

93:                                               ; preds = %60
  %94 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %95 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %98 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32* @ioremap_nocache(i32 %96, i32 %99)
  %101 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %102 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  %103 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %104 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %93
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @dev_dbg(i32* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @EFAULT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %8, align 4
  br label %128

113:                                              ; preds = %93
  %114 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @IRQF_SHARED, align 4
  %117 = call i32 @usb_add_hcd(%struct.usb_hcd* %114, i32 %115, i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %148

123:                                              ; preds = %120
  %124 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %125 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @iounmap(i32* %126)
  br label %128

128:                                              ; preds = %123, %107
  %129 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %130 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %133 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @release_mem_region(i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %128, %87, %51
  %137 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %138 = call i32 @usb_put_hcd(%struct.usb_hcd* %137)
  br label %139

139:                                              ; preds = %136, %42
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @dev_name(i32* %143)
  %145 = load i32, i32* %8, align 4
  %146 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %139, %121, %20, %11
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, i32*, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
