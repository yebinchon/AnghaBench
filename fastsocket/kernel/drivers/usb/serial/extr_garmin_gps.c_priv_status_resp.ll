; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_garmin_gps.c_priv_status_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_garmin_gps.c_priv_status_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.garmin_data = type { i32, i32, i64 }

@GARMIN_LAYERID_PRIVATE = common dso_local global i32 0, align 4
@PRIV_PKTID_INFO_RESP = common dso_local global i32 0, align 4
@VERSION_MAJOR = common dso_local global i32 0, align 4
@VERSION_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @priv_status_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @priv_status_resp(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.garmin_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %6 = call %struct.garmin_data* @usb_get_serial_port_data(%struct.usb_serial_port* %5)
  store %struct.garmin_data* %6, %struct.garmin_data** %3, align 8
  %7 = load %struct.garmin_data*, %struct.garmin_data** %3, align 8
  %8 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %4, align 8
  %11 = load i32, i32* @GARMIN_LAYERID_PRIVATE, align 4
  %12 = call i32 @__cpu_to_le32(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @PRIV_PKTID_INFO_RESP, align 4
  %16 = call i32 @__cpu_to_le32(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %16, i32* %18, align 4
  %19 = call i32 @__cpu_to_le32(i32 12)
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @VERSION_MAJOR, align 4
  %23 = shl i32 %22, 16
  %24 = load i32, i32* @VERSION_MINOR, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @__cpu_to_le32(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.garmin_data*, %struct.garmin_data** %3, align 8
  %30 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @__cpu_to_le32(i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.garmin_data*, %struct.garmin_data** %3, align 8
  %36 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__cpu_to_le32(i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @send_to_tty(%struct.usb_serial_port* %41, i32* %42, i32 24)
  ret void
}

declare dso_local %struct.garmin_data* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @send_to_tty(%struct.usb_serial_port*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
