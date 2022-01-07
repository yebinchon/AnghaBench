; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_indicator_pulse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_indicator_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtmc_device_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBTMC_REQUEST_INDICATOR_PULSE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USBTMC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usb_control_msg returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"INDICATOR_PULSE returned %x\0A\00", align 1
@USBTMC_STATUS_SUCCESS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtmc_device_data*)* @usbtmc_ioctl_indicator_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtmc_ioctl_indicator_pulse(%struct.usbtmc_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtmc_device_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.usbtmc_device_data* %0, %struct.usbtmc_device_data** %3, align 8
  %7 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %8 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kmalloc(i32 2, i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %20 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %23 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_rcvctrlpipe(i32 %24, i32 0)
  %26 = load i32, i32* @USBTMC_REQUEST_INDICATOR_PULSE, align 4
  %27 = load i32, i32* @USB_DIR_IN, align 4
  %28 = load i32, i32* @USB_TYPE_CLASS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %34 = call i32 @usb_control_msg(i32 %21, i32 %25, i32 %26, i32 %31, i32 0, i32 0, i32* %32, i32 1, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %18
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %61

41:                                               ; preds = %18
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EPERM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %61

60:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %52, %37
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @kfree(i32* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
