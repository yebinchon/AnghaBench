; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_disable_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_disable_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.usb_hcd*, %struct.usb_host_endpoint*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hcd_disable_endpoint(%struct.usb_device* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %6 = call i32 (...) @might_sleep()
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.usb_hcd* @bus_to_hcd(i32 %9)
  store %struct.usb_hcd* %10, %struct.usb_hcd** %5, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_host_endpoint*)** %14, align 8
  %16 = icmp ne i32 (%struct.usb_hcd*, %struct.usb_host_endpoint*)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_host_endpoint*)** %21, align 8
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %24 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %25 = call i32 %22(%struct.usb_hcd* %23, %struct.usb_host_endpoint* %24)
  br label %26

26:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
