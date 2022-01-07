; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_dev-sysfs.c_wusb_dev_sysfs_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_dev-sysfs.c_wusb_dev_sysfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.usb_device = type { %struct.device }
%struct.device = type { i32 }
%struct.wusb_dev = type { i32 }

@wusb_dev_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot register WUSB-dev attributes: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusb_dev_sysfs_add(%struct.wusbhc* %0, %struct.usb_device* %1, %struct.wusb_dev* %2) #0 {
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.wusb_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  store %struct.wusb_dev* %2, %struct.wusb_dev** %6, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = call i32 @sysfs_create_group(i32* %11, i32* @wusb_dev_attr_group)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
