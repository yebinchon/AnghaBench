; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_dev.c_watchdog_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_dev.c_watchdog_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@WDOG_UNREGISTERED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WDOG_NO_WAY_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"nowayout prevents watchdog being stopped!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@WDOG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @watchdog_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load i32, i32* @WDOG_UNREGISTERED, align 4
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %9 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 1
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %17 = call i32 @watchdog_active(%struct.watchdog_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %50

20:                                               ; preds = %15
  %21 = load i32, i32* @WDOG_NO_WAY_OUT, align 4
  %22 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %23 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %28 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_info(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %50

33:                                               ; preds = %20
  %34 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %35 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.watchdog_device*)**
  %39 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %38, align 8
  %40 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %41 = call i32 %39(%struct.watchdog_device* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load i32, i32* @WDOG_ACTIVE, align 4
  %46 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %47 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %46, i32 0, i32 1
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %33
  br label %50

50:                                               ; preds = %49, %26, %19, %12
  %51 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @watchdog_active(%struct.watchdog_device*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
