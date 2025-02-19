; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-pxa27x.c_usb_hcd_pxa27x_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-pxa27x.c_usb_hcd_pxa27x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.pxa27x_ohci = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hcd_pxa27x_remove(%struct.usb_hcd* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.pxa27x_ohci*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.pxa27x_ohci* @to_pxa27x_ohci(%struct.usb_hcd* %6)
  store %struct.pxa27x_ohci* %7, %struct.pxa27x_ohci** %5, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call i32 @usb_remove_hcd(%struct.usb_hcd* %8)
  %10 = load %struct.pxa27x_ohci*, %struct.pxa27x_ohci** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @pxa27x_stop_hc(%struct.pxa27x_ohci* %10, i32* %12)
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iounmap(i32 %16)
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %22 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @release_mem_region(i32 %20, i32 %23)
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %26 = call i32 @usb_put_hcd(%struct.usb_hcd* %25)
  %27 = load %struct.pxa27x_ohci*, %struct.pxa27x_ohci** %5, align 8
  %28 = getelementptr inbounds %struct.pxa27x_ohci, %struct.pxa27x_ohci* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_put(i32 %29)
  ret void
}

declare dso_local %struct.pxa27x_ohci* @to_pxa27x_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @pxa27x_stop_hc(%struct.pxa27x_ohci*, i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
