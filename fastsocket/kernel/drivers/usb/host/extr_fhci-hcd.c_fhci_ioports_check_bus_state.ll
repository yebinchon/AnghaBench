; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_ioports_check_bus_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_ioports_check_bus_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_hcd = type { i32* }

@GPIO_USBOE = common dso_local global i64 0, align 8
@GPIO_USBRP = common dso_local global i64 0, align 8
@GPIO_USBRN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fhci_ioports_check_bus_state(%struct.fhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fhci_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.fhci_hcd* %0, %struct.fhci_hcd** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %6 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @GPIO_USBOE, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @gpio_get_value(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %16 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @GPIO_USBRP, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @gpio_get_value(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, 2
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @GPIO_USBRN, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @gpio_get_value(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
