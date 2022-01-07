; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"ADSL device founded vid (%#X) pid (%#X) Rev (%#X): %s\0A\00", align 1
@chip_name = common dso_local global i32* null, align 8
@uea_usbatm_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @uea_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %8 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %7)
  store %struct.usb_device* %8, %struct.usb_device** %6, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %10 = call i32 @uea_enters(%struct.usb_device* %9)
  %11 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = load i32*, i32** @chip_name, align 8
  %28 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %29 = call i64 @UEA_CHIP_VERSION(%struct.usb_device_id* %28)
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @uea_info(%struct.usb_device* %11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21, i32 %26, i32 %31)
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = call i32 @usb_reset_device(%struct.usb_device* %33)
  %35 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %36 = call i64 @UEA_IS_PREFIRM(%struct.usb_device_id* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %41 = call i64 @UEA_CHIP_VERSION(%struct.usb_device_id* %40)
  %42 = call i32 @uea_load_firmware(%struct.usb_device* %39, i64 %41)
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %2
  %44 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %45 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %46 = call i32 @usbatm_usb_probe(%struct.usb_interface* %44, %struct.usb_device_id* %45, i32* @uea_usbatm_driver)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @uea_enters(%struct.usb_device*) #1

declare dso_local i32 @uea_info(%struct.usb_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.usb_device_id*) #1

declare dso_local i32 @usb_reset_device(%struct.usb_device*) #1

declare dso_local i64 @UEA_IS_PREFIRM(%struct.usb_device_id*) #1

declare dso_local i32 @uea_load_firmware(%struct.usb_device*, i64) #1

declare dso_local i32 @usbatm_usb_probe(%struct.usb_interface*, %struct.usb_device_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
