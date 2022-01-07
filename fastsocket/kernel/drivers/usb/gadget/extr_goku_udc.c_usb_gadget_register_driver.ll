; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_goku_udc.c_usb_gadget_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_goku_udc.c_usb_gadget_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goku_udc = type { %struct.TYPE_6__, %struct.usb_gadget_driver* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.usb_gadget_driver = type { i64, i32 (%struct.TYPE_6__*)*, %struct.TYPE_5__, i32, i32 }

@the_controller = common dso_local global %struct.goku_udc* null, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bind to driver %s --> error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"registered gadget driver '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_register_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.goku_udc*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %6 = load %struct.goku_udc*, %struct.goku_udc** @the_controller, align 8
  store %struct.goku_udc* %6, %struct.goku_udc** %4, align 8
  %7 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %8 = icmp ne %struct.usb_gadget_driver* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %11 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_SPEED_FULL, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %30, label %15

15:                                               ; preds = %9
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %17 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %16, i32 0, i32 1
  %18 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_6__*)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %22 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %27 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %20, %15, %9, %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %92

33:                                               ; preds = %25
  %34 = load %struct.goku_udc*, %struct.goku_udc** %4, align 8
  %35 = icmp ne %struct.goku_udc* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %92

39:                                               ; preds = %33
  %40 = load %struct.goku_udc*, %struct.goku_udc** %4, align 8
  %41 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %40, i32 0, i32 1
  %42 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %41, align 8
  %43 = icmp ne %struct.usb_gadget_driver* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %92

47:                                               ; preds = %39
  %48 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %49 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %52 = load %struct.goku_udc*, %struct.goku_udc** %4, align 8
  %53 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %52, i32 0, i32 1
  store %struct.usb_gadget_driver* %51, %struct.usb_gadget_driver** %53, align 8
  %54 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %55 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %54, i32 0, i32 2
  %56 = load %struct.goku_udc*, %struct.goku_udc** %4, align 8
  %57 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %59, align 8
  %60 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %61 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %61, align 8
  %63 = load %struct.goku_udc*, %struct.goku_udc** %4, align 8
  %64 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %63, i32 0, i32 0
  %65 = call i32 %62(%struct.TYPE_6__* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %47
  %69 = load %struct.goku_udc*, %struct.goku_udc** %4, align 8
  %70 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %71 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (%struct.goku_udc*, i8*, i32, ...) @DBG(%struct.goku_udc* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %struct.goku_udc*, %struct.goku_udc** %4, align 8
  %77 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %76, i32 0, i32 1
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %77, align 8
  %78 = load %struct.goku_udc*, %struct.goku_udc** %4, align 8
  %79 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %81, align 8
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %92

83:                                               ; preds = %47
  %84 = load %struct.goku_udc*, %struct.goku_udc** %4, align 8
  %85 = call i32 @udc_enable(%struct.goku_udc* %84)
  %86 = load %struct.goku_udc*, %struct.goku_udc** %4, align 8
  %87 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %88 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (%struct.goku_udc*, i8*, i32, ...) @DBG(%struct.goku_udc* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %83, %68, %44, %36, %30
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @DBG(%struct.goku_udc*, i8*, i32, ...) #1

declare dso_local i32 @udc_enable(%struct.goku_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
