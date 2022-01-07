; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_shwdt.c_sh_wdt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_shwdt.c_sh_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shwdt_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@heartbeat = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@next_heartbeat = common dso_local global i64 0, align 8
@timer = common dso_local global i32 0, align 4
@clock_division_ratio = common dso_local global i32 0, align 4
@WTCSR_WT = common dso_local global i32 0, align 4
@WTCSR_TME = common dso_local global i32 0, align 4
@WTCSR_RSTS = common dso_local global i32 0, align 4
@RSTCSR_RSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sh_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_wdt_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @shwdt_lock, i64 %3)
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i32, i32* @heartbeat, align 4
  %7 = load i32, i32* @HZ, align 4
  %8 = mul nsw i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %5, %9
  store i64 %10, i64* @next_heartbeat, align 8
  %11 = load i32, i32* @clock_division_ratio, align 4
  %12 = call i32 @next_ping_period(i32 %11)
  %13 = call i32 @mod_timer(i32* @timer, i32 %12)
  %14 = call i32 (...) @sh_wdt_read_csr()
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @WTCSR_WT, align 4
  %16 = load i32, i32* @clock_division_ratio, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %1, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @sh_wdt_write_csr(i32 %20)
  %22 = call i32 @sh_wdt_write_cnt(i32 0)
  %23 = call i32 (...) @sh_wdt_read_csr()
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @WTCSR_TME, align 4
  %25 = load i32, i32* %1, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @WTCSR_RSTS, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %1, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @sh_wdt_write_csr(i32 %31)
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @shwdt_lock, i64 %33)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @next_ping_period(i32) #1

declare dso_local i32 @sh_wdt_read_csr(...) #1

declare dso_local i32 @sh_wdt_write_csr(i32) #1

declare dso_local i32 @sh_wdt_write_cnt(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
