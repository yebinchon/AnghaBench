; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-sched.c_fhci_flush_all_transmissions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-sched.c_fhci_flush_all_transmissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_usb = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.td = type { %struct.packet* }
%struct.packet = type { i32 }

@USB_MODE_EN = common dso_local global i32 0, align 4
@USB_TD_TX_ER_TIMEOUT = common dso_local global i32 0, align 4
@FRAME_END_TRANSMISSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fhci_flush_all_transmissions(%struct.fhci_usb* %0) #0 {
  %2 = alloca %struct.fhci_usb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.td*, align 8
  %5 = alloca %struct.packet*, align 8
  store %struct.fhci_usb* %0, %struct.fhci_usb** %2, align 8
  %6 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %7 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @in_8(i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %14 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* @USB_MODE_EN, align 4
  %20 = call i32 @clrbits8(i32* %18, i32 %19)
  %21 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %22 = call i32 @fhci_flush_bds(%struct.fhci_usb* %21)
  br label %23

23:                                               ; preds = %29, %1
  %24 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %25 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call %struct.td* @fhci_peek_td_from_frame(%struct.TYPE_6__* %26)
  store %struct.td* %27, %struct.td** %4, align 8
  %28 = icmp ne %struct.td* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.td*, %struct.td** %4, align 8
  %31 = getelementptr inbounds %struct.td, %struct.td* %30, i32 0, i32 0
  %32 = load %struct.packet*, %struct.packet** %31, align 8
  store %struct.packet* %32, %struct.packet** %5, align 8
  %33 = load i32, i32* @USB_TD_TX_ER_TIMEOUT, align 4
  %34 = load %struct.packet*, %struct.packet** %5, align 8
  %35 = getelementptr inbounds %struct.packet, %struct.packet* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %37 = load %struct.packet*, %struct.packet** %5, align 8
  %38 = call i32 @fhci_transaction_confirm(%struct.fhci_usb* %36, %struct.packet* %37)
  br label %23

39:                                               ; preds = %23
  %40 = load i32, i32* @FRAME_END_TRANSMISSION, align 4
  %41 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %42 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %46 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = call i32 @out_be16(i32* %50, i32 65535)
  %52 = load %struct.fhci_usb*, %struct.fhci_usb** %2, align 8
  %53 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @USB_MODE_EN, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @out_8(i32* %57, i32 %60)
  ret void
}

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @clrbits8(i32*, i32) #1

declare dso_local i32 @fhci_flush_bds(%struct.fhci_usb*) #1

declare dso_local %struct.td* @fhci_peek_td_from_frame(%struct.TYPE_6__*) #1

declare dso_local i32 @fhci_transaction_confirm(%struct.fhci_usb*, %struct.packet*) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @out_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
