; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_rm9k_wdt.c_wdt_gpi_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_rm9k_wdt.c_wdt_gpi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPCCR = common dso_local global i32 0, align 4
@wd_ctr = common dso_local global i32 0, align 4
@CPGIG1ER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wdt_gpi_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_gpi_stop() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @lock_titan_regs()
  %3 = load i32, i32* @CPCCR, align 4
  %4 = call i32 @titan_readl(i32 %3)
  %5 = load i32, i32* @wd_ctr, align 4
  %6 = mul nsw i32 %5, 4
  %7 = shl i32 15, %6
  %8 = xor i32 %7, -1
  %9 = and i32 %4, %8
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @CPCCR, align 4
  %12 = call i32 @titan_writel(i32 %10, i32 %11)
  %13 = load i32, i32* @CPGIG1ER, align 4
  %14 = call i32 @titan_readl(i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @wd_ctr, align 4
  %17 = shl i32 256, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %15, %18
  %20 = load i32, i32* @CPGIG1ER, align 4
  %21 = call i32 @titan_writel(i32 %19, i32 %20)
  %22 = call i32 (...) @iob()
  %23 = call i32 (...) @unlock_titan_regs()
  ret void
}

declare dso_local i32 @lock_titan_regs(...) #1

declare dso_local i32 @titan_readl(i32) #1

declare dso_local i32 @titan_writel(i32, i32) #1

declare dso_local i32 @iob(...) #1

declare dso_local i32 @unlock_titan_regs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
