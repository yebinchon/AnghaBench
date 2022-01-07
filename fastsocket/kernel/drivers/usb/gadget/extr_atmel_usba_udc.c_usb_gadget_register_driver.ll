; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usb_gadget_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usb_gadget_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, i64, %struct.TYPE_6__, %struct.usb_gadget_driver*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_6__*)*, %struct.TYPE_4__ }

@the_udc = common dso_local global %struct.usba_udc zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@DBG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not bind to driver %s: error %d\0A\00", align 1
@DBG_GADGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"registered driver `%s'\0A\00", align 1
@CTRL = common dso_local global i32 0, align 4
@USBA_ENABLE_MASK = common dso_local global i32 0, align 4
@INT_ENB = common dso_local global i32 0, align 4
@USBA_END_OF_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_register_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.usba_udc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  store %struct.usba_udc* @the_udc, %struct.usba_udc** %4, align 8
  %7 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %8 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %128

14:                                               ; preds = %1
  %15 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %16 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %15, i32 0, i32 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %20 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %19, i32 0, i32 3
  %21 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %20, align 8
  %22 = icmp ne %struct.usb_gadget_driver* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %25 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %24, i32 0, i32 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %128

30:                                               ; preds = %14
  %31 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %32 = shl i32 1, %31
  %33 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %34 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %36 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %37 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %36, i32 0, i32 3
  store %struct.usb_gadget_driver* %35, %struct.usb_gadget_driver** %37, align 8
  %38 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %39 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %38, i32 0, i32 1
  %40 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %41 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %45 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %44, i32 0, i32 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %49 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_enable(i32 %50)
  %52 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %53 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @clk_enable(i32 %54)
  %56 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %57 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %57, align 8
  %59 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %60 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %59, i32 0, i32 2
  %61 = call i32 %58(%struct.TYPE_6__* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %30
  %65 = load i32, i32* @DBG_ERR, align 4
  %66 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %67 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i32, i8*, i32, ...) @DBG(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  br label %120

72:                                               ; preds = %30
  %73 = load i32, i32* @DBG_GADGET, align 4
  %74 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %75 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, i32, ...) @DBG(i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %80 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %82 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @gpio_is_valid(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %72
  %87 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %88 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @gpio_to_irq(i32 %89)
  %91 = call i32 @enable_irq(i32 %90)
  br label %92

92:                                               ; preds = %86, %72
  %93 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %94 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %93, i32 0, i32 4
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @spin_lock_irqsave(i32* %94, i64 %95)
  %97 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %98 = call i64 @vbus_is_present(%struct.usba_udc* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %92
  %101 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %102 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = call i32 @toggle_bias(i32 1)
  %107 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %108 = load i32, i32* @CTRL, align 4
  %109 = load i32, i32* @USBA_ENABLE_MASK, align 4
  %110 = call i32 @usba_writel(%struct.usba_udc* %107, i32 %108, i32 %109)
  %111 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %112 = load i32, i32* @INT_ENB, align 4
  %113 = load i32, i32* @USBA_END_OF_RESET, align 4
  %114 = call i32 @usba_writel(%struct.usba_udc* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %105, %100, %92
  %116 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %117 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %116, i32 0, i32 4
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  store i32 0, i32* %2, align 4
  br label %128

120:                                              ; preds = %64
  %121 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %122 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %121, i32 0, i32 3
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %122, align 8
  %123 = load %struct.usba_udc*, %struct.usba_udc** %4, align 8
  %124 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %126, align 8
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %120, %115, %23, %11
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, ...) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i64 @vbus_is_present(%struct.usba_udc*) #1

declare dso_local i32 @toggle_bias(i32) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
