; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_ftdi_set_max_packet_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_ftdi_set_max_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { %struct.usb_interface*, %struct.usb_device* }
%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.ftdi_private = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Number of endpoints %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Endpoint %d MaxPacketSize %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Overriding wMaxPacketSize on endpoint %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Setting MaxPacketSize %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @ftdi_set_max_packet_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftdi_set_max_packet_size(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.ftdi_private*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %11 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %10)
  store %struct.ftdi_private* %11, %struct.ftdi_private** %3, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 0
  %14 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  store %struct.usb_serial* %14, %struct.usb_serial** %4, align 8
  %15 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %16 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %15, i32 0, i32 1
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %5, align 8
  %18 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %19 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %18, i32 0, i32 0
  %20 = load %struct.usb_interface*, %struct.usb_interface** %19, align 8
  store %struct.usb_interface* %20, %struct.usb_interface** %6, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %27, %struct.usb_endpoint_descriptor** %7, align 8
  store i32 0, i32* %9, align 4
  %28 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %29 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  %34 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %81, %1
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %38
  %43 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 0
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %48 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %46, i64 %57)
  %59 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %67, %struct.usb_endpoint_descriptor** %7, align 8
  %68 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %69 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %42
  %73 = call i64 @cpu_to_le16(i32 64)
  %74 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %75 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %77 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %76, i32 0, i32 0
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %72, %42
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %38

84:                                               ; preds = %38
  %85 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %86 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %89 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 0
  %92 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %93 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  ret void
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i64 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
