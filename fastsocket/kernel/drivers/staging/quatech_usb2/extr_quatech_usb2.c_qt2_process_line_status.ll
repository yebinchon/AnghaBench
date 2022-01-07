; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/quatech_usb2/extr_quatech_usb2.c_qt2_process_line_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/quatech_usb2/extr_quatech_usb2.c_qt2_process_line_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.quatech2_port = type { i8 }

@QT2_SERIAL_LSR_OE = common dso_local global i8 0, align 1
@QT2_SERIAL_LSR_PE = common dso_local global i8 0, align 1
@QT2_SERIAL_LSR_FE = common dso_local global i8 0, align 1
@QT2_SERIAL_LSR_BI = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i8)* @qt2_process_line_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qt2_process_line_status(%struct.usb_serial_port* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.quatech2_port*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %7 = call %struct.quatech2_port* @qt2_get_port_private(%struct.usb_serial_port* %6)
  store %struct.quatech2_port* %7, %struct.quatech2_port** %5, align 8
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @QT2_SERIAL_LSR_OE, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @QT2_SERIAL_LSR_PE, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i8, i8* @QT2_SERIAL_LSR_FE, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = load i8, i8* @QT2_SERIAL_LSR_BI, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %17, %19
  %21 = and i32 %9, %20
  %22 = trunc i32 %21 to i8
  %23 = load %struct.quatech2_port*, %struct.quatech2_port** %5, align 8
  %24 = getelementptr inbounds %struct.quatech2_port, %struct.quatech2_port* %23, i32 0, i32 0
  store i8 %22, i8* %24, align 1
  ret void
}

declare dso_local %struct.quatech2_port* @qt2_get_port_private(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
