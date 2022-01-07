; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_it87_wdt.c_wdt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_it87_wdt.c_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spinlock = common dso_local global i32 0, align 4
@GPIO = common dso_local global i32 0, align 4
@WDTS_USE_GP = common dso_local global i32 0, align 4
@wdt_status = common dso_local global i32 0, align 4
@WDT_GAMEPORT = common dso_local global i32 0, align 4
@WDTCTRL = common dso_local global i32 0, align 4
@WDT_CIRINT = common dso_local global i32 0, align 4
@testmode = common dso_local global i32 0, align 4
@WDT_TOV1 = common dso_local global i32 0, align 4
@WDT_KRST = common dso_local global i32 0, align 4
@WDT_PWROK = common dso_local global i32 0, align 4
@WDTCFG = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@WDTVALMSB = common dso_local global i32 0, align 4
@WDTVALLSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_start() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @spin_lock_irqsave(i32* @spinlock, i64 %2)
  %4 = call i32 (...) @superio_enter()
  %5 = load i32, i32* @GPIO, align 4
  %6 = call i32 @superio_select(i32 %5)
  %7 = load i32, i32* @WDTS_USE_GP, align 4
  %8 = call i64 @test_bit(i32 %7, i32* @wdt_status)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @WDT_GAMEPORT, align 4
  %12 = load i32, i32* @WDTCTRL, align 4
  %13 = call i32 @superio_outb(i32 %11, i32 %12)
  br label %18

14:                                               ; preds = %0
  %15 = load i32, i32* @WDT_CIRINT, align 4
  %16 = load i32, i32* @WDTCTRL, align 4
  %17 = call i32 @superio_outb(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @testmode, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @WDT_TOV1, align 4
  %23 = load i32, i32* @WDT_KRST, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @WDT_PWROK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @WDTCFG, align 4
  %28 = call i32 @superio_outb(i32 %26, i32 %27)
  br label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @WDT_TOV1, align 4
  %31 = load i32, i32* @WDTCFG, align 4
  %32 = call i32 @superio_outb(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32, i32* @timeout, align 4
  %35 = ashr i32 %34, 8
  %36 = load i32, i32* @WDTVALMSB, align 4
  %37 = call i32 @superio_outb(i32 %35, i32 %36)
  %38 = load i32, i32* @timeout, align 4
  %39 = load i32, i32* @WDTVALLSB, align 4
  %40 = call i32 @superio_outb(i32 %38, i32 %39)
  %41 = call i32 (...) @superio_exit()
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* @spinlock, i64 %42)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @superio_enter(...) #1

declare dso_local i32 @superio_select(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @superio_outb(i32, i32) #1

declare dso_local i32 @superio_exit(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
