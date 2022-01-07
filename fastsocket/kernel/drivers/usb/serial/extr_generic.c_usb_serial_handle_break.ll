; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_generic.c_usb_serial_handle_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_generic.c_usb_serial_handle_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_serial_handle_break(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %4 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %5 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 %10, 5
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  store i32 1, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %18 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
