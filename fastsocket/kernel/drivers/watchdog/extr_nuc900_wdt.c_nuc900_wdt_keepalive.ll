; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_nuc900_wdt.c_nuc900_wdt_keepalive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_nuc900_wdt.c_nuc900_wdt_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@nuc900_wdt = common dso_local global %struct.TYPE_2__* null, align 8
@REG_WTCR = common dso_local global i64 0, align 8
@WTR = common dso_local global i32 0, align 4
@WTIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nuc900_wdt_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nuc900_wdt_keepalive() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nuc900_wdt, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = call i32 @spin_lock(i32* %3)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nuc900_wdt, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REG_WTCR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @__raw_readl(i64 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @WTR, align 4
  %12 = load i32, i32* @WTIF, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %1, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nuc900_wdt, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REG_WTCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @__raw_writel(i32 %16, i64 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nuc900_wdt, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
