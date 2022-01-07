; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_dev.c_watchdog_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_dev.c_watchdog_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.watchdog_device* }
%struct.watchdog_device = type { %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.watchdog_device*)*, i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@WDOG_ALLOW_RELEASE = common dso_local global i32 0, align 4
@WDIOF_MAGICCLOSE = common dso_local global i32 0, align 4
@WDOG_UNREGISTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"watchdog did not stop!\0A\00", align 1
@WDOG_DEV_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @watchdog_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %8, align 8
  store %struct.watchdog_device* %9, %struct.watchdog_device** %5, align 8
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @WDOG_ALLOW_RELEASE, align 4
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %14 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %13, i32 0, i32 1
  %15 = call i64 @test_and_clear_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %19 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WDIOF_MAGICCLOSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %28 = call i32 @watchdog_stop(%struct.watchdog_device* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %34 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* @WDOG_UNREGISTERED, align 4
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %38 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %37, i32 0, i32 1
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %43 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_crit(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %32
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %48 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %47, i32 0, i32 2
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %51 = call i32 @watchdog_ping(%struct.watchdog_device* %50)
  br label %52

52:                                               ; preds = %46, %29
  %53 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %54 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @module_put(i32 %57)
  %59 = load i32, i32* @WDOG_DEV_OPEN, align 4
  %60 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %61 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %60, i32 0, i32 1
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  %63 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %64 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %66, align 8
  %68 = icmp ne i32 (%struct.watchdog_device*)* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %52
  %70 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %71 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %73, align 8
  %75 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %76 = call i32 %74(%struct.watchdog_device* %75)
  br label %77

77:                                               ; preds = %69, %52
  ret i32 0
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @watchdog_stop(%struct.watchdog_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @watchdog_ping(%struct.watchdog_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
