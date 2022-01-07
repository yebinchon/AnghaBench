; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32 }
%struct.usb_hub = type { i32, i32 }
%struct.usb_interface = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_remove_device(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.usb_hub* @hdev_to_hub(i32 %16)
  store %struct.usb_hub* %17, %struct.usb_hub** %4, align 8
  %18 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %19 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.usb_interface* @to_usb_interface(i32 %20)
  store %struct.usb_interface* %21, %struct.usb_interface** %5, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %23 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %22)
  %24 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %28 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @set_bit(i32 %26, i32 %29)
  %31 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @hub_port_logical_disconnect(%struct.usb_hub* %31, i32 %34)
  %36 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %37 = call i32 @usb_autopm_put_interface(%struct.usb_interface* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %13, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.usb_hub* @hdev_to_hub(i32) #1

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.usb_interface*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @hub_port_logical_disconnect(%struct.usb_hub*, i32) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
