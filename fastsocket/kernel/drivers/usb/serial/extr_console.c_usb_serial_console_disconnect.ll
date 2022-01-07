; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_console.c_usb_serial_console_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_console.c_usb_serial_console_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.usb_serial = type { i64* }

@usbcons_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_serial_console_disconnect(%struct.usb_serial* %0) #0 {
  %2 = alloca %struct.usb_serial*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %2, align 8
  %3 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %4 = icmp ne %struct.usb_serial* %3, null
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %7 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %12 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @usbcons_info, i32 0, i32 0), align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = call i32 (...) @usb_serial_console_exit()
  %27 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %28 = call i32 @usb_serial_put(%struct.usb_serial* %27)
  br label %29

29:                                               ; preds = %25, %17, %10, %5, %1
  ret void
}

declare dso_local i32 @usb_serial_console_exit(...) #1

declare dso_local i32 @usb_serial_put(%struct.usb_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
