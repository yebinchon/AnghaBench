; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_rdc321x_wdt.c_rdc321x_wdt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_rdc321x_wdt.c_rdc321x_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@rdc321x_wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RDC_CLS_TMR = common dso_local global i32 0, align 4
@RDC3210_CFGREG_ADDR = common dso_local global i32 0, align 4
@RDC_WDT_EN = common dso_local global i32 0, align 4
@RDC_WDT_CNT = common dso_local global i32 0, align 4
@RDC3210_CFGREG_DATA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RDC_WDT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rdc321x_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdc321x_wdt_start() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 0), align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 0), align 4
  %5 = load i64, i64* %1, align 8
  %6 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 3), i64 %5)
  %7 = load i32, i32* @RDC_CLS_TMR, align 4
  %8 = load i32, i32* @RDC3210_CFGREG_ADDR, align 4
  %9 = call i32 @outl(i32 %7, i32 %8)
  %10 = load i32, i32* @RDC_WDT_EN, align 4
  %11 = load i32, i32* @RDC_WDT_CNT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RDC3210_CFGREG_DATA, align 4
  %14 = call i32 @outl(i32 %12, i32 %13)
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 3), i64 %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* @RDC_WDT_INTERVAL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 2), i64 %19)
  br label %21

21:                                               ; preds = %4, %0
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 1), align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
