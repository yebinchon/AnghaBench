; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mct_u232.c_mct_u232_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mct_u232_private = type { i32, i32 }

@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @mct_u232_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mct_u232_dtr_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mct_u232_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %8 = call %struct.mct_u232_private* @usb_get_serial_port_data(%struct.usb_serial_port* %7)
  store %struct.mct_u232_private* %8, %struct.mct_u232_private** %6, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %2
  %21 = load %struct.mct_u232_private*, %struct.mct_u232_private** %6, align 8
  %22 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32, i32* @TIOCM_DTR, align 4
  %28 = load i32, i32* @TIOCM_RTS, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.mct_u232_private*, %struct.mct_u232_private** %6, align 8
  %31 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %43

34:                                               ; preds = %20
  %35 = load i32, i32* @TIOCM_DTR, align 4
  %36 = load i32, i32* @TIOCM_RTS, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.mct_u232_private*, %struct.mct_u232_private** %6, align 8
  %40 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %34, %26
  %44 = load %struct.mct_u232_private*, %struct.mct_u232_private** %6, align 8
  %45 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  %47 = load %struct.mct_u232_private*, %struct.mct_u232_private** %6, align 8
  %48 = getelementptr inbounds %struct.mct_u232_private, %struct.mct_u232_private* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %51 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @mct_u232_set_modem_ctrl(%struct.TYPE_2__* %52, i32 %53)
  br label %55

55:                                               ; preds = %43, %2
  %56 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %57 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  ret void
}

declare dso_local %struct.mct_u232_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mct_u232_set_modem_ctrl(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
