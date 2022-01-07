; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_get_usb_serial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_get_usb_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }
%struct.usb_serial_port = type { %struct.usb_serial* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_serial* (%struct.usb_serial_port*, i8*)* @mos7840_get_usb_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_serial* @mos7840_get_usb_serial(%struct.usb_serial_port* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i8*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %7 = icmp ne %struct.usb_serial_port* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @mos7840_port_paranoia_check(%struct.usb_serial_port* %9, i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 0
  %16 = load %struct.usb_serial*, %struct.usb_serial** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @mos7840_serial_paranoia_check(%struct.usb_serial* %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %8, %2
  store %struct.usb_serial* null, %struct.usb_serial** %3, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %23 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %22, i32 0, i32 0
  %24 = load %struct.usb_serial*, %struct.usb_serial** %23, align 8
  store %struct.usb_serial* %24, %struct.usb_serial** %3, align 8
  br label %25

25:                                               ; preds = %21, %20
  %26 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  ret %struct.usb_serial* %26
}

declare dso_local i64 @mos7840_port_paranoia_check(%struct.usb_serial_port*, i8*) #1

declare dso_local i64 @mos7840_serial_paranoia_check(%struct.usb_serial*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
