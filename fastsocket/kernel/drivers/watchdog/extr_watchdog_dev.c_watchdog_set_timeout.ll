; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_dev.c_watchdog_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_dev.c_watchdog_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { {}* }
%struct.TYPE_4__ = type { i32 }

@WDIOF_SETTIMEOUT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WDOG_UNREGISTERED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @watchdog_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %8 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.watchdog_device*, i32)**
  %12 = load i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*, i32)** %11, align 8
  %13 = icmp eq i32 (%struct.watchdog_device*, i32)* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %16 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %15, i32 0, i32 5
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WDIOF_SETTIMEOUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14, %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %73

26:                                               ; preds = %14
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %28 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %34 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %40 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ugt i32 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %31
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %73

46:                                               ; preds = %37, %26
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %48 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %47, i32 0, i32 2
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i32, i32* @WDOG_UNREGISTERED, align 4
  %51 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %51, i32 0, i32 4
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %68

58:                                               ; preds = %46
  %59 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %60 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = bitcast {}** %62 to i32 (%struct.watchdog_device*, i32)**
  %64 = load i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*, i32)** %63, align 8
  %65 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 %64(%struct.watchdog_device* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %58, %55
  %69 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %70 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %69, i32 0, i32 2
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %43, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
