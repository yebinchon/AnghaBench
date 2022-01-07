; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpcore_wdt.c_mpcore_wdt_keepalive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpcore_wdt.c_mpcore_wdt_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpcore_wdt = type { i32, i64 }

@mpcore_timer_rate = common dso_local global i32 0, align 4
@mpcore_margin = common dso_local global i32 0, align 4
@wdt_lock = common dso_local global i32 0, align 4
@TWD_WDOG_LOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpcore_wdt*)* @mpcore_wdt_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpcore_wdt_keepalive(%struct.mpcore_wdt* %0) #0 {
  %2 = alloca %struct.mpcore_wdt*, align 8
  %3 = alloca i32, align 4
  store %struct.mpcore_wdt* %0, %struct.mpcore_wdt** %2, align 8
  %4 = load i32, i32* @mpcore_timer_rate, align 4
  %5 = sdiv i32 %4, 256
  %6 = load i32, i32* @mpcore_margin, align 4
  %7 = mul nsw i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = call i32 @spin_lock(i32* @wdt_lock)
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %2, align 8
  %11 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add i32 %9, %12
  %14 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %2, align 8
  %15 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TWD_WDOG_LOAD, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %2, align 8
  %21 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 1
  %26 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %2, align 8
  %27 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = call i32 @spin_unlock(i32* @wdt_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
