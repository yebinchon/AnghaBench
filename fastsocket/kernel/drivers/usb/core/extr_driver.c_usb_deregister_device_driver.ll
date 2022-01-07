; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_deregister_device_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_deregister_device_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_driver = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s: deregistering device driver %s\0A\00", align 1
@usbcore_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_deregister_device_driver(%struct.usb_device_driver* %0) #0 {
  %2 = alloca %struct.usb_device_driver*, align 8
  store %struct.usb_device_driver* %0, %struct.usb_device_driver** %2, align 8
  %3 = load i32, i32* @usbcore_name, align 4
  %4 = load %struct.usb_device_driver*, %struct.usb_device_driver** %2, align 8
  %5 = getelementptr inbounds %struct.usb_device_driver, %struct.usb_device_driver* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %6)
  %8 = load %struct.usb_device_driver*, %struct.usb_device_driver** %2, align 8
  %9 = getelementptr inbounds %struct.usb_device_driver, %struct.usb_device_driver* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @driver_unregister(i32* %10)
  %12 = call i32 (...) @usbfs_update_special()
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @driver_unregister(i32*) #1

declare dso_local i32 @usbfs_update_special(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
