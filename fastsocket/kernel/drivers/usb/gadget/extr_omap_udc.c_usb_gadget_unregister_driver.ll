; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.usb_gadget_driver*, %struct.TYPE_11__, i32, i64 }
%struct.usb_gadget_driver = type { %struct.TYPE_9__, i32 (%struct.TYPE_11__*)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@udc = common dso_local global %struct.TYPE_10__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unregistered driver '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %93

13:                                               ; preds = %1
  %14 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %15 = icmp ne %struct.usb_gadget_driver* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %19, align 8
  %21 = icmp ne %struct.usb_gadget_driver* %17, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %24 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %23, i32 0, i32 1
  %25 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %24, align 8
  %26 = icmp ne i32 (%struct.TYPE_11__*)* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %16, %13
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %93

30:                                               ; preds = %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @omap_udc_enable_clock(i32 1)
  br label %37

37:                                               ; preds = %35, %30
  %38 = call i64 (...) @machine_without_vbus_sense()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = call i32 @omap_vbus_session(%struct.TYPE_11__* %42, i32 0)
  br label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @otg_set_peripheral(i64 %52, i32* null)
  br label %57

54:                                               ; preds = %44
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %56 = call i32 @pullup_disable(%struct.TYPE_10__* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %63 = call i32 @udc_quiesce(%struct.TYPE_10__* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %69 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %68, i32 0, i32 1
  %70 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = call i32 %70(%struct.TYPE_11__* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %79, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** @udc, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %57
  %85 = call i32 @omap_udc_enable_clock(i32 0)
  br label %86

86:                                               ; preds = %84, %57
  %87 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %88 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %86, %27, %10
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @omap_udc_enable_clock(i32) #1

declare dso_local i64 @machine_without_vbus_sense(...) #1

declare dso_local i32 @omap_vbus_session(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @otg_set_peripheral(i64, i32*) #1

declare dso_local i32 @pullup_disable(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @udc_quiesce(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
