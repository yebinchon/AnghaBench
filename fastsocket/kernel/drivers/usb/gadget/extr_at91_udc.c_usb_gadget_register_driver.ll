; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_at91_udc.c_usb_gadget_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_at91_udc.c_usb_gadget_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_udc = type { i32, i32, %struct.TYPE_4__, %struct.usb_gadget_driver* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.usb_gadget_driver = type { i64, i32 (%struct.TYPE_4__*)*, %struct.TYPE_6__, i32 }

@controller = common dso_local global %struct.at91_udc zeroinitializer, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"bad parameter.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"UDC already has a gadget driver\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"driver->bind() returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bound to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_register_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.at91_udc*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  store %struct.at91_udc* @controller, %struct.at91_udc** %4, align 8
  %6 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %7 = icmp ne %struct.usb_gadget_driver* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %10 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_SPEED_FULL, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %16 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %15, i32 0, i32 1
  %17 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_4__*)* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %21 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19, %14, %8, %1
  %25 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %93

28:                                               ; preds = %19
  %29 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %30 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %29, i32 0, i32 3
  %31 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %30, align 8
  %32 = icmp ne %struct.usb_gadget_driver* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %93

37:                                               ; preds = %28
  %38 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %39 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %40 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %39, i32 0, i32 3
  store %struct.usb_gadget_driver* %38, %struct.usb_gadget_driver** %40, align 8
  %41 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %42 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %41, i32 0, i32 2
  %43 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %44 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %48 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %51 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %50, i32 0, i32 2
  %52 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %49, %struct.TYPE_6__* %51)
  %53 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %54 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %56 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %58 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %57, i32 0, i32 1
  %59 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %58, align 8
  %60 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %61 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %60, i32 0, i32 2
  %62 = call i32 %59(%struct.TYPE_4__* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %37
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %69 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %68, i32 0, i32 3
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %69, align 8
  %70 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %71 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %73, align 8
  %74 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %75 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %76, %struct.TYPE_6__* null)
  %78 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %79 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %81 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %93

83:                                               ; preds = %37
  %84 = call i32 (...) @local_irq_disable()
  %85 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %86 = call i32 @pullup(%struct.at91_udc* %85, i32 1)
  %87 = call i32 (...) @local_irq_enable()
  %88 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %89 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %83, %65, %33, %24
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @pullup(%struct.at91_udc*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
