; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_at32ap700x_wdt.c_at32_wdt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_at32ap700x_wdt.c_at32_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@wdt = common dso_local global %struct.TYPE_3__* null, align 8
@CTRL = common dso_local global i32 0, align 4
@CTRL_EN = common dso_local global i32 0, align 4
@CTRL_PSEL = common dso_local global i32 0, align 4
@CTRL_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @at32_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at32_wdt_start() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wdt, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 1
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 15, i32 14
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %1, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wdt, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wdt, align 8
  %13 = load i32, i32* @CTRL, align 4
  %14 = load i32, i32* @CTRL_EN, align 4
  %15 = call i32 @WDT_BIT(i32 %14)
  %16 = load i32, i32* @CTRL_PSEL, align 4
  %17 = load i64, i64* %1, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @WDT_BF(i32 %16, i32 %18)
  %20 = or i32 %15, %19
  %21 = load i32, i32* @CTRL_KEY, align 4
  %22 = call i32 @WDT_BF(i32 %21, i32 85)
  %23 = or i32 %20, %22
  %24 = call i32 @wdt_writel(%struct.TYPE_3__* %12, i32 %13, i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wdt, align 8
  %26 = load i32, i32* @CTRL, align 4
  %27 = load i32, i32* @CTRL_EN, align 4
  %28 = call i32 @WDT_BIT(i32 %27)
  %29 = load i32, i32* @CTRL_PSEL, align 4
  %30 = load i64, i64* %1, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @WDT_BF(i32 %29, i32 %31)
  %33 = or i32 %28, %32
  %34 = load i32, i32* @CTRL_KEY, align 4
  %35 = call i32 @WDT_BF(i32 %34, i32 170)
  %36 = or i32 %33, %35
  %37 = call i32 @wdt_writel(%struct.TYPE_3__* %25, i32 %26, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wdt, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wdt_writel(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @WDT_BIT(i32) #1

declare dso_local i32 @WDT_BF(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
