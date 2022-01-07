; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_coh901327_wdt.c_coh901327_keepalive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_coh901327_wdt.c_coh901327_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clk = common dso_local global i32 0, align 4
@U300_WDOG_FR_FEED_RESTART_TIMER = common dso_local global i32 0, align 4
@virtbase = common dso_local global i64 0, align 8
@U300_WDOG_FR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @coh901327_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coh901327_keepalive() #0 {
  %1 = load i32, i32* @clk, align 4
  %2 = call i32 @clk_enable(i32 %1)
  %3 = load i32, i32* @U300_WDOG_FR_FEED_RESTART_TIMER, align 4
  %4 = load i64, i64* @virtbase, align 8
  %5 = load i64, i64* @U300_WDOG_FR, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @writew(i32 %3, i64 %6)
  %8 = load i32, i32* @clk, align 4
  %9 = call i32 @clk_disable(i32 %8)
  ret void
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
