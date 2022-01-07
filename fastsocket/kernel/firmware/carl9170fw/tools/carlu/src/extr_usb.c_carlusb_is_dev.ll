; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_is_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_is_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }
%struct.libusb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carlu*, %struct.libusb_device*)* @carlusb_is_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carlusb_is_dev(%struct.carlu* %0, %struct.libusb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.carlu*, align 8
  %5 = alloca %struct.libusb_device*, align 8
  %6 = alloca %struct.libusb_device*, align 8
  store %struct.carlu* %0, %struct.carlu** %4, align 8
  store %struct.libusb_device* %1, %struct.libusb_device** %5, align 8
  %7 = load %struct.carlu*, %struct.carlu** %4, align 8
  %8 = getelementptr inbounds %struct.carlu, %struct.carlu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.carlu*, %struct.carlu** %4, align 8
  %14 = getelementptr inbounds %struct.carlu, %struct.carlu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.libusb_device* @libusb_get_device(i32 %15)
  store %struct.libusb_device* %16, %struct.libusb_device** %6, align 8
  %17 = load %struct.libusb_device*, %struct.libusb_device** %6, align 8
  %18 = call i64 @libusb_get_bus_number(%struct.libusb_device* %17)
  %19 = load %struct.libusb_device*, %struct.libusb_device** %5, align 8
  %20 = call i64 @libusb_get_bus_number(%struct.libusb_device* %19)
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load %struct.libusb_device*, %struct.libusb_device** %6, align 8
  %24 = call i64 @libusb_get_device_address(%struct.libusb_device* %23)
  %25 = load %struct.libusb_device*, %struct.libusb_device** %5, align 8
  %26 = call i64 @libusb_get_device_address(%struct.libusb_device* %25)
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %22, %12
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.libusb_device* @libusb_get_device(i32) #1

declare dso_local i64 @libusb_get_bus_number(%struct.libusb_device*) #1

declare dso_local i64 @libusb_get_device_address(%struct.libusb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
