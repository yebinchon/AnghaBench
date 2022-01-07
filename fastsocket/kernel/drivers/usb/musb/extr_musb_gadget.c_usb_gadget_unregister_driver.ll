; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i64, %struct.TYPE_6__, %struct.usb_gadget_driver*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_6__*)*, i32 }
%struct.TYPE_7__ = type { i32 }

@the_gadget = common dso_local global %struct.musb* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unregistering driver %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.musb*, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.musb*, %struct.musb** @the_gadget, align 8
  store %struct.musb* %7, %struct.musb** %6, align 8
  %8 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %9 = icmp ne %struct.usb_gadget_driver* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %12 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %12, align 8
  %14 = icmp ne i32 (%struct.TYPE_6__*)* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.musb*, %struct.musb** %6, align 8
  %17 = icmp ne %struct.musb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %10, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %95

21:                                               ; preds = %15
  %22 = load %struct.musb*, %struct.musb** %6, align 8
  %23 = getelementptr inbounds %struct.musb, %struct.musb* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.musb*, %struct.musb** %6, align 8
  %27 = getelementptr inbounds %struct.musb, %struct.musb* %26, i32 0, i32 3
  %28 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %27, align 8
  %29 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %30 = icmp eq %struct.usb_gadget_driver* %28, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %21
  %32 = load %struct.musb*, %struct.musb** %6, align 8
  %33 = getelementptr inbounds %struct.musb, %struct.musb* %32, i32 0, i32 2
  %34 = call i32 @musb_gadget_vbus_draw(%struct.TYPE_6__* %33, i32 0)
  %35 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %36 = load %struct.musb*, %struct.musb** %6, align 8
  %37 = getelementptr inbounds %struct.musb, %struct.musb* %36, i32 0, i32 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.musb*, %struct.musb** %6, align 8
  %41 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %42 = call i32 @stop_activity(%struct.musb* %40, %struct.usb_gadget_driver* %41)
  %43 = load %struct.musb*, %struct.musb** %6, align 8
  %44 = getelementptr inbounds %struct.musb, %struct.musb* %43, i32 0, i32 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = call i32 @otg_set_peripheral(%struct.TYPE_7__* %45, i32* null)
  %47 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %48 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.musb*, %struct.musb** %6, align 8
  %52 = getelementptr inbounds %struct.musb, %struct.musb* %51, i32 0, i32 0
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %56 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %56, align 8
  %58 = load %struct.musb*, %struct.musb** %6, align 8
  %59 = getelementptr inbounds %struct.musb, %struct.musb* %58, i32 0, i32 2
  %60 = call i32 %57(%struct.TYPE_6__* %59)
  %61 = load %struct.musb*, %struct.musb** %6, align 8
  %62 = getelementptr inbounds %struct.musb, %struct.musb* %61, i32 0, i32 0
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.musb*, %struct.musb** %6, align 8
  %66 = getelementptr inbounds %struct.musb, %struct.musb* %65, i32 0, i32 3
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %66, align 8
  %67 = load %struct.musb*, %struct.musb** %6, align 8
  %68 = getelementptr inbounds %struct.musb, %struct.musb* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  %71 = load %struct.musb*, %struct.musb** %6, align 8
  %72 = getelementptr inbounds %struct.musb, %struct.musb* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.musb*, %struct.musb** %6, align 8
  %74 = call i32 @musb_platform_try_idle(%struct.musb* %73, i32 0)
  br label %78

75:                                               ; preds = %21
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %31
  %79 = load %struct.musb*, %struct.musb** %6, align 8
  %80 = getelementptr inbounds %struct.musb, %struct.musb* %79, i32 0, i32 0
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.musb*, %struct.musb** %6, align 8
  %84 = call i64 @is_otg_enabled(%struct.musb* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.musb*, %struct.musb** %6, align 8
  %91 = call i32 @musb_to_hcd(%struct.musb* %90)
  %92 = call i32 @usb_remove_hcd(i32 %91)
  br label %93

93:                                               ; preds = %89, %86, %78
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %18
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @musb_gadget_vbus_draw(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @stop_activity(%struct.musb*, %struct.usb_gadget_driver*) #1

declare dso_local i32 @otg_set_peripheral(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @musb_platform_try_idle(%struct.musb*, i32) #1

declare dso_local i64 @is_otg_enabled(%struct.musb*) #1

declare dso_local i32 @usb_remove_hcd(i32) #1

declare dso_local i32 @musb_to_hcd(%struct.musb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
