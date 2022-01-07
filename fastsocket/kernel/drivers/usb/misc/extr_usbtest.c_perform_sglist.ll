; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_perform_sglist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbtest.c_perform_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32 }
%struct.usb_sg_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.usb_device = type { i64 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@INTERRUPT_RATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"perform_sglist failed, iterations left %d, status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, i32, i32, %struct.usb_sg_request*, %struct.scatterlist*, i32)* @perform_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_sglist(%struct.usbtest_dev* %0, i32 %1, i32 %2, %struct.usb_sg_request* %3, %struct.scatterlist* %4, i32 %5) #0 {
  %7 = alloca %struct.usbtest_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_sg_request*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.usb_sg_request* %3, %struct.usb_sg_request** %10, align 8
  store %struct.scatterlist* %4, %struct.scatterlist** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %16 = call %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev* %15)
  store %struct.usb_device* %16, %struct.usb_device** %13, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %49, %6
  %18 = load i32, i32* %14, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %8, align 4
  %23 = icmp ugt i32 %21, 0
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %55

26:                                               ; preds = %24
  %27 = load %struct.usb_sg_request*, %struct.usb_sg_request** %10, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @USB_SPEED_HIGH, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @INTERRUPT_RATE, align 4
  %37 = shl i32 %36, 3
  br label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @INTERRUPT_RATE, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i32 [ %37, %35 ], [ %39, %38 ]
  %42 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 @usb_sg_init(%struct.usb_sg_request* %27, %struct.usb_device* %28, i32 %29, i32 %41, %struct.scatterlist* %42, i32 %43, i32 0, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %55

49:                                               ; preds = %40
  %50 = load %struct.usb_sg_request*, %struct.usb_sg_request** %10, align 8
  %51 = call i32 @usb_sg_wait(%struct.usb_sg_request* %50)
  %52 = load %struct.usb_sg_request*, %struct.usb_sg_request** %10, align 8
  %53 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  br label %17

55:                                               ; preds = %48, %24
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @ERROR(%struct.usbtest_dev* %59, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %14, align 4
  ret i32 %64
}

declare dso_local %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local i32 @usb_sg_init(%struct.usb_sg_request*, %struct.usb_device*, i32, i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @usb_sg_wait(%struct.usb_sg_request*) #1

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
