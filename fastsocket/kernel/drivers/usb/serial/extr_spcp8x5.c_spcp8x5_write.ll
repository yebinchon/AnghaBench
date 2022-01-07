; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { i32 }
%struct.spcp8x5_private = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*, i8*, i32)* @spcp8x5_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spcp8x5_write(%struct.tty_struct* %0, %struct.usb_serial_port* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.spcp8x5_private*, align 8
  %11 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %13 = call %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.spcp8x5_private* %13, %struct.spcp8x5_private** %10, align 8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 0
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %5, align 4
  br label %40

22:                                               ; preds = %4
  %23 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %10, align 8
  %24 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %23, i32 0, i32 0
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %10, align 8
  %28 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @put_ringbuf(i32 %29, i8* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %10, align 8
  %34 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %33, i32 0, i32 0
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %38 = call i32 @spcp8x5_send(%struct.usb_serial_port* %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %22, %20
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @put_ringbuf(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spcp8x5_send(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
