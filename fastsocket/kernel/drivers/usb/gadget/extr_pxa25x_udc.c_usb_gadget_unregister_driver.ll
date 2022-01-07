; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_udc = type { %struct.TYPE_5__, %struct.usb_gadget_driver*, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.usb_gadget_driver = type { %struct.TYPE_4__, i32 (%struct.TYPE_5__*)* }
%struct.TYPE_4__ = type { i32 }

@the_controller = common dso_local global %struct.pxa25x_udc* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unregistered gadget driver '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.pxa25x_udc*, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %5 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** @the_controller, align 8
  store %struct.pxa25x_udc* %5, %struct.pxa25x_udc** %4, align 8
  %6 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %7 = icmp ne %struct.pxa25x_udc* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %13 = icmp ne %struct.usb_gadget_driver* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %16 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %17 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %16, i32 0, i32 1
  %18 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %17, align 8
  %19 = icmp ne %struct.usb_gadget_driver* %15, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %22 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_5__*)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %14, %11
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %71

28:                                               ; preds = %20
  %29 = call i32 (...) @local_irq_disable()
  %30 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %31 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %33 = call i32 @pullup(%struct.pxa25x_udc* %32)
  %34 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %35 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %36 = call i32 @stop_activity(%struct.pxa25x_udc* %34, %struct.usb_gadget_driver* %35)
  %37 = call i32 (...) @local_irq_enable()
  %38 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %39 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %44 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @otg_set_peripheral(i64 %45, i32* null)
  br label %47

47:                                               ; preds = %42, %28
  %48 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %49 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %49, align 8
  %51 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %52 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %51, i32 0, i32 0
  %53 = call i32 %50(%struct.TYPE_5__* %52)
  %54 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %55 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %59 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %58, i32 0, i32 1
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %59, align 8
  %60 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %61 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i32 @device_del(%struct.TYPE_6__* %62)
  %64 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %65 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @DMSG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %4, align 8
  %70 = call i32 @dump_state(%struct.pxa25x_udc* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %47, %25, %8
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @pullup(%struct.pxa25x_udc*) #1

declare dso_local i32 @stop_activity(%struct.pxa25x_udc*, %struct.usb_gadget_driver*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @otg_set_peripheral(i64, i32*) #1

declare dso_local i32 @device_del(%struct.TYPE_6__*) #1

declare dso_local i32 @DMSG(i8*, i32) #1

declare dso_local i32 @dump_state(%struct.pxa25x_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
