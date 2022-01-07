; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.ed* }
%struct.ed = type { i32* }
%struct.fhci_hcd = type { i32 }
%struct.td = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @fhci_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fhci_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.fhci_hcd*, align 8
  %6 = alloca %struct.ed*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.td*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd* %9)
  store %struct.fhci_hcd* %10, %struct.fhci_hcd** %5, align 8
  %11 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %12 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %16 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %15, i32 0, i32 0
  %17 = load %struct.ed*, %struct.ed** %16, align 8
  store %struct.ed* %17, %struct.ed** %6, align 8
  %18 = load %struct.ed*, %struct.ed** %6, align 8
  %19 = icmp ne %struct.ed* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %26, %20
  %22 = load %struct.ed*, %struct.ed** %6, align 8
  %23 = getelementptr inbounds %struct.ed, %struct.ed* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.ed*, %struct.ed** %6, align 8
  %28 = call %struct.td* @fhci_remove_td_from_ed(%struct.ed* %27)
  store %struct.td* %28, %struct.td** %8, align 8
  %29 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %30 = load %struct.td*, %struct.td** %8, align 8
  %31 = getelementptr inbounds %struct.td, %struct.td* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fhci_urb_complete_free(%struct.fhci_hcd* %29, i32 %32)
  br label %21

34:                                               ; preds = %21
  %35 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %36 = load %struct.ed*, %struct.ed** %6, align 8
  %37 = call i32 @fhci_recycle_empty_ed(%struct.fhci_hcd* %35, %struct.ed* %36)
  %38 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %39 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %38, i32 0, i32 0
  store %struct.ed* null, %struct.ed** %39, align 8
  br label %40

40:                                               ; preds = %34, %2
  %41 = load %struct.fhci_hcd*, %struct.fhci_hcd** %5, align 8
  %42 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.td* @fhci_remove_td_from_ed(%struct.ed*) #1

declare dso_local i32 @fhci_urb_complete_free(%struct.fhci_hcd*, i32) #1

declare dso_local i32 @fhci_recycle_empty_ed(%struct.fhci_hcd*, %struct.ed*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
