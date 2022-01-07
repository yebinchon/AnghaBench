; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-hub.c_xhci_usb3_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-hub.c_xhci_usb3_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_hcd = type { i32, i32* }
%struct.usb_hub_descriptor = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }

@USB_DT_SS_HUB = common dso_local global i32 0, align 4
@USB_DT_SS_HUB_SIZE = common dso_local global i32 0, align 4
@PORT_DEV_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.xhci_hcd*, %struct.usb_hub_descriptor*)* @xhci_usb3_hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_usb3_hub_descriptor(%struct.usb_hcd* %0, %struct.xhci_hcd* %1, %struct.usb_hub_descriptor* %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.usb_hub_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.xhci_hcd* %1, %struct.xhci_hcd** %5, align 8
  store %struct.usb_hub_descriptor* %2, %struct.usb_hub_descriptor** %6, align 8
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %12 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %15 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @xhci_common_hub_descriptor(%struct.xhci_hcd* %14, %struct.usb_hub_descriptor* %15, i32 %16)
  %18 = load i32, i32* @USB_DT_SS_HUB, align 4
  %19 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %20 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @USB_DT_SS_HUB_SIZE, align 4
  %22 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %23 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %25 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %29 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %57, %3
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %38 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %39 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @xhci_readl(%struct.xhci_hcd* %37, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @PORT_DEV_REMOVE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  %53 = shl i32 1, %52
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %32

60:                                               ; preds = %32
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @cpu_to_le16(i32 %61)
  %63 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %64 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  ret void
}

declare dso_local i32 @xhci_common_hub_descriptor(%struct.xhci_hcd*, %struct.usb_hub_descriptor*, i32) #1

declare dso_local i32 @xhci_readl(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
