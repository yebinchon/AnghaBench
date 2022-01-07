; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_usb_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_usb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_usb = type { %struct.fhci_usb*, %struct.fhci_hcd* }
%struct.fhci_hcd = type { i32 }

@FHCI_PORT_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fhci_usb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fhci_usb_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fhci_usb*, align 8
  %4 = alloca %struct.fhci_hcd*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.fhci_usb*
  store %struct.fhci_usb* %6, %struct.fhci_usb** %3, align 8
  %7 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %8 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %7, i32 0, i32 1
  %9 = load %struct.fhci_hcd*, %struct.fhci_hcd** %8, align 8
  store %struct.fhci_hcd* %9, %struct.fhci_hcd** %4, align 8
  %10 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %11 = icmp ne %struct.fhci_usb* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.fhci_hcd*, %struct.fhci_hcd** %4, align 8
  %14 = load i32, i32* @FHCI_PORT_POWER_OFF, align 4
  %15 = call i32 @fhci_config_transceiver(%struct.fhci_hcd* %13, i32 %14)
  %16 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %17 = call i32 @fhci_ep0_free(%struct.fhci_usb* %16)
  %18 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %19 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %18, i32 0, i32 0
  %20 = load %struct.fhci_usb*, %struct.fhci_usb** %19, align 8
  %21 = call i32 @kfree(%struct.fhci_usb* %20)
  %22 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %23 = call i32 @kfree(%struct.fhci_usb* %22)
  br label %24

24:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @fhci_config_transceiver(%struct.fhci_hcd*, i32) #1

declare dso_local i32 @fhci_ep0_free(%struct.fhci_usb*) #1

declare dso_local i32 @kfree(%struct.fhci_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
