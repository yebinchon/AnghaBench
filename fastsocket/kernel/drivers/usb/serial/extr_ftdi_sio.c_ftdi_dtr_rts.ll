; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_ftdi_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_ftdi_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ftdi_private = type { i32 }

@FTDI_SIO_SET_FLOW_CTRL_REQUEST = common dso_local global i32 0, align 4
@FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE = common dso_local global i32 0, align 4
@WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error from flowcontrol urb\0A\00", align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @ftdi_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftdi_dtr_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ftdi_private*, align 8
  %6 = alloca [1 x i8], align 1
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %8 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %7)
  store %struct.ftdi_private* %8, %struct.ftdi_private** %5, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %64, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %25 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %30 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_sndctrlpipe(i32 %33, i32 0)
  %35 = load i32, i32* @FTDI_SIO_SET_FLOW_CTRL_REQUEST, align 4
  %36 = load i32, i32* @FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE, align 4
  %37 = load %struct.ftdi_private*, %struct.ftdi_private** %5, align 8
  %38 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %41 = load i32, i32* @WDR_TIMEOUT, align 4
  %42 = call i64 @usb_control_msg(i32 %28, i32 %34, i32 %35, i32 %36, i32 0, i32 %39, i8* %40, i32 0, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %23
  %45 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %46 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %45, i32 0, i32 1
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %23, %20
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %53 = load i32, i32* @TIOCM_DTR, align 4
  %54 = load i32, i32* @TIOCM_RTS, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @set_mctrl(%struct.usb_serial_port* %52, i32 %55)
  br label %63

57:                                               ; preds = %48
  %58 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %59 = load i32, i32* @TIOCM_DTR, align 4
  %60 = load i32, i32* @TIOCM_RTS, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @clear_mctrl(%struct.usb_serial_port* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %66 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  ret void
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @set_mctrl(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @clear_mctrl(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
