; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_usb_gadget_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_usb_gadget_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.usb_gadget_driver*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.usb_gadget_driver = type { i64, i32 (%struct.TYPE_10__*)*, %struct.TYPE_8__, i32, i32 }

@udc_controller = common dso_local global %struct.TYPE_9__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bind to %s --> %d\00", align 1
@USB_E_DEFAULT_DEVICE = common dso_local global i32 0, align 4
@USB_STATE_ATTACHED = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s bind to driver %s \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_register_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %139

11:                                               ; preds = %1
  %12 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %13 = icmp ne %struct.usb_gadget_driver* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %16 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USB_SPEED_FULL, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %22 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @USB_SPEED_HIGH, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %41, label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %28 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_10__*)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %33 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %38 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %31, %26, %20, %11
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %139

44:                                               ; preds = %36
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 6
  %47 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %46, align 8
  %48 = icmp ne %struct.usb_gadget_driver* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %139

52:                                               ; preds = %44
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 7
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %58 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 6
  store %struct.usb_gadget_driver* %60, %struct.usb_gadget_driver** %62, align 8
  %63 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %64 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %63, i32 0, i32 2
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %68, align 8
  %69 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %70 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 7
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %81 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %80, i32 0, i32 1
  %82 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = call i32 %82(%struct.TYPE_10__* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %52
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %93 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 6
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %103, align 8
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %139

105:                                              ; preds = %52
  %106 = call i32 (...) @qe_usb_enable()
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = call i32 @out_be16(i32* %110, i32 65535)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* @USB_E_DEFAULT_DEVICE, align 4
  %117 = call i32 @out_be16(i32* %115, i32 %116)
  %118 = load i32, i32* @USB_STATE_ATTACHED, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @USB_DIR_OUT, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @udc_controller, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %135 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @dev_info(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %137)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %105, %88, %49, %41, %8
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @qe_usb_enable(...) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
