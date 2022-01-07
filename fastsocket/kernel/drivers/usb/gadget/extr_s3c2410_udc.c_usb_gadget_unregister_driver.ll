; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c2410_udc.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c2410_udc.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_udc = type { %struct.usb_gadget_driver*, %struct.TYPE_4__ }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_4__*)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@the_controller = common dso_local global %struct.s3c2410_udc* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DEBUG_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"usb_gadget_register_driver() '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.s3c2410_udc*, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %5 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** @the_controller, align 8
  store %struct.s3c2410_udc* %5, %struct.s3c2410_udc** %4, align 8
  %6 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %4, align 8
  %7 = icmp ne %struct.s3c2410_udc* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %13 = icmp ne %struct.usb_gadget_driver* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %16 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %4, align 8
  %17 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %16, i32 0, i32 0
  %18 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %17, align 8
  %19 = icmp ne %struct.usb_gadget_driver* %15, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %22 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_4__*)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %14, %11
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %49

28:                                               ; preds = %20
  %29 = load i32, i32* @DEBUG_NORMAL, align 4
  %30 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %31 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dprintk(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %36 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %36, align 8
  %38 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %4, align 8
  %39 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %38, i32 0, i32 1
  %40 = call i32 %37(%struct.TYPE_4__* %39)
  %41 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %4, align 8
  %42 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @device_del(i32* %43)
  %45 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %4, align 8
  %46 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %45, i32 0, i32 0
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %46, align 8
  %47 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %4, align 8
  %48 = call i32 @s3c2410_udc_disable(%struct.s3c2410_udc* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %28, %25, %8
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @s3c2410_udc_disable(%struct.s3c2410_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
