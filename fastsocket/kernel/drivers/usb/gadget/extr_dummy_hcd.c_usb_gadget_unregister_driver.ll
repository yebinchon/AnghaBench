; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy = type { i32, i64, %struct.usb_gadget_driver*, %struct.TYPE_6__ }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_6__*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@the_controller = common dso_local global %struct.dummy* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unregister gadget driver '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.dummy*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %6 = load %struct.dummy*, %struct.dummy** @the_controller, align 8
  store %struct.dummy* %6, %struct.dummy** %4, align 8
  %7 = load %struct.dummy*, %struct.dummy** %4, align 8
  %8 = icmp ne %struct.dummy* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %76

12:                                               ; preds = %1
  %13 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %14 = icmp ne %struct.usb_gadget_driver* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %17 = load %struct.dummy*, %struct.dummy** %4, align 8
  %18 = getelementptr inbounds %struct.dummy, %struct.dummy* %17, i32 0, i32 2
  %19 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %18, align 8
  %20 = icmp ne %struct.usb_gadget_driver* %16, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %23 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_6__*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %15, %12
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %76

29:                                               ; preds = %21
  %30 = load %struct.dummy*, %struct.dummy** %4, align 8
  %31 = call i32 @udc_dev(%struct.dummy* %30)
  %32 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %33 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.dummy*, %struct.dummy** %4, align 8
  %38 = getelementptr inbounds %struct.dummy, %struct.dummy* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.dummy*, %struct.dummy** %4, align 8
  %42 = getelementptr inbounds %struct.dummy, %struct.dummy* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.dummy*, %struct.dummy** %4, align 8
  %44 = call i32 @set_link_state(%struct.dummy* %43)
  %45 = load %struct.dummy*, %struct.dummy** %4, align 8
  %46 = getelementptr inbounds %struct.dummy, %struct.dummy* %45, i32 0, i32 0
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %50 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %50, align 8
  %52 = load %struct.dummy*, %struct.dummy** %4, align 8
  %53 = getelementptr inbounds %struct.dummy, %struct.dummy* %52, i32 0, i32 3
  %54 = call i32 %51(%struct.TYPE_6__* %53)
  %55 = load %struct.dummy*, %struct.dummy** %4, align 8
  %56 = getelementptr inbounds %struct.dummy, %struct.dummy* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.dummy*, %struct.dummy** %4, align 8
  %60 = getelementptr inbounds %struct.dummy, %struct.dummy* %59, i32 0, i32 2
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %60, align 8
  %61 = load %struct.dummy*, %struct.dummy** %4, align 8
  %62 = getelementptr inbounds %struct.dummy, %struct.dummy* %61, i32 0, i32 0
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.dummy*, %struct.dummy** %4, align 8
  %66 = getelementptr inbounds %struct.dummy, %struct.dummy* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.dummy*, %struct.dummy** %4, align 8
  %68 = call i32 @set_link_state(%struct.dummy* %67)
  %69 = load %struct.dummy*, %struct.dummy** %4, align 8
  %70 = getelementptr inbounds %struct.dummy, %struct.dummy* %69, i32 0, i32 0
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.dummy*, %struct.dummy** %4, align 8
  %74 = call i32 @dummy_to_hcd(%struct.dummy* %73)
  %75 = call i32 @usb_hcd_poll_rh_status(i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %29, %26, %9
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @udc_dev(%struct.dummy*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_link_state(%struct.dummy*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_hcd_poll_rh_status(i32) #1

declare dso_local i32 @dummy_to_hcd(%struct.dummy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
