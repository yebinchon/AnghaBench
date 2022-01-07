; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_usb.c_usb_release_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_usb.c_usb_release_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_device = type { %struct.usb_device*, %struct.usb_device*, %struct.usb_device*, i32 }
%struct.usb_hcd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @usb_release_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_release_dev(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.usb_device* @to_usb_device(%struct.device* %5)
  store %struct.usb_device* %6, %struct.usb_device** %3, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.usb_hcd* @bus_to_hcd(i32 %9)
  store %struct.usb_hcd* %10, %struct.usb_hcd** %4, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = call i32 @usb_destroy_configuration(%struct.usb_device* %11)
  %13 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %14 = call i32 @usb_release_bos_descriptor(%struct.usb_device* %13)
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %16 = call i32 @usb_put_hcd(%struct.usb_hcd* %15)
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 2
  %19 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %20 = call i32 @kfree(%struct.usb_device* %19)
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 1
  %23 = load %struct.usb_device*, %struct.usb_device** %22, align 8
  %24 = call i32 @kfree(%struct.usb_device* %23)
  %25 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load %struct.usb_device*, %struct.usb_device** %26, align 8
  %28 = call i32 @kfree(%struct.usb_device* %27)
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = call i32 @kfree(%struct.usb_device* %29)
  ret void
}

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i32 @usb_destroy_configuration(%struct.usb_device*) #1

declare dso_local i32 @usb_release_bos_descriptor(%struct.usb_device*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @kfree(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
