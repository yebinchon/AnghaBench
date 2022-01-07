; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_ixp2000_wdt.c_wdt_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_ixp2000_wdt.c_wdt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdt_lock = common dso_local global i32 0, align 4
@IXP2000_RESET0 = common dso_local global i32* null, align 8
@WDT_RESET_ENABLE = common dso_local global i32 0, align 4
@IXP2000_TWDE = common dso_local global i32* null, align 8
@WDT_ENABLE = common dso_local global i32 0, align 4
@IXP2000_T4_CLD = common dso_local global i32* null, align 8
@heartbeat = common dso_local global i32 0, align 4
@wdt_tick_rate = common dso_local global i32 0, align 4
@IXP2000_T4_CTL = common dso_local global i32* null, align 8
@TIMER_DIVIDER_256 = common dso_local global i32 0, align 4
@TIMER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wdt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_enable() #0 {
  %1 = call i32 @spin_lock(i32* @wdt_lock)
  %2 = load i32*, i32** @IXP2000_RESET0, align 8
  %3 = load i32*, i32** @IXP2000_RESET0, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @WDT_RESET_ENABLE, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @ixp2000_reg_write(i32* %2, i32 %6)
  %8 = load i32*, i32** @IXP2000_TWDE, align 8
  %9 = load i32, i32* @WDT_ENABLE, align 4
  %10 = call i32 @ixp2000_reg_write(i32* %8, i32 %9)
  %11 = load i32*, i32** @IXP2000_T4_CLD, align 8
  %12 = load i32, i32* @heartbeat, align 4
  %13 = load i32, i32* @wdt_tick_rate, align 4
  %14 = mul nsw i32 %12, %13
  %15 = call i32 @ixp2000_reg_write(i32* %11, i32 %14)
  %16 = load i32*, i32** @IXP2000_T4_CTL, align 8
  %17 = load i32, i32* @TIMER_DIVIDER_256, align 4
  %18 = load i32, i32* @TIMER_ENABLE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ixp2000_reg_write(i32* %16, i32 %19)
  %21 = call i32 @spin_unlock(i32* @wdt_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ixp2000_reg_write(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
