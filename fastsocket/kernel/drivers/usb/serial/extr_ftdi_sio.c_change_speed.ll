; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ftdi_private = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FTDI_SIO_SET_BAUDRATE_REQUEST = common dso_local global i32 0, align 4
@FTDI_SIO_SET_BAUDRATE_REQUEST_TYPE = common dso_local global i32 0, align 4
@WDR_SHORT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_speed(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ftdi_private*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %13 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.ftdi_private* %13, %struct.ftdi_private** %6, align 8
  %14 = load i32, i32* @GFP_NOIO, align 4
  %15 = call i8* @kmalloc(i32 1, i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %24 = call i32 @get_ftdi_divisor(%struct.tty_struct* %22, %struct.usb_serial_port* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = ashr i32 %26, 16
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ftdi_private*, %struct.ftdi_private** %6, align 8
  %29 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 8
  %35 = load %struct.ftdi_private*, %struct.ftdi_private** %6, align 8
  %36 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %32, %21
  %40 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %41 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %46 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usb_sndctrlpipe(i32 %49, i32 0)
  %51 = load i32, i32* @FTDI_SIO_SET_BAUDRATE_REQUEST, align 4
  %52 = load i32, i32* @FTDI_SIO_SET_BAUDRATE_REQUEST_TYPE, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @WDR_SHORT_TIMEOUT, align 4
  %57 = call i32 @usb_control_msg(i32 %44, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i8* %55, i32 0, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %39, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @get_ftdi_divisor(%struct.tty_struct*, %struct.usb_serial_port*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
