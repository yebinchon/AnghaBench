; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mtx-1_wdt.c_mtx1_wdt_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mtx-1_wdt.c_mtx1_wdt_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64 }

@mtx1_wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ticks = common dso_local global i64 0, align 8
@GPIO2_DIR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MTX1_WDT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mtx1_wdt_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtx1_wdt_trigger(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 1))
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 5), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* @ticks, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* @ticks, align 8
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @GPIO2_DIR, align 4
  %12 = call i32 @au_readl(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 0), align 8
  %15 = shl i32 1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %13, %16
  %18 = load i32, i32* %3, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 0), align 8
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = or i32 %17, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @GPIO2_DIR, align 4
  %26 = call i32 @au_writel(i32 %24, i32 %25)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 4), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %10
  %30 = load i64, i64* @ticks, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* @MTX1_WDT_INTERVAL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 3), i64 %35)
  br label %39

37:                                               ; preds = %29, %10
  %38 = call i32 @complete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 2))
  br label %39

39:                                               ; preds = %37, %32
  %40 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 1))
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
