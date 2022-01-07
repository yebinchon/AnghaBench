; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_coh901327_wdt.c_coh901327_settimeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_coh901327_wdt.c_coh901327_settimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@margin = common dso_local global i32 0, align 4
@clk = common dso_local global i32 0, align 4
@virtbase = common dso_local global i64 0, align 8
@U300_WDOG_TR = common dso_local global i64 0, align 8
@U300_WDOG_FR_FEED_RESTART_TIMER = common dso_local global i32 0, align 4
@U300_WDOG_FR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @coh901327_settimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coh901327_settimeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 327
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %29

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* @margin, align 4
  %14 = load i32, i32* @clk, align 4
  %15 = call i32 @clk_enable(i32 %14)
  %16 = load i32, i32* @margin, align 4
  %17 = mul nsw i32 %16, 100
  %18 = load i64, i64* @virtbase, align 8
  %19 = load i64, i64* @U300_WDOG_TR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writew(i32 %17, i64 %20)
  %22 = load i32, i32* @U300_WDOG_FR_FEED_RESTART_TIMER, align 4
  %23 = load i64, i64* @virtbase, align 8
  %24 = load i64, i64* @U300_WDOG_FR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writew(i32 %22, i64 %25)
  %27 = load i32, i32* @clk, align 4
  %28 = call i32 @clk_disable(i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %12, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
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
