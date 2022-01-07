; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_gef_wdt.c_gef_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_gef_wdt.c_gef_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bus_clk = common dso_local global i32 0, align 4
@gef_wdt_count = common dso_local global i32 0, align 4
@gef_wdt_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gef_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gef_wdt_set_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @bus_clk, align 4
  %5 = udiv i32 -1, %4
  %6 = icmp ugt i32 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @bus_clk, align 4
  %9 = udiv i32 -1, %8
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @bus_clk, align 4
  %13 = mul i32 %11, %12
  %14 = lshr i32 %13, 8
  store i32 %14, i32* @gef_wdt_count, align 4
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* @gef_wdt_timeout, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
