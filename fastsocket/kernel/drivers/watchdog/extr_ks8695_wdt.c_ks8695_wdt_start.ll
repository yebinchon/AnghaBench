; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_ks8695_wdt.c_ks8695_wdt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_ks8695_wdt.c_ks8695_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdt_time = common dso_local global i64 0, align 8
@KS8695_CLOCK_RATE = common dso_local global i64 0, align 8
@ks8695_lock = common dso_local global i32 0, align 4
@KS8695_TMR_VA = common dso_local global i64 0, align 8
@KS8695_TMCON = common dso_local global i64 0, align 8
@TMCON_T0EN = common dso_local global i64 0, align 8
@T0TC_WATCHDOG = common dso_local global i64 0, align 8
@KS8695_T0TC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ks8695_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_wdt_start() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @wdt_time, align 8
  %4 = load i64, i64* @KS8695_CLOCK_RATE, align 8
  %5 = mul i64 %3, %4
  store i64 %5, i64* %2, align 8
  %6 = call i32 @spin_lock(i32* @ks8695_lock)
  %7 = load i64, i64* @KS8695_TMR_VA, align 8
  %8 = load i64, i64* @KS8695_TMCON, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i64 @__raw_readl(i64 %9)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @TMCON_T0EN, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %11, %13
  %15 = load i64, i64* @KS8695_TMR_VA, align 8
  %16 = load i64, i64* @KS8695_TMCON, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @__raw_writel(i64 %14, i64 %17)
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @T0TC_WATCHDOG, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @KS8695_TMR_VA, align 8
  %23 = load i64, i64* @KS8695_T0TC, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @__raw_writel(i64 %21, i64 %24)
  %26 = load i64, i64* @KS8695_TMR_VA, align 8
  %27 = load i64, i64* @KS8695_TMCON, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @__raw_readl(i64 %28)
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @TMCON_T0EN, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @KS8695_TMR_VA, align 8
  %34 = load i64, i64* @KS8695_TMCON, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @__raw_writel(i64 %32, i64 %35)
  %37 = call i32 @spin_unlock(i32* @ks8695_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
