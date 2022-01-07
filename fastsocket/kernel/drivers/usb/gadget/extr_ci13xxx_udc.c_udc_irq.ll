; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_udc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci13xxx = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32 }

@_udc = common dso_local global %struct.ci13xxx* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"ENODEV\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@isr_statistics = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ISR_MASK = common dso_local global i32 0, align 4
@USBi_URI = common dso_local global i32 0, align 4
@USBi_PCI = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@USBi_UEI = common dso_local global i32 0, align 4
@USBi_UI = common dso_local global i32 0, align 4
@USBi_SLI = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ci13xxx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.ci13xxx*, %struct.ci13xxx** @_udc, align 8
  store %struct.ci13xxx* %5, %struct.ci13xxx** %2, align 8
  %6 = call i32 (...) @trace()
  %7 = load %struct.ci13xxx*, %struct.ci13xxx** %2, align 8
  %8 = icmp eq %struct.ci13xxx* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 @err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %11, i32* %1, align 4
  br label %98

12:                                               ; preds = %0
  %13 = load %struct.ci13xxx*, %struct.ci13xxx** %2, align 8
  %14 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @spin_lock(i32 %15)
  %17 = call i32 (...) @hw_test_and_clear_intr_active()
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %88

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 6, i32 0), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 6, i32 2), align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 6, i32 2), align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* @ISR_MASK, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 6, i32 2), align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 6, i32 2), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 6, i32 1), align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 6, i32 1), align 8
  %32 = load i32, i32* @USBi_URI, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 5), align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 5), align 4
  %39 = load %struct.ci13xxx*, %struct.ci13xxx** %2, align 8
  %40 = call i32 @isr_reset_handler(%struct.ci13xxx* %39)
  br label %41

41:                                               ; preds = %36, %20
  %42 = load i32, i32* @USBi_PCI, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 4), align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 4), align 8
  %49 = call i64 (...) @hw_port_is_high_speed()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @USB_SPEED_HIGH, align 4
  br label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @USB_SPEED_FULL, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.ci13xxx*, %struct.ci13xxx** %2, align 8
  %58 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %41
  %61 = load i32, i32* @USBi_UEI, align 4
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 3), align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 3), align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* @USBi_UI, align 4
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 2), align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 2), align 8
  %76 = load %struct.ci13xxx*, %struct.ci13xxx** %2, align 8
  %77 = call i32 @isr_tr_complete_handler(%struct.ci13xxx* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* @USBi_SLI, align 4
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 1), align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 1), align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %87, i32* %3, align 4
  br label %92

88:                                               ; preds = %12
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 0), align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isr_statistics, i32 0, i32 0), align 8
  %91 = load i32, i32* @IRQ_NONE, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %86
  %93 = load %struct.ci13xxx*, %struct.ci13xxx** %2, align 8
  %94 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @spin_unlock(i32 %95)
  %97 = load i32, i32* %3, align 4
  store i32 %97, i32* %1, align 4
  br label %98

98:                                               ; preds = %92, %9
  %99 = load i32, i32* %1, align 4
  ret i32 %99
}

declare dso_local i32 @trace(...) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @hw_test_and_clear_intr_active(...) #1

declare dso_local i32 @isr_reset_handler(%struct.ci13xxx*) #1

declare dso_local i64 @hw_port_is_high_speed(...) #1

declare dso_local i32 @isr_tr_complete_handler(%struct.ci13xxx*) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
