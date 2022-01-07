; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_usb_get_device_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_usb_get_device_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_device_descriptor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DT_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_get_device_descriptor(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device_descriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp ugt i64 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_NOIO, align 4
  %16 = call %struct.usb_device_descriptor* @kmalloc(i32 4, i32 %15)
  store %struct.usb_device_descriptor* %16, %struct.usb_device_descriptor** %6, align 8
  %17 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %6, align 8
  %18 = icmp ne %struct.usb_device_descriptor* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %14
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = load i32, i32* @USB_DT_DEVICE, align 4
  %25 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @usb_get_descriptor(%struct.usb_device* %23, i32 %24, i32 0, %struct.usb_device_descriptor* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 0
  %33 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @memcpy(i32* %32, %struct.usb_device_descriptor* %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %22
  %37 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %6, align 8
  %38 = call i32 @kfree(%struct.usb_device_descriptor* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %19, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.usb_device_descriptor* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_get_descriptor(%struct.usb_device*, i32, i32, %struct.usb_device_descriptor*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.usb_device_descriptor*, i32) #1

declare dso_local i32 @kfree(%struct.usb_device_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
