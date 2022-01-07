; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_rm9k_wdt.c_wdt_gpi_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_rm9k_wdt.c_wdt_gpi_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK = common dso_local global i32 0, align 4
@CPCCR = common dso_local global i32 0, align 4
@wd_ctr = common dso_local global i32 0, align 4
@wd_regs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @wdt_gpi_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_gpi_set_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @CLOCK, align 4
  %7 = mul i32 %5, %6
  %8 = and i32 %7, -16
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @lock_titan_regs()
  %10 = load i32, i32* @CPCCR, align 4
  %11 = call i32 @titan_readl(i32 %10)
  %12 = load i32, i32* @wd_ctr, align 4
  %13 = mul nsw i32 %12, 4
  %14 = shl i32 15, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CPCCR, align 4
  %19 = call i32 @titan_writel(i32 %17, i32 %18)
  %20 = call i32 (...) @wmb()
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* @wd_regs, align 8
  %23 = add nsw i64 %22, 0
  %24 = call i32 @__raw_writel(i32 %21, i64 %23)
  %25 = call i32 (...) @wmb()
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @wd_ctr, align 4
  %28 = mul nsw i32 %27, 4
  %29 = shl i32 2, %28
  %30 = or i32 %26, %29
  %31 = load i32, i32* @CPCCR, align 4
  %32 = call i32 @titan_writel(i32 %30, i32 %31)
  %33 = call i32 (...) @wmb()
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @wd_ctr, align 4
  %36 = mul nsw i32 %35, 4
  %37 = shl i32 5, %36
  %38 = or i32 %34, %37
  %39 = load i32, i32* @CPCCR, align 4
  %40 = call i32 @titan_writel(i32 %38, i32 %39)
  %41 = call i32 (...) @iob()
  %42 = call i32 (...) @unlock_titan_regs()
  ret void
}

declare dso_local i32 @lock_titan_regs(...) #1

declare dso_local i32 @titan_readl(i32) #1

declare dso_local i32 @titan_writel(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @iob(...) #1

declare dso_local i32 @unlock_titan_regs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
