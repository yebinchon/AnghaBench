; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan.c_keyspan_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan.c_keyspan_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.file = type { i32 }
%struct.keyspan_port_private = type { i32, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i32)* @keyspan_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_serial_port*, align 8
  %10 = alloca %struct.keyspan_port_private*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %12, align 8
  store %struct.usb_serial_port* %13, %struct.usb_serial_port** %9, align 8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %9, align 8
  %15 = call %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %14)
  store %struct.keyspan_port_private* %15, %struct.keyspan_port_private** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @TIOCM_RTS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %10, align 8
  %22 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @TIOCM_DTR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %10, align 8
  %30 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @TIOCM_RTS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %10, align 8
  %38 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @TIOCM_DTR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %10, align 8
  %46 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.usb_serial_port*, %struct.usb_serial_port** %9, align 8
  %49 = call i32 @keyspan_send_setup(%struct.usb_serial_port* %48, i32 0)
  ret i32 0
}

declare dso_local %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @keyspan_send_setup(%struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
