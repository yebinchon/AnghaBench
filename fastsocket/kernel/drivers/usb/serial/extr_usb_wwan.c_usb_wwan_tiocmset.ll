; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_wwan_intf_private* }
%struct.usb_wwan_intf_private = type { i32 (%struct.usb_serial_port.0*)* }
%struct.usb_serial_port.0 = type opaque
%struct.file = type { i32 }
%struct.usb_wwan_port_private = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_wwan_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_serial_port*, align 8
  %11 = alloca %struct.usb_wwan_port_private*, align 8
  %12 = alloca %struct.usb_wwan_intf_private*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  store %struct.usb_serial_port* %15, %struct.usb_serial_port** %10, align 8
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  %17 = call %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %16)
  store %struct.usb_wwan_port_private* %17, %struct.usb_wwan_port_private** %11, align 8
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  %19 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %21, align 8
  store %struct.usb_wwan_intf_private* %22, %struct.usb_wwan_intf_private** %12, align 8
  %23 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %12, align 8
  %24 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %23, i32 0, i32 0
  %25 = load i32 (%struct.usb_serial_port.0*)*, i32 (%struct.usb_serial_port.0*)** %24, align 8
  %26 = icmp ne i32 (%struct.usb_serial_port.0*)* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %69

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @TIOCM_RTS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %11, align 8
  %37 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @TIOCM_DTR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %11, align 8
  %45 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @TIOCM_RTS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %11, align 8
  %53 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @TIOCM_DTR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %11, align 8
  %61 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %12, align 8
  %64 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %63, i32 0, i32 0
  %65 = load i32 (%struct.usb_serial_port.0*)*, i32 (%struct.usb_serial_port.0*)** %64, align 8
  %66 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  %67 = bitcast %struct.usb_serial_port* %66 to %struct.usb_serial_port.0*
  %68 = call i32 %65(%struct.usb_serial_port.0* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %62, %27
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
