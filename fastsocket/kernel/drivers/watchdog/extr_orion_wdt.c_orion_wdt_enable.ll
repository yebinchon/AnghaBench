; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_orion_wdt.c_orion_wdt_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_orion_wdt.c_orion_wdt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdt_lock = common dso_local global i32 0, align 4
@wdt_tclk = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@WDT_VAL = common dso_local global i32 0, align 4
@BRIDGE_CAUSE = common dso_local global i32 0, align 4
@WDT_INT_REQ = common dso_local global i32 0, align 4
@TIMER_CTRL = common dso_local global i32 0, align 4
@WDT_EN = common dso_local global i32 0, align 4
@RSTOUTn_MASK = common dso_local global i32 0, align 4
@WDT_RESET_OUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @orion_wdt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orion_wdt_enable() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @spin_lock(i32* @wdt_lock)
  %3 = load i32, i32* @wdt_tclk, align 4
  %4 = load i32, i32* @heartbeat, align 4
  %5 = mul nsw i32 %3, %4
  %6 = load i32, i32* @WDT_VAL, align 4
  %7 = call i32 @writel(i32 %5, i32 %6)
  %8 = load i32, i32* @BRIDGE_CAUSE, align 4
  %9 = call i32 @readl(i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @WDT_INT_REQ, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %1, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @BRIDGE_CAUSE, align 4
  %16 = call i32 @writel(i32 %14, i32 %15)
  %17 = load i32, i32* @TIMER_CTRL, align 4
  %18 = call i32 @readl(i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @WDT_EN, align 4
  %20 = load i32, i32* %1, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @TIMER_CTRL, align 4
  %24 = call i32 @writel(i32 %22, i32 %23)
  %25 = load i32, i32* @RSTOUTn_MASK, align 4
  %26 = call i32 @readl(i32 %25)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @WDT_RESET_OUT_EN, align 4
  %28 = load i32, i32* %1, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @RSTOUTn_MASK, align 4
  %32 = call i32 @writel(i32 %30, i32 %31)
  %33 = call i32 @spin_unlock(i32* @wdt_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
