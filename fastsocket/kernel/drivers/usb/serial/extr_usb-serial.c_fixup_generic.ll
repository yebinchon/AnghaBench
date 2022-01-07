; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_usb-serial.c_fixup_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_usb-serial.c_fixup_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_driver = type { i32 }

@open = common dso_local global i32 0, align 4
@write = common dso_local global i32 0, align 4
@close = common dso_local global i32 0, align 4
@write_room = common dso_local global i32 0, align 4
@chars_in_buffer = common dso_local global i32 0, align 4
@read_bulk_callback = common dso_local global i32 0, align 4
@write_bulk_callback = common dso_local global i32 0, align 4
@disconnect = common dso_local global i32 0, align 4
@release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_driver*)* @fixup_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_generic(%struct.usb_serial_driver* %0) #0 {
  %2 = alloca %struct.usb_serial_driver*, align 8
  store %struct.usb_serial_driver* %0, %struct.usb_serial_driver** %2, align 8
  %3 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %4 = load i32, i32* @open, align 4
  %5 = call i32 @set_to_generic_if_null(%struct.usb_serial_driver* %3, i32 %4)
  %6 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %7 = load i32, i32* @write, align 4
  %8 = call i32 @set_to_generic_if_null(%struct.usb_serial_driver* %6, i32 %7)
  %9 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %10 = load i32, i32* @close, align 4
  %11 = call i32 @set_to_generic_if_null(%struct.usb_serial_driver* %9, i32 %10)
  %12 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %13 = load i32, i32* @write_room, align 4
  %14 = call i32 @set_to_generic_if_null(%struct.usb_serial_driver* %12, i32 %13)
  %15 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %16 = load i32, i32* @chars_in_buffer, align 4
  %17 = call i32 @set_to_generic_if_null(%struct.usb_serial_driver* %15, i32 %16)
  %18 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %19 = load i32, i32* @read_bulk_callback, align 4
  %20 = call i32 @set_to_generic_if_null(%struct.usb_serial_driver* %18, i32 %19)
  %21 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %22 = load i32, i32* @write_bulk_callback, align 4
  %23 = call i32 @set_to_generic_if_null(%struct.usb_serial_driver* %21, i32 %22)
  %24 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %25 = load i32, i32* @disconnect, align 4
  %26 = call i32 @set_to_generic_if_null(%struct.usb_serial_driver* %24, i32 %25)
  %27 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %28 = load i32, i32* @release, align 4
  %29 = call i32 @set_to_generic_if_null(%struct.usb_serial_driver* %27, i32 %28)
  ret void
}

declare dso_local i32 @set_to_generic_if_null(%struct.usb_serial_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
