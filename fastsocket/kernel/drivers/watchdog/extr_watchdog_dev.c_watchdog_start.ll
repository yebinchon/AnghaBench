; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_dev.c_watchdog_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_dev.c_watchdog_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@WDOG_UNREGISTERED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WDOG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @watchdog_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_start(%struct.watchdog_device* %0) #0 {
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
  br label %37

15:                                               ; preds = %1
  %16 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %17 = call i64 @watchdog_active(%struct.watchdog_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %37

20:                                               ; preds = %15
  %21 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %22 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.watchdog_device*)**
  %26 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %25, align 8
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %28 = call i32 %26(%struct.watchdog_device* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load i32, i32* @WDOG_ACTIVE, align 4
  %33 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %34 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %33, i32 0, i32 1
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %31, %20
  br label %37

37:                                               ; preds = %36, %19, %12
  %38 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %39 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @watchdog_active(%struct.watchdog_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
