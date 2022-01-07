; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-omap.c_usb_hcd_omap_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-omap.c_usb_hcd_omap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.ohci_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@usb_dc_ck = common dso_local global i32 0, align 4
@usb_host_ck = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.platform_device*)* @usb_hcd_omap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_hcd_omap_remove(%struct.usb_hcd* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ohci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %6)
  store %struct.ohci_hcd* %7, %struct.ohci_hcd** %5, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call i32 @usb_remove_hcd(%struct.usb_hcd* %8)
  %10 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %11 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %16 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @otg_set_host(%struct.TYPE_2__* %17, i32 0)
  %19 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %20 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @put_device(i32 %23)
  br label %25

25:                                               ; preds = %14, %2
  %26 = call i64 (...) @machine_is_omap_osk()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @gpio_free(i32 9)
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iounmap(i32 %33)
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %36 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %39 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @release_mem_region(i32 %37, i32 %40)
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %43 = call i32 @usb_put_hcd(%struct.usb_hcd* %42)
  %44 = load i32, i32* @usb_dc_ck, align 4
  %45 = call i32 @clk_put(i32 %44)
  %46 = load i32, i32* @usb_host_ck, align 4
  %47 = call i32 @clk_put(i32 %46)
  ret void
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @otg_set_host(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i64 @machine_is_omap_osk(...) #1

declare dso_local i32 @gpio_free(i32) #1

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
