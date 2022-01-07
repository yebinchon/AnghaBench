; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280 = type { %struct.TYPE_7__*, %struct.usb_gadget_driver*, %struct.TYPE_9__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_gadget_driver = type { %struct.TYPE_8__, i32 (%struct.TYPE_9__*)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@the_controller = common dso_local global %struct.net2280* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dev_attr_function = common dso_local global i32 0, align 4
@dev_attr_queues = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unregistered driver '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.net2280*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %6 = load %struct.net2280*, %struct.net2280** @the_controller, align 8
  store %struct.net2280* %6, %struct.net2280** %4, align 8
  %7 = load %struct.net2280*, %struct.net2280** %4, align 8
  %8 = icmp ne %struct.net2280* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %14 = icmp ne %struct.usb_gadget_driver* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %17 = load %struct.net2280*, %struct.net2280** %4, align 8
  %18 = getelementptr inbounds %struct.net2280, %struct.net2280* %17, i32 0, i32 1
  %19 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %18, align 8
  %20 = icmp ne %struct.usb_gadget_driver* %16, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %23 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_9__*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %15, %12
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %74

29:                                               ; preds = %21
  %30 = load %struct.net2280*, %struct.net2280** %4, align 8
  %31 = getelementptr inbounds %struct.net2280, %struct.net2280* %30, i32 0, i32 3
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.net2280*, %struct.net2280** %4, align 8
  %35 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %36 = call i32 @stop_activity(%struct.net2280* %34, %struct.usb_gadget_driver* %35)
  %37 = load %struct.net2280*, %struct.net2280** %4, align 8
  %38 = getelementptr inbounds %struct.net2280, %struct.net2280* %37, i32 0, i32 3
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.net2280*, %struct.net2280** %4, align 8
  %42 = getelementptr inbounds %struct.net2280, %struct.net2280* %41, i32 0, i32 2
  %43 = call i32 @net2280_pullup(%struct.TYPE_9__* %42, i32 0)
  %44 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %45 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %44, i32 0, i32 1
  %46 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %45, align 8
  %47 = load %struct.net2280*, %struct.net2280** %4, align 8
  %48 = getelementptr inbounds %struct.net2280, %struct.net2280* %47, i32 0, i32 2
  %49 = call i32 %46(%struct.TYPE_9__* %48)
  %50 = load %struct.net2280*, %struct.net2280** %4, align 8
  %51 = getelementptr inbounds %struct.net2280, %struct.net2280* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.net2280*, %struct.net2280** %4, align 8
  %55 = getelementptr inbounds %struct.net2280, %struct.net2280* %54, i32 0, i32 1
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %55, align 8
  %56 = load %struct.net2280*, %struct.net2280** %4, align 8
  %57 = call i32 @net2280_led_active(%struct.net2280* %56, i32 0)
  %58 = load %struct.net2280*, %struct.net2280** %4, align 8
  %59 = getelementptr inbounds %struct.net2280, %struct.net2280* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call i32 @device_remove_file(i32* %61, i32* @dev_attr_function)
  %63 = load %struct.net2280*, %struct.net2280** %4, align 8
  %64 = getelementptr inbounds %struct.net2280, %struct.net2280* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 @device_remove_file(i32* %66, i32* @dev_attr_queues)
  %68 = load %struct.net2280*, %struct.net2280** %4, align 8
  %69 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %70 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @DEBUG(%struct.net2280* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %29, %26, %9
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stop_activity(%struct.net2280*, %struct.usb_gadget_driver*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @net2280_pullup(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @net2280_led_active(%struct.net2280*, i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @DEBUG(%struct.net2280*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
