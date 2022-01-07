; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_lh7a40x_udc.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_lh7a40x_udc.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lh7a40x_udc = type { %struct.TYPE_5__, i32, %struct.usb_gadget_driver* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.usb_gadget_driver = type { %struct.TYPE_4__, i32 (%struct.TYPE_5__*)* }
%struct.TYPE_4__ = type { i32 }

@the_controller = common dso_local global %struct.lh7a40x_udc* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unregistered gadget driver '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.lh7a40x_udc*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %6 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** @the_controller, align 8
  store %struct.lh7a40x_udc* %6, %struct.lh7a40x_udc** %4, align 8
  %7 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %8 = icmp ne %struct.lh7a40x_udc* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %14 = icmp ne %struct.usb_gadget_driver* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %17 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %18 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %17, i32 0, i32 2
  %19 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %18, align 8
  %20 = icmp ne %struct.usb_gadget_driver* %16, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %23 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_5__*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %15, %12
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %64

29:                                               ; preds = %21
  %30 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %31 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %30, i32 0, i32 1
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %35 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %34, i32 0, i32 2
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %35, align 8
  %36 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %37 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %38 = call i32 @stop_activity(%struct.lh7a40x_udc* %36, %struct.usb_gadget_driver* %37)
  %39 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %40 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %39, i32 0, i32 1
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %44 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %43, i32 0, i32 1
  %45 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %44, align 8
  %46 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %47 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %46, i32 0, i32 0
  %48 = call i32 %45(%struct.TYPE_5__* %47)
  %49 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %50 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %54 = getelementptr inbounds %struct.lh7a40x_udc, %struct.lh7a40x_udc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @device_del(%struct.TYPE_6__* %55)
  %57 = load %struct.lh7a40x_udc*, %struct.lh7a40x_udc** %4, align 8
  %58 = call i32 @udc_disable(%struct.lh7a40x_udc* %57)
  %59 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %60 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %29, %26, %9
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stop_activity(%struct.lh7a40x_udc*, %struct.usb_gadget_driver*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @device_del(%struct.TYPE_6__*) #1

declare dso_local i32 @udc_disable(%struct.lh7a40x_udc*) #1

declare dso_local i32 @DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
