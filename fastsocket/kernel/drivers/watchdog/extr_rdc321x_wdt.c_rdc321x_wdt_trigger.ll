; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_rdc321x_wdt.c_rdc321x_wdt_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_rdc321x_wdt.c_rdc321x_wdt_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i64 }

@rdc321x_wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ticks = common dso_local global i64 0, align 8
@RDC_WDT_EN = common dso_local global i32 0, align 4
@RDC3210_CFGREG_DATA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RDC_WDT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rdc321x_wdt_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdc321x_wdt_trigger(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 4), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i64, i64* @ticks, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* @ticks, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 3), i64 %10)
  %12 = load i32, i32* @RDC_WDT_EN, align 4
  %13 = load i32, i32* @RDC3210_CFGREG_DATA, align 4
  %14 = call i32 @inl(i32 %13)
  %15 = or i32 %12, %14
  %16 = load i32, i32* @RDC3210_CFGREG_DATA, align 4
  %17 = call i32 @outl(i32 %15, i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 3), i64 %18)
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 2), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %9
  %23 = load i64, i64* @ticks, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* @RDC_WDT_INTERVAL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 1), i64 %28)
  br label %32

30:                                               ; preds = %22, %9
  %31 = call i32 @complete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 0))
  br label %32

32:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
