; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_berry_charge.c_magic_dual_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_berry_charge.c_magic_dual_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Sending magic pearl command\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Magic pearl command returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Calling set_configuration\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Set Configuration failed :%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @magic_dual_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magic_dual_mode(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kzalloc(i32 2, i32 %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dbg(i32* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %19 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %18, i32 0)
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @usb_control_msg(%struct.usb_device* %17, i32 %19, i32 169, i32 192, i32 1, i32 1, i8* %20, i32 2, i32 100)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i32*, i8*, ...) @dbg(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dbg(i32* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = call i32 @usb_driver_set_configuration(%struct.usb_device* %29, i32 1)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %13
  %34 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %13
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @kfree(i8* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dbg(i32*, i8*, ...) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_driver_set_configuration(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
