; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_sierra.c_sierra_stop_rx_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_sierra.c_sierra_stop_rx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.sierra_port_private = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @sierra_stop_rx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sierra_stop_rx_urbs(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sierra_port_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %6 = call %struct.sierra_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %5)
  store %struct.sierra_port_private* %6, %struct.sierra_port_private** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.sierra_port_private*, %struct.sierra_port_private** %4, align 8
  %10 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = load %struct.sierra_port_private*, %struct.sierra_port_private** %4, align 8
  %16 = getelementptr inbounds %struct.sierra_port_private, %struct.sierra_port_private* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_kill_urb(i32 %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %28 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_kill_urb(i32 %29)
  ret void
}

declare dso_local %struct.sierra_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
