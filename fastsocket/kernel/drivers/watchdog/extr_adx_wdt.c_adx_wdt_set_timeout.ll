; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_adx_wdt.c_adx_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_adx_wdt.c_adx_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adx_wdt = type { i32, i64, i32, i64 }

@ADX_WDT_TIMEOUT = common dso_local global i64 0, align 8
@WDT_STATE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adx_wdt*, i64)* @adx_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adx_wdt_set_timeout(%struct.adx_wdt* %0, i64 %1) #0 {
  %3 = alloca %struct.adx_wdt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.adx_wdt* %0, %struct.adx_wdt** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = mul i64 %8, 1000
  store i64 %9, i64* %5, align 8
  %10 = load %struct.adx_wdt*, %struct.adx_wdt** %3, align 8
  %11 = getelementptr inbounds %struct.adx_wdt, %struct.adx_wdt* %10, i32 0, i32 2
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.adx_wdt*, %struct.adx_wdt** %3, align 8
  %15 = getelementptr inbounds %struct.adx_wdt, %struct.adx_wdt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.adx_wdt*, %struct.adx_wdt** %3, align 8
  %18 = call i32 @adx_wdt_stop_locked(%struct.adx_wdt* %17)
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.adx_wdt*, %struct.adx_wdt** %3, align 8
  %21 = getelementptr inbounds %struct.adx_wdt, %struct.adx_wdt* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ADX_WDT_TIMEOUT, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i64 %19, i64 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @WDT_STATE_START, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.adx_wdt*, %struct.adx_wdt** %3, align 8
  %31 = call i32 @adx_wdt_start_locked(%struct.adx_wdt* %30)
  br label %32

32:                                               ; preds = %29, %2
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.adx_wdt*, %struct.adx_wdt** %3, align 8
  %35 = getelementptr inbounds %struct.adx_wdt, %struct.adx_wdt* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.adx_wdt*, %struct.adx_wdt** %3, align 8
  %37 = getelementptr inbounds %struct.adx_wdt, %struct.adx_wdt* %36, i32 0, i32 2
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @adx_wdt_stop_locked(%struct.adx_wdt*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @adx_wdt_start_locked(%struct.adx_wdt*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
