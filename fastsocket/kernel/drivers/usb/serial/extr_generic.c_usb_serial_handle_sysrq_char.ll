; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_generic.c_usb_serial_handle_sysrq_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_generic.c_usb_serial_handle_sysrq_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { i64, i64 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_serial_handle_sysrq_char(%struct.tty_struct* %0, %struct.usb_serial_port* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.usb_serial_port*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %9 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %14 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32, i32* @jiffies, align 4
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %23 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @time_before(i32 %21, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %30 = call i32 @handle_sysrq(i32 %28, %struct.tty_struct* %29)
  %31 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %32 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  store i32 1, i32* %4, align 4
  br label %37

33:                                               ; preds = %20, %17
  %34 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %35 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %12, %3
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @handle_sysrq(i32, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
