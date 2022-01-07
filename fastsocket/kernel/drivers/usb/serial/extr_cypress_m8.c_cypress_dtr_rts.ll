; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_cypress_m8.c_cypress_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_cypress_m8.c_cypress_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.cypress_private = type { i32, i32, i32 }

@CONTROL_DTR = common dso_local global i32 0, align 4
@CONTROL_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @cypress_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_dtr_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cypress_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %7 = call %struct.cypress_private* @usb_get_serial_port_data(%struct.usb_serial_port* %6)
  store %struct.cypress_private* %7, %struct.cypress_private** %5, align 8
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = call %struct.cypress_private* @usb_get_serial_port_data(%struct.usb_serial_port* %8)
  store %struct.cypress_private* %9, %struct.cypress_private** %5, align 8
  %10 = load %struct.cypress_private*, %struct.cypress_private** %5, align 8
  %11 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %10, i32 0, i32 2
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.cypress_private*, %struct.cypress_private** %5, align 8
  %17 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @CONTROL_DTR, align 4
  %20 = load i32, i32* @CONTROL_RTS, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.cypress_private*, %struct.cypress_private** %5, align 8
  %23 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load %struct.cypress_private*, %struct.cypress_private** %5, align 8
  %26 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.cypress_private*, %struct.cypress_private** %5, align 8
  %28 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %27, i32 0, i32 2
  %29 = call i32 @spin_unlock_irq(i32* %28)
  %30 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %31 = call i32 @cypress_write(i32* null, %struct.usb_serial_port* %30, i32* null, i32 0)
  ret void
}

declare dso_local %struct.cypress_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cypress_write(i32*, %struct.usb_serial_port*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
