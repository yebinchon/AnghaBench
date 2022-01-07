; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_core.c_watchdog_unregister_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_core.c_watchdog_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"error unregistering /dev/watchdog (err=%d)\0A\00", align 1
@watchdog_class = common dso_local global i32 0, align 4
@watchdog_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @watchdog_unregister_device(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = icmp eq %struct.watchdog_device* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %30

8:                                                ; preds = %1
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %10 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %14 = call i32 @watchdog_dev_unregister(%struct.watchdog_device* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %8
  %21 = load i32, i32* @watchdog_class, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @device_destroy(i32 %21, i32 %22)
  %24 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %25 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ida_simple_remove(i32* @watchdog_ida, i32 %26)
  %28 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %29 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %20, %7
  ret void
}

declare dso_local i32 @watchdog_dev_unregister(%struct.watchdog_device*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
