; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, i32, %struct.usb_gadget_driver*, %struct.TYPE_7__, i32, i32, i32 }
%struct.usb_gadget_driver = type { %struct.TYPE_6__, i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }

@the_udc = common dso_local global %struct.usba_udc zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@USBA_DISABLE_MASK = common dso_local global i32 0, align 4
@DBG_GADGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unregistered driver `%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.usba_udc*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  store %struct.usba_udc* @the_udc, %struct.usba_udc** %4, align 8
  %6 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %7 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %101

13:                                               ; preds = %1
  %14 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %15 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %16 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %15, i32 0, i32 2
  %17 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %16, align 8
  %18 = icmp ne %struct.usb_gadget_driver* %14, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %21 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %21, align 8
  %23 = icmp ne i32 (%struct.TYPE_7__*)* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %13
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %101

27:                                               ; preds = %19
  %28 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %29 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @gpio_is_valid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %35 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpio_to_irq(i32 %36)
  %38 = call i32 @disable_irq(i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %41 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %40, i32 0, i32 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %45 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %46 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %49 = call i32 @reset_all_endpoints(%struct.usba_udc* %48)
  %50 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %51 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %50, i32 0, i32 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = call i32 @toggle_bias(i32 0)
  %55 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %56 = load i32, i32* @CTRL, align 4
  %57 = load i32, i32* @USBA_DISABLE_MASK, align 4
  %58 = call i32 @usba_writel(%struct.usba_udc* %55, i32 %56, i32 %57)
  %59 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %60 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %59, i32 0, i32 2
  %61 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %60, align 8
  %62 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %61, i32 0, i32 2
  %63 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %62, align 8
  %64 = icmp ne i32 (%struct.TYPE_7__*)* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %39
  %66 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %67 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %66, i32 0, i32 2
  %68 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %67, align 8
  %69 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %68, i32 0, i32 2
  %70 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %69, align 8
  %71 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %72 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %71, i32 0, i32 3
  %73 = call i32 %70(%struct.TYPE_7__* %72)
  br label %74

74:                                               ; preds = %65, %39
  %75 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %76 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %76, align 8
  %78 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %79 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %78, i32 0, i32 3
  %80 = call i32 %77(%struct.TYPE_7__* %79)
  %81 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %82 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  %85 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %86 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %85, i32 0, i32 2
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %86, align 8
  %87 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %88 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @clk_disable(i32 %89)
  %91 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %92 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @clk_disable(i32 %93)
  %95 = load i32, i32* @DBG_GADGET, align 4
  %96 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %97 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @DBG(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %74, %24, %10
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reset_all_endpoints(%struct.usba_udc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @toggle_bias(i32) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
