; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_clear_out_halt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_clear_out_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtmc_device_data = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REQ_CLEAR_FEATURE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@USBTMC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usb_control_msg returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtmc_device_data*)* @usbtmc_ioctl_clear_out_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtmc_ioctl_clear_out_halt(%struct.usbtmc_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtmc_device_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.usbtmc_device_data* %0, %struct.usbtmc_device_data** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32* @kmalloc(i32 2, i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %15 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %18 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %19, i32 0)
  %21 = load i32, i32* @USB_REQ_CLEAR_FEATURE, align 4
  %22 = load i32, i32* @USB_DIR_OUT, align 4
  %23 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %28 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %29 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @USBTMC_TIMEOUT, align 4
  %33 = call i32 @usb_control_msg(%struct.TYPE_3__* %16, i32 %20, i32 %21, i32 %26, i32 %27, i32 %30, i32* %31, i32 0, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %13
  %37 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %38 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %44

43:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
