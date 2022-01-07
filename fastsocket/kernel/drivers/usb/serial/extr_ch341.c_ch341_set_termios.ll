; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ch341.c_ch341_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ktermios = type { i32 }
%struct.ch341_private = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"ch341_set_termios()\00", align 1
@CH341_BIT_DTR = common dso_local global i32 0, align 4
@CH341_BIT_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @ch341_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch341_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.ch341_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %11 = call %struct.ch341_private* @usb_get_serial_port_data(%struct.usb_serial_port* %10)
  store %struct.ch341_private* %11, %struct.ch341_private** %7, align 8
  %12 = call i32 @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = call i32 @tty_get_baud_rate(%struct.tty_struct* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %17 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %3
  %21 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %22 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %21, i32 0, i32 2
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i32, i32* @CH341_BIT_DTR, align 4
  %26 = load i32, i32* @CH341_BIT_RTS, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %29 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %33 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %32, i32 0, i32 2
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %37 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %42 = call i32 @ch341_set_baudrate(i32 %40, %struct.ch341_private* %41)
  br label %60

43:                                               ; preds = %3
  %44 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %45 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %44, i32 0, i32 2
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load i32, i32* @CH341_BIT_DTR, align 4
  %49 = load i32, i32* @CH341_BIT_RTS, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %53 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %57 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %56, i32 0, i32 2
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %43, %20
  %61 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %62 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ch341_private*, %struct.ch341_private** %7, align 8
  %67 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ch341_set_handshake(i32 %65, i32 %68)
  ret void
}

declare dso_local %struct.ch341_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ch341_set_baudrate(i32, %struct.ch341_private*) #1

declare dso_local i32 @ch341_set_handshake(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
