; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-pci.c_xhci_pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-pci.c_xhci_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.xhci_hcd = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.hc_driver = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@XHCI_LPM_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @xhci_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.hc_driver*, align 8
  %9 = alloca %struct.usb_hcd*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hc_driver*
  store %struct.hc_driver* %13, %struct.hc_driver** %8, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %16 = call i32 @usb_hcd_pci_probe(%struct.pci_dev* %14, %struct.pci_device_id* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %89

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = call %struct.usb_hcd* @dev_get_drvdata(i32* %23)
  store %struct.usb_hcd* %24, %struct.usb_hcd** %9, align 8
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %26 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %25)
  store %struct.xhci_hcd* %26, %struct.xhci_hcd** %7, align 8
  %27 = load %struct.hc_driver*, %struct.hc_driver** %8, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @pci_name(%struct.pci_dev* %30)
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %33 = call %struct.TYPE_8__* @usb_create_shared_hcd(%struct.hc_driver* %27, i32* %29, i32 %31, %struct.usb_hcd* %32)
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %35 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %34, i32 0, i32 1
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %35, align 8
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %37 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %21
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %85

43:                                               ; preds = %21
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %46 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.xhci_hcd**
  store %struct.xhci_hcd* %44, %struct.xhci_hcd** %50, align 8
  %51 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %52 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IRQF_DISABLED, align 4
  %58 = load i32, i32* @IRQF_SHARED, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @usb_add_hcd(%struct.TYPE_8__* %53, i32 %56, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %80

64:                                               ; preds = %43
  %65 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %66 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @XHCI_LPM_SUPPORT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %73 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call %struct.TYPE_9__* @hcd_to_bus(%struct.TYPE_8__* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %64
  store i32 0, i32* %3, align 4
  br label %89

80:                                               ; preds = %63
  %81 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %82 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = call i32 @usb_put_hcd(%struct.TYPE_8__* %83)
  br label %85

85:                                               ; preds = %80, %40
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = call i32 @usb_hcd_pci_remove(%struct.pci_dev* %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %79, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @usb_hcd_pci_probe(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local %struct.usb_hcd* @dev_get_drvdata(i32*) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local %struct.TYPE_8__* @usb_create_shared_hcd(%struct.hc_driver*, i32*, i32, %struct.usb_hcd*) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @usb_add_hcd(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @hcd_to_bus(%struct.TYPE_8__*) #1

declare dso_local i32 @usb_put_hcd(%struct.TYPE_8__*) #1

declare dso_local i32 @usb_hcd_pci_remove(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
