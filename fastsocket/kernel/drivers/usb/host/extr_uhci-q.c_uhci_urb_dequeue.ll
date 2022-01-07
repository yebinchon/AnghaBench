; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, i64 }
%struct.uhci_hcd = type { i32, i32 }
%struct.uhci_qh = type { i64, i32 }
%struct.urb_priv = type { %struct.uhci_qh* }

@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @uhci_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uhci_hcd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.uhci_qh*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %12 = call %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd* %11)
  store %struct.uhci_hcd* %12, %struct.uhci_hcd** %7, align 8
  %13 = load %struct.uhci_hcd*, %struct.uhci_hcd** %7, align 8
  %14 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %17, %struct.urb* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %62

24:                                               ; preds = %3
  %25 = load %struct.urb*, %struct.urb** %5, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.urb_priv*
  %29 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %28, i32 0, i32 0
  %30 = load %struct.uhci_qh*, %struct.uhci_qh** %29, align 8
  store %struct.uhci_qh* %30, %struct.uhci_qh** %9, align 8
  %31 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %32 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %24
  %37 = load %struct.uhci_hcd*, %struct.uhci_hcd** %7, align 8
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = call i32 @uhci_unlink_isochronous_tds(%struct.uhci_hcd* %37, %struct.urb* %38)
  %40 = call i32 (...) @mb()
  %41 = load %struct.uhci_hcd*, %struct.uhci_hcd** %7, align 8
  %42 = call i32 @uhci_get_current_frame_number(%struct.uhci_hcd* %41)
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.uhci_hcd*, %struct.uhci_hcd** %7, align 8
  %47 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @uhci_frame_before_eq(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %36
  %52 = load %struct.uhci_hcd*, %struct.uhci_hcd** %7, align 8
  %53 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %56 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %36
  br label %58

58:                                               ; preds = %57, %24
  %59 = load %struct.uhci_hcd*, %struct.uhci_hcd** %7, align 8
  %60 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %61 = call i32 @uhci_unlink_qh(%struct.uhci_hcd* %59, %struct.uhci_qh* %60)
  br label %62

62:                                               ; preds = %58, %23
  %63 = load %struct.uhci_hcd*, %struct.uhci_hcd** %7, align 8
  %64 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %63, i32 0, i32 0
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @uhci_unlink_isochronous_tds(%struct.uhci_hcd*, %struct.urb*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @uhci_get_current_frame_number(%struct.uhci_hcd*) #1

declare dso_local i64 @uhci_frame_before_eq(i32, i32) #1

declare dso_local i32 @uhci_unlink_qh(%struct.uhci_hcd*, %struct.uhci_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
