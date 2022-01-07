; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_get_max_esit_payload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_get_max_esit_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.usb_device = type { i64 }
%struct.usb_host_endpoint = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"WARN no SS endpoint companion descriptor.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)* @xhci_get_max_esit_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_get_max_esit_payload(%struct.xhci_hcd* %0, %struct.usb_device* %1, %struct.usb_host_endpoint* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.usb_device* %1, %struct.usb_device** %6, align 8
  store %struct.usb_host_endpoint* %2, %struct.usb_host_endpoint** %7, align 8
  %10 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %11 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %10, i32 0, i32 0
  %12 = call i64 @usb_endpoint_xfer_control(%struct.TYPE_7__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %16 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %15, i32 0, i32 0
  %17 = call i64 @usb_endpoint_xfer_bulk(%struct.TYPE_7__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %64

20:                                               ; preds = %14
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @USB_SPEED_SUPER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %28 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %33 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %64

39:                                               ; preds = %26
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %41 = call i32 @xhci_warn(%struct.xhci_hcd* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %43 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %4, align 4
  br label %64

46:                                               ; preds = %20
  %47 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %48 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = call i32 @GET_MAX_PACKET(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %54 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = and i32 %57, 6144
  %59 = ashr i32 %58, 11
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  %63 = mul nsw i32 %60, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %46, %39, %31, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @usb_endpoint_xfer_control(%struct.TYPE_7__*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.TYPE_7__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @GET_MAX_PACKET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
