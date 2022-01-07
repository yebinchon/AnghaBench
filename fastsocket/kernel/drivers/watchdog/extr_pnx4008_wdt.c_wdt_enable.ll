; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_pnx4008_wdt.c_wdt_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_pnx4008_wdt.c_wdt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_lock = common dso_local global i32 0, align 4
@wdt_clk = common dso_local global i64 0, align 8
@RESET_COUNT = common dso_local global i32 0, align 4
@wdt_base = common dso_local global i32 0, align 4
@M_RES2 = common dso_local global i32 0, align 4
@STOP_COUNT0 = common dso_local global i32 0, align 4
@RESET_COUNT0 = common dso_local global i32 0, align 4
@MATCH_OUTPUT_HIGH = common dso_local global i32 0, align 4
@MATCH_INT = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@WDOG_COUNTER_RATE = common dso_local global i32 0, align 4
@COUNT_ENAB = common dso_local global i32 0, align 4
@DEBUG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wdt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_enable() #0 {
  %1 = call i32 @spin_lock(i32* @io_lock)
  %2 = load i64, i64* @wdt_clk, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @wdt_clk, align 8
  %6 = call i32 @clk_set_rate(i64 %5, i32 1)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @RESET_COUNT, align 4
  %9 = load i32, i32* @wdt_base, align 4
  %10 = call i32 @WDTIM_CTRL(i32 %9)
  %11 = call i32 @__raw_writel(i32 %8, i32 %10)
  br label %12

12:                                               ; preds = %17, %7
  %13 = load i32, i32* @wdt_base, align 4
  %14 = call i32 @WDTIM_COUNTER(i32 %13)
  %15 = call i64 @__raw_readl(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 (...) @cpu_relax()
  br label %12

19:                                               ; preds = %12
  %20 = load i32, i32* @M_RES2, align 4
  %21 = load i32, i32* @STOP_COUNT0, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RESET_COUNT0, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @wdt_base, align 4
  %26 = call i32 @WDTIM_MCTRL(i32 %25)
  %27 = call i32 @__raw_writel(i32 %24, i32 %26)
  %28 = load i32, i32* @MATCH_OUTPUT_HIGH, align 4
  %29 = load i32, i32* @wdt_base, align 4
  %30 = call i32 @WDTIM_EMR(i32 %29)
  %31 = call i32 @__raw_writel(i32 %28, i32 %30)
  %32 = load i32, i32* @MATCH_INT, align 4
  %33 = load i32, i32* @wdt_base, align 4
  %34 = call i32 @WDTIM_INT(i32 %33)
  %35 = call i32 @__raw_writel(i32 %32, i32 %34)
  %36 = load i32, i32* @wdt_base, align 4
  %37 = call i32 @WDTIM_PULSE(i32 %36)
  %38 = call i32 @__raw_writel(i32 65535, i32 %37)
  %39 = load i32, i32* @heartbeat, align 4
  %40 = load i32, i32* @WDOG_COUNTER_RATE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* @wdt_base, align 4
  %43 = call i32 @WDTIM_MATCH0(i32 %42)
  %44 = call i32 @__raw_writel(i32 %41, i32 %43)
  %45 = load i32, i32* @COUNT_ENAB, align 4
  %46 = load i32, i32* @DEBUG_EN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @wdt_base, align 4
  %49 = call i32 @WDTIM_CTRL(i32 %48)
  %50 = call i32 @__raw_writel(i32 %47, i32 %49)
  %51 = call i32 @spin_unlock(i32* @io_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clk_set_rate(i64, i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @WDTIM_CTRL(i32) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @WDTIM_COUNTER(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @WDTIM_MCTRL(i32) #1

declare dso_local i32 @WDTIM_EMR(i32) #1

declare dso_local i32 @WDTIM_INT(i32) #1

declare dso_local i32 @WDTIM_PULSE(i32) #1

declare dso_local i32 @WDTIM_MATCH0(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
