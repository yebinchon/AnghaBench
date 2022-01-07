; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-lh7a404.c_usb_hcd_lh7a404_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-lh7a404.c_usb_hcd_lh7a404_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32, i32 }
%struct.platform_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hcd_lh7a404_remove(%struct.usb_hcd* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.platform_device*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %6 = call i32 @usb_remove_hcd(%struct.usb_hcd* %5)
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = call i32 @lh7a404_stop_hc(%struct.platform_device* %7)
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iounmap(i32 %11)
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %17 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @release_mem_region(i32 %15, i32 %18)
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %21 = call i32 @usb_put_hcd(%struct.usb_hcd* %20)
  ret void
}

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @lh7a404_stop_hc(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
