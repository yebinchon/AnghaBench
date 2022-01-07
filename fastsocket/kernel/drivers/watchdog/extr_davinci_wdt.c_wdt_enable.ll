; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_davinci_wdt.c_wdt_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_davinci_wdt.c_wdt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdt_clk = common dso_local global i32 0, align 4
@io_lock = common dso_local global i32 0, align 4
@wdt_base = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@TGCR = common dso_local global i64 0, align 8
@TIMMODE_64BIT_WDOG = common dso_local global i32 0, align 4
@TIM12RS_UNRESET = common dso_local global i32 0, align 4
@TIM34RS_UNRESET = common dso_local global i32 0, align 4
@TIM12 = common dso_local global i64 0, align 8
@TIM34 = common dso_local global i64 0, align 8
@heartbeat = common dso_local global i64 0, align 8
@PRD12 = common dso_local global i64 0, align 8
@PRD34 = common dso_local global i64 0, align 8
@ENAMODE12_PERIODIC = common dso_local global i32 0, align 4
@WDKEY_SEQ0 = common dso_local global i32 0, align 4
@WDEN = common dso_local global i32 0, align 4
@WDTCR = common dso_local global i64 0, align 8
@WDKEY_SEQ1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wdt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @wdt_clk, align 4
  %5 = call i64 @clk_get_rate(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = call i32 @spin_lock(i32* @io_lock)
  %7 = load i64, i64* @wdt_base, align 8
  %8 = load i64, i64* @TCR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @iowrite32(i32 0, i64 %9)
  %11 = load i64, i64* @wdt_base, align 8
  %12 = load i64, i64* @TGCR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @iowrite32(i32 0, i64 %13)
  %15 = load i32, i32* @TIMMODE_64BIT_WDOG, align 4
  %16 = load i32, i32* @TIM12RS_UNRESET, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @TIM34RS_UNRESET, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i64, i64* @wdt_base, align 8
  %22 = load i64, i64* @TGCR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @iowrite32(i32 %20, i64 %23)
  %25 = load i64, i64* @wdt_base, align 8
  %26 = load i64, i64* @TIM12, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @iowrite32(i32 0, i64 %27)
  %29 = load i64, i64* @wdt_base, align 8
  %30 = load i64, i64* @TIM34, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @iowrite32(i32 0, i64 %31)
  %33 = load i64, i64* @heartbeat, align 8
  %34 = load i64, i64* %3, align 8
  %35 = mul i64 %33, %34
  %36 = and i64 %35, 4294967295
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i64, i64* @wdt_base, align 8
  %40 = load i64, i64* @PRD12, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @iowrite32(i32 %38, i64 %41)
  %43 = load i64, i64* @heartbeat, align 8
  %44 = load i64, i64* %3, align 8
  %45 = mul i64 %43, %44
  %46 = lshr i64 %45, 32
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i64, i64* @wdt_base, align 8
  %50 = load i64, i64* @PRD34, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @iowrite32(i32 %48, i64 %51)
  %53 = load i32, i32* @ENAMODE12_PERIODIC, align 4
  %54 = load i64, i64* @wdt_base, align 8
  %55 = load i64, i64* @TCR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @iowrite32(i32 %53, i64 %56)
  %58 = load i32, i32* @WDKEY_SEQ0, align 4
  %59 = load i32, i32* @WDEN, align 4
  %60 = or i32 %58, %59
  %61 = load i64, i64* @wdt_base, align 8
  %62 = load i64, i64* @WDTCR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @iowrite32(i32 %60, i64 %63)
  %65 = load i32, i32* @WDKEY_SEQ1, align 4
  %66 = load i32, i32* @WDEN, align 4
  %67 = or i32 %65, %66
  %68 = load i64, i64* @wdt_base, align 8
  %69 = load i64, i64* @WDTCR, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @iowrite32(i32 %67, i64 %70)
  %72 = call i32 @spin_unlock(i32* @io_lock)
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
