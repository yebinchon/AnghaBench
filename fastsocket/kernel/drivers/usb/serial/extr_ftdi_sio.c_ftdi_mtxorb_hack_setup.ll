; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_ftdi_mtxorb_hack_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_ftdi_mtxorb_hack_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.usb_host_endpoint** }
%struct.usb_host_endpoint = type { i64, %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"Fixing invalid wMaxPacketSize on read pipe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @ftdi_mtxorb_hack_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_mtxorb_hack_setup(%struct.usb_serial* %0) #0 {
  %2 = alloca %struct.usb_serial*, align 8
  %3 = alloca %struct.usb_host_endpoint*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %2, align 8
  %5 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %6 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %8, align 8
  %10 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, i64 1
  %11 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  store %struct.usb_host_endpoint* %11, %struct.usb_host_endpoint** %3, align 8
  %12 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %3, align 8
  %13 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %12, i32 0, i32 1
  store %struct.usb_endpoint_descriptor* %13, %struct.usb_endpoint_descriptor** %4, align 8
  %14 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %3, align 8
  %15 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %20 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = call i64 @cpu_to_le16(i32 64)
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %26 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %28 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %23, %18, %1
  ret i32 0
}

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
