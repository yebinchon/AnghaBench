; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_handle_device_notification.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_handle_device_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.usb_device* }
%struct.usb_device = type { i32, i64 }
%union.xhci_trb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [46 x i8] c"Device Notification event for unused slot %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Device Wake Notification event for slot ID %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %union.xhci_trb*)* @handle_device_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_device_notification(%struct.xhci_hcd* %0, %union.xhci_trb* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %union.xhci_trb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_device*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %union.xhci_trb* %1, %union.xhci_trb** %4, align 8
  %7 = load %union.xhci_trb*, %union.xhci_trb** %4, align 8
  %8 = bitcast %union.xhci_trb* %7 to %struct.TYPE_3__*
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @TRB_TO_SLOT_ID(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @xhci_warn(%struct.xhci_hcd* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %52

25:                                               ; preds = %2
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @xhci_dbg(%struct.xhci_hcd* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.usb_device*, %struct.usb_device** %35, align 8
  store %struct.usb_device* %36, %struct.usb_device** %6, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = icmp ne %struct.usb_device* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %25
  %40 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_wakeup_notification(i64 %47, i32 %50)
  br label %52

52:                                               ; preds = %21, %44, %39, %25
  ret void
}

declare dso_local i64 @TRB_TO_SLOT_ID(i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i64) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i64) #1

declare dso_local i32 @usb_wakeup_notification(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
