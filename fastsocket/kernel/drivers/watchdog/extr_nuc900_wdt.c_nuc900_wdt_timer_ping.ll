; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_nuc900_wdt.c_nuc900_wdt_timer_ping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_nuc900_wdt.c_nuc900_wdt_timer_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@nuc900_wdt = common dso_local global %struct.TYPE_4__* null, align 8
@WDT_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Will reset the machine !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @nuc900_wdt_timer_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nuc900_wdt_timer_ping(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @jiffies, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nuc900_wdt, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @time_before(i64 %3, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = call i32 (...) @nuc900_wdt_keepalive()
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nuc900_wdt, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @WDT_TIMEOUT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @mod_timer(i32* %12, i64 %15)
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nuc900_wdt, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %17, %9
  ret void
}

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @nuc900_wdt_keepalive(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
