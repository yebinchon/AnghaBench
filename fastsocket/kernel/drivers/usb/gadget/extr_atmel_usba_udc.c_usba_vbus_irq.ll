; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_vbus_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_vbus_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@CTRL = common dso_local global i32 0, align 4
@USBA_ENABLE_MASK = common dso_local global i32 0, align 4
@INT_ENB = common dso_local global i32 0, align 4
@USBA_END_OF_RESET = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@USBA_DISABLE_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @usba_vbus_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_vbus_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usba_udc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.usba_udc*
  store %struct.usba_udc* %8, %struct.usba_udc** %5, align 8
  %9 = call i32 @udelay(i32 10)
  %10 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %11 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %14 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %20 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @gpio_get_value(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %25 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = call i32 @toggle_bias(i32 1)
  %33 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %34 = load i32, i32* @CTRL, align 4
  %35 = load i32, i32* @USBA_ENABLE_MASK, align 4
  %36 = call i32 @usba_writel(%struct.usba_udc* %33, i32 %34, i32 %35)
  %37 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %38 = load i32, i32* @INT_ENB, align 4
  %39 = load i32, i32* @USBA_END_OF_RESET, align 4
  %40 = call i32 @usba_writel(%struct.usba_udc* %37, i32 %38, i32 %39)
  br label %75

41:                                               ; preds = %28
  %42 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %43 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %44 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %47 = call i32 @reset_all_endpoints(%struct.usba_udc* %46)
  %48 = call i32 @toggle_bias(i32 0)
  %49 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %50 = load i32, i32* @CTRL, align 4
  %51 = load i32, i32* @USBA_DISABLE_MASK, align 4
  %52 = call i32 @usba_writel(%struct.usba_udc* %49, i32 %50, i32 %51)
  %53 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %54 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %56, align 8
  %58 = icmp ne i32 (%struct.TYPE_4__*)* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %41
  %60 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %61 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %64 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %66, align 8
  %68 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %69 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %68, i32 0, i32 2
  %70 = call i32 %67(%struct.TYPE_4__* %69)
  %71 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %72 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %71, i32 0, i32 1
  %73 = call i32 @spin_lock(i32* %72)
  br label %74

74:                                               ; preds = %59, %41
  br label %75

75:                                               ; preds = %74, %31
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %78 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %18
  br label %80

80:                                               ; preds = %79, %17
  %81 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %82 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %84
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @toggle_bias(i32) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

declare dso_local i32 @reset_all_endpoints(%struct.usba_udc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
