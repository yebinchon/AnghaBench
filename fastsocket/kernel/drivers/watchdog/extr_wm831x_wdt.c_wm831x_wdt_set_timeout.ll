; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32 }

@wdt_mutex = common dso_local global i32 0, align 4
@WM831X_WATCHDOG = common dso_local global i32 0, align 4
@WM831X_WDOG_TO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to unlock security key: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i32)* @wm831x_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_wdt_set_timeout(%struct.wm831x* %0, i32 %1) #0 {
  %3 = alloca %struct.wm831x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @wdt_mutex)
  %7 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %8 = call i32 @wm831x_reg_unlock(%struct.wm831x* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %13 = load i32, i32* @WM831X_WATCHDOG, align 4
  %14 = load i32, i32* @WM831X_WDOG_TO_MASK, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @wm831x_set_bits(%struct.wm831x* %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %18 = call i32 @wm831x_reg_lock(%struct.wm831x* %17)
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %21 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %11
  %26 = call i32 @mutex_unlock(i32* @wdt_mutex)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm831x_reg_unlock(%struct.wm831x*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @wm831x_reg_lock(%struct.wm831x*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
