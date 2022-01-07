; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_security.c_wusb_dev_update_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_security.c_wusb_dev_update_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.wusb_dev = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32, %struct.device }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@USB_REQ_SET_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"auth failed: can't set address 0: %d\0A\00", align 1
@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"auth failed: can't set address %u: %d\0A\00", align 1
@USB_STATE_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusb_dev_update_address(%struct.wusbhc* %0, %struct.wusb_dev* %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wusb_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store %struct.wusb_dev* %1, %struct.wusb_dev** %4, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %12 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %11, i32 0, i32 1
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %17 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 127
  store i32 %19, i32* %8, align 4
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = call i32 @usb_sndctrlpipe(%struct.usb_device* %21, i32 0)
  %23 = load i32, i32* @USB_REQ_SET_ADDRESS, align 4
  %24 = call i32 @usb_control_msg(%struct.usb_device* %20, i32 %22, i32 %23, i32 0, i32 0, i32 0, i32* null, i32 0, i32 1000)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %74

31:                                               ; preds = %2
  %32 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %33 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %34 = call i32 @wusb_set_dev_addr(%struct.wusbhc* %32, %struct.wusb_dev* %33, i32 0)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %74

38:                                               ; preds = %31
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %41 = call i32 @usb_set_device_state(%struct.usb_device* %39, i32 %40)
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = call i32 @usb_ep0_reinit(%struct.usb_device* %42)
  %44 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %45 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %46 = call i32 @usb_sndctrlpipe(%struct.usb_device* %45, i32 0)
  %47 = load i32, i32* @USB_REQ_SET_ADDRESS, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @usb_control_msg(%struct.usb_device* %44, i32 %46, i32 %47, i32 0, i32 %48, i32 0, i32* null, i32 0, i32 1000)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  br label %73

57:                                               ; preds = %38
  %58 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %59 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @wusb_set_dev_addr(%struct.wusbhc* %58, %struct.wusb_dev* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %73

65:                                               ; preds = %57
  %66 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %67 = load i32, i32* @USB_STATE_ADDRESS, align 4
  %68 = call i32 @usb_set_device_state(%struct.usb_device* %66, i32 %67)
  %69 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %70 = call i32 @usb_ep0_reinit(%struct.usb_device* %69)
  %71 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %72 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %64, %52
  br label %74

74:                                               ; preds = %73, %37, %27
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @wusb_set_dev_addr(%struct.wusbhc*, %struct.wusb_dev*, i32) #1

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_ep0_reinit(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
