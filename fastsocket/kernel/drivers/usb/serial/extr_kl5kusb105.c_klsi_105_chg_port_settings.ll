; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_kl5kusb105.c_klsi_105_chg_port_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_kl5kusb105.c_klsi_105_chg_port_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.klsi_105_port_settings = type { i32, i32, i32, i32, i32 }

@KL5KUSB105A_SIO_SET_DATA = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@KLSI_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Change port settings failed (error = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%d byte block, baudrate %x, databits %d, u1 %d, u2 %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, %struct.klsi_105_port_settings*)* @klsi_105_chg_port_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klsi_105_chg_port_settings(%struct.usb_serial_port* %0, %struct.klsi_105_port_settings* %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.klsi_105_port_settings*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store %struct.klsi_105_port_settings* %1, %struct.klsi_105_port_settings** %4, align 8
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %7 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %12 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = call i32 @usb_sndctrlpipe(%struct.TYPE_5__* %15, i32 0)
  %17 = load i32, i32* @KL5KUSB105A_SIO_SET_DATA, align 4
  %18 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %19 = load i32, i32* @USB_DIR_OUT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.klsi_105_port_settings*, %struct.klsi_105_port_settings** %4, align 8
  %24 = load i32, i32* @KLSI_TIMEOUT, align 4
  %25 = call i32 @usb_control_msg(%struct.TYPE_5__* %10, i32 %16, i32 %17, i32 %22, i32 0, i32 0, %struct.klsi_105_port_settings* %23, i32 20, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %30 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %29, i32 0, i32 1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %2
  %34 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %35 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.klsi_105_port_settings*, %struct.klsi_105_port_settings** %4, align 8
  %41 = getelementptr inbounds %struct.klsi_105_port_settings, %struct.klsi_105_port_settings* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.klsi_105_port_settings*, %struct.klsi_105_port_settings** %4, align 8
  %44 = getelementptr inbounds %struct.klsi_105_port_settings, %struct.klsi_105_port_settings* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.klsi_105_port_settings*, %struct.klsi_105_port_settings** %4, align 8
  %47 = getelementptr inbounds %struct.klsi_105_port_settings, %struct.klsi_105_port_settings* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.klsi_105_port_settings*, %struct.klsi_105_port_settings** %4, align 8
  %50 = getelementptr inbounds %struct.klsi_105_port_settings, %struct.klsi_105_port_settings* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.klsi_105_port_settings*, %struct.klsi_105_port_settings** %4, align 8
  %53 = getelementptr inbounds %struct.klsi_105_port_settings, %struct.klsi_105_port_settings* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @usb_control_msg(%struct.TYPE_5__*, i32, i32, i32, i32, i32, %struct.klsi_105_port_settings*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
