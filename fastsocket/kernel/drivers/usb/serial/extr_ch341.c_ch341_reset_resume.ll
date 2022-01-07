; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_reset_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_reset_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_serial = type { i32* }
%struct.ch341_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @ch341_reset_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch341_reset_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.ch341_private*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %6)
  store %struct.usb_device* %7, %struct.usb_device** %3, align 8
  store %struct.usb_serial* null, %struct.usb_serial** %4, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.usb_serial* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.usb_serial* %9, %struct.usb_serial** %4, align 8
  %10 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %11 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ch341_private* @usb_get_serial_port_data(i32 %14)
  store %struct.ch341_private* %15, %struct.ch341_private** %5, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %17 = load %struct.ch341_private*, %struct.ch341_private** %5, align 8
  %18 = call i32 @ch341_configure(%struct.usb_device* %16, %struct.ch341_private* %17)
  %19 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %20 = call i32 @usb_serial_resume(%struct.usb_interface* %19)
  ret i32 0
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_serial* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.ch341_private* @usb_get_serial_port_data(i32) #1

declare dso_local i32 @ch341_configure(%struct.usb_device*, %struct.ch341_private*) #1

declare dso_local i32 @usb_serial_resume(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
