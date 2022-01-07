; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_sc1200wdt.c_sc1200wdt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_sc1200wdt.c_sc1200wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sc1200wdt_lock = common dso_local global i32 0, align 4
@WDCF = common dso_local global i32 0, align 4
@KBC_IRQ = common dso_local global i8 0, align 1
@MSE_IRQ = common dso_local global i8 0, align 1
@UART1_IRQ = common dso_local global i8 0, align 1
@UART2_IRQ = common dso_local global i8 0, align 1
@WDTO = common dso_local global i32 0, align 4
@timeout = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sc1200wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc1200wdt_start() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 @spin_lock(i32* @sc1200wdt_lock)
  %3 = load i32, i32* @WDCF, align 4
  %4 = call i32 @__sc1200wdt_read_data(i32 %3, i8* %1)
  %5 = load i8, i8* @KBC_IRQ, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @MSE_IRQ, align 1
  %8 = zext i8 %7 to i32
  %9 = or i32 %6, %8
  %10 = load i8, i8* @UART1_IRQ, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = load i8, i8* @UART2_IRQ, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %12, %14
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %17, %15
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %1, align 1
  %20 = load i32, i32* @WDCF, align 4
  %21 = load i8, i8* %1, align 1
  %22 = call i32 @__sc1200wdt_write_data(i32 %20, i8 zeroext %21)
  %23 = load i32, i32* @WDTO, align 4
  %24 = load i8, i8* @timeout, align 1
  %25 = call i32 @__sc1200wdt_write_data(i32 %23, i8 zeroext %24)
  %26 = call i32 @spin_unlock(i32* @sc1200wdt_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__sc1200wdt_read_data(i32, i8*) #1

declare dso_local i32 @__sc1200wdt_write_data(i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
