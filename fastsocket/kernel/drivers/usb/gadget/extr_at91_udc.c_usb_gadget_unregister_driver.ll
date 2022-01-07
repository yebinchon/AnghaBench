; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_at91_udc.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_at91_udc.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_udc = type { %struct.usb_gadget_driver*, %struct.TYPE_5__, i64 }
%struct.usb_gadget_driver = type { %struct.TYPE_4__, i32 (%struct.TYPE_5__*)* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@controller = common dso_local global %struct.at91_udc zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@AT91_UDP_IDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unbound from %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.at91_udc*, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  store %struct.at91_udc* @controller, %struct.at91_udc** %4, align 8
  %5 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %6 = icmp ne %struct.usb_gadget_driver* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %9 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %10 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %9, i32 0, i32 0
  %11 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %10, align 8
  %12 = icmp ne %struct.usb_gadget_driver* %8, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %15 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %14, i32 0, i32 1
  %16 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_5__*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %7, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %13
  %22 = call i32 (...) @local_irq_disable()
  %23 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %24 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %26 = load i32, i32* @AT91_UDP_IDR, align 4
  %27 = call i32 @at91_udp_write(%struct.at91_udc* %25, i32 %26, i32 -1)
  %28 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %29 = call i32 @pullup(%struct.at91_udc* %28, i32 0)
  %30 = call i32 (...) @local_irq_enable()
  %31 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %32 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %32, align 8
  %34 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %35 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %34, i32 0, i32 1
  %36 = call i32 %33(%struct.TYPE_5__* %35)
  %37 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %38 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %42 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %43, i32* null)
  %45 = load %struct.at91_udc*, %struct.at91_udc** %4, align 8
  %46 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %45, i32 0, i32 0
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %46, align 8
  %47 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %48 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %21, %18
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @at91_udp_write(%struct.at91_udc*, i32, i32) #1

declare dso_local i32 @pullup(%struct.at91_udc*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @DBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
