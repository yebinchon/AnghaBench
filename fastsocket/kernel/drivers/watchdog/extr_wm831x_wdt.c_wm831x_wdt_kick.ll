; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_kick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32 }

@wdt_mutex = common dso_local global i32 0, align 4
@update_gpio = common dso_local global i64 0, align 8
@update_state = common dso_local global i32 0, align 4
@WM831X_WATCHDOG = common dso_local global i32 0, align 4
@WM831X_WDOG_RST_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Hardware watchdog update unsupported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM831X_WDOG_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to unlock security key: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*)* @wm831x_wdt_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_wdt_kick(%struct.wm831x* %0) #0 {
  %2 = alloca %struct.wm831x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %2, align 8
  %5 = call i32 @mutex_lock(i32* @wdt_mutex)
  %6 = load i64, i64* @update_gpio, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i64, i64* @update_gpio, align 8
  %10 = load i32, i32* @update_state, align 4
  %11 = call i32 @gpio_set_value_cansleep(i64 %9, i32 %10)
  %12 = load i32, i32* @update_state, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* @update_state, align 4
  store i32 0, i32* %3, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %18 = load i32, i32* @WM831X_WATCHDOG, align 4
  %19 = call i32 @wm831x_reg_read(%struct.wm831x* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @WM831X_WDOG_RST_SRC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %16
  %25 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %26 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %16
  %32 = load i32, i32* @WM831X_WDOG_RESET, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %36 = call i32 @wm831x_reg_unlock(%struct.wm831x* %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %41 = load i32, i32* @WM831X_WATCHDOG, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @wm831x_reg_write(%struct.wm831x* %40, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %45 = call i32 @wm831x_reg_lock(%struct.wm831x* %44)
  br label %52

46:                                               ; preds = %31
  %47 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %48 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %39
  br label %53

53:                                               ; preds = %52, %24, %8
  %54 = call i32 @mutex_unlock(i32* @wdt_mutex)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpio_set_value_cansleep(i64, i32) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wm831x_reg_unlock(%struct.wm831x*) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i32) #1

declare dso_local i32 @wm831x_reg_lock(%struct.wm831x*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
