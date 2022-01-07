; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_ftdi_sio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_ftdi_sio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.ftdi_sio_quirk = type { i32 (%struct.usb_serial*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_device_id*)* @ftdi_sio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_sio_probe(%struct.usb_serial* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.ftdi_sio_quirk*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %9 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ftdi_sio_quirk*
  store %struct.ftdi_sio_quirk* %11, %struct.ftdi_sio_quirk** %6, align 8
  %12 = load %struct.ftdi_sio_quirk*, %struct.ftdi_sio_quirk** %6, align 8
  %13 = icmp ne %struct.ftdi_sio_quirk* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.ftdi_sio_quirk*, %struct.ftdi_sio_quirk** %6, align 8
  %16 = getelementptr inbounds %struct.ftdi_sio_quirk, %struct.ftdi_sio_quirk* %15, i32 0, i32 0
  %17 = load i32 (%struct.usb_serial*)*, i32 (%struct.usb_serial*)** %16, align 8
  %18 = icmp ne i32 (%struct.usb_serial*)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.ftdi_sio_quirk*, %struct.ftdi_sio_quirk** %6, align 8
  %21 = getelementptr inbounds %struct.ftdi_sio_quirk, %struct.ftdi_sio_quirk* %20, i32 0, i32 0
  %22 = load i32 (%struct.usb_serial*)*, i32 (%struct.usb_serial*)** %21, align 8
  %23 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %24 = call i32 %22(%struct.usb_serial* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %14, %2
  %31 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %32 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %33 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @usb_set_serial_data(%struct.usb_serial* %31, i8* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @usb_set_serial_data(%struct.usb_serial*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
