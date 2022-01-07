; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_nuc900_wdt.c_nuc900_wdt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_nuc900_wdt.c_nuc900_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i64 }

@nuc900_wdt = common dso_local global %struct.TYPE_2__* null, align 8
@REG_WTCR = common dso_local global i64 0, align 8
@WTRE = common dso_local global i32 0, align 4
@WTE = common dso_local global i32 0, align 4
@WTR = common dso_local global i32 0, align 4
@WTCLK = common dso_local global i32 0, align 4
@WTIF = common dso_local global i32 0, align 4
@WTIS = common dso_local global i32 0, align 4
@WDT_HW_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@heartbeat = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@WDT_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nuc900_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nuc900_wdt_start() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nuc900_wdt, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 2
  %4 = call i32 @spin_lock(i32* %3)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nuc900_wdt, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REG_WTCR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @__raw_readl(i64 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @WTRE, align 4
  %12 = load i32, i32* @WTE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WTR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WTCLK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WTIF, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %1, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @WTIS, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %1, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* @WDT_HW_TIMEOUT, align 4
  %27 = shl i32 %26, 4
  %28 = load i32, i32* %1, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nuc900_wdt, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_WTCR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @__raw_writel(i32 %30, i64 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nuc900_wdt, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i32, i32* @heartbeat, align 4
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nuc900_wdt, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nuc900_wdt, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* @WDT_TIMEOUT, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @mod_timer(i32* %49, i64 %52)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
