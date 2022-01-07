; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_adx_wdt.c_adx_wdt_get_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_adx_wdt.c_adx_wdt_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adx_wdt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adx_wdt*, i64*)* @adx_wdt_get_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adx_wdt_get_timeout(%struct.adx_wdt* %0, i64* %1) #0 {
  %3 = alloca %struct.adx_wdt*, align 8
  %4 = alloca i64*, align 8
  store %struct.adx_wdt* %0, %struct.adx_wdt** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.adx_wdt*, %struct.adx_wdt** %3, align 8
  %6 = getelementptr inbounds %struct.adx_wdt, %struct.adx_wdt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 1000
  %9 = sext i32 %8 to i64
  %10 = load i64*, i64** %4, align 8
  store i64 %9, i64* %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
