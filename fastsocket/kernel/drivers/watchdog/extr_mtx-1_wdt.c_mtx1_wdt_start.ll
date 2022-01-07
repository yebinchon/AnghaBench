; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mtx-1_wdt.c_mtx1_wdt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mtx-1_wdt.c_mtx1_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@mtx1_wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@jiffies = common dso_local global i64 0, align 8
@MTX1_WDT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mtx1_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtx1_wdt_start() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 1), i64 %2)
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 4), align 4
  %8 = call i32 @gpio_set_value(i32 %7, i32 1)
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @MTX1_WDT_INTERVAL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 3), i64 %11)
  br label %13

13:                                               ; preds = %6, %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 2), align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 2), align 4
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 1), i64 %16)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
