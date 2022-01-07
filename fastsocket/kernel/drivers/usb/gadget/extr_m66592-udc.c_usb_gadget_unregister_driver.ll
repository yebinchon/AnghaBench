; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_m66592-udc.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_m66592-udc.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m66592 = type { %struct.usb_gadget_driver*, %struct.TYPE_3__, i32 }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_3__*)* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@the_controller = common dso_local global %struct.m66592* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@M66592_VBSE = common dso_local global i32 0, align 4
@M66592_URST = common dso_local global i32 0, align 4
@M66592_INTENB0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.m66592*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %6 = load %struct.m66592*, %struct.m66592** @the_controller, align 8
  store %struct.m66592* %6, %struct.m66592** %4, align 8
  %7 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %8 = load %struct.m66592*, %struct.m66592** %4, align 8
  %9 = getelementptr inbounds %struct.m66592, %struct.m66592* %8, i32 0, i32 0
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %9, align 8
  %11 = icmp ne %struct.usb_gadget_driver* %7, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %14 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_3__*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %65

20:                                               ; preds = %12
  %21 = load %struct.m66592*, %struct.m66592** %4, align 8
  %22 = getelementptr inbounds %struct.m66592, %struct.m66592* %21, i32 0, i32 2
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.m66592*, %struct.m66592** %4, align 8
  %26 = getelementptr inbounds %struct.m66592, %struct.m66592* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.m66592*, %struct.m66592** %4, align 8
  %33 = call i32 @m66592_usb_disconnect(%struct.m66592* %32)
  br label %34

34:                                               ; preds = %31, %20
  %35 = load %struct.m66592*, %struct.m66592** %4, align 8
  %36 = getelementptr inbounds %struct.m66592, %struct.m66592* %35, i32 0, i32 2
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.m66592*, %struct.m66592** %4, align 8
  %40 = load i32, i32* @M66592_VBSE, align 4
  %41 = load i32, i32* @M66592_URST, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @M66592_INTENB0, align 4
  %44 = call i32 @m66592_bclr(%struct.m66592* %39, i32 %42, i32 %43)
  %45 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %46 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %46, align 8
  %48 = load %struct.m66592*, %struct.m66592** %4, align 8
  %49 = getelementptr inbounds %struct.m66592, %struct.m66592* %48, i32 0, i32 1
  %50 = call i32 %47(%struct.TYPE_3__* %49)
  %51 = load %struct.m66592*, %struct.m66592** %4, align 8
  %52 = getelementptr inbounds %struct.m66592, %struct.m66592* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load %struct.m66592*, %struct.m66592** %4, align 8
  %56 = call i32 @init_controller(%struct.m66592* %55)
  %57 = load %struct.m66592*, %struct.m66592** %4, align 8
  %58 = call i32 @disable_controller(%struct.m66592* %57)
  %59 = load %struct.m66592*, %struct.m66592** %4, align 8
  %60 = getelementptr inbounds %struct.m66592, %struct.m66592* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = call i32 @device_del(%struct.TYPE_4__* %61)
  %63 = load %struct.m66592*, %struct.m66592** %4, align 8
  %64 = getelementptr inbounds %struct.m66592, %struct.m66592* %63, i32 0, i32 0
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %64, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %34, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @m66592_usb_disconnect(%struct.m66592*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @m66592_bclr(%struct.m66592*, i32, i32) #1

declare dso_local i32 @init_controller(%struct.m66592*) #1

declare dso_local i32 @disable_controller(%struct.m66592*) #1

declare dso_local i32 @device_del(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
