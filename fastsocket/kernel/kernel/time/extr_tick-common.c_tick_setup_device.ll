; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-common.c_tick_setup_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-common.c_tick_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tick_device = type { i64, %struct.clock_event_device* }
%struct.clock_event_device = type { void (%struct.clock_event_device*)*, i32, i32, i32 }
%struct.cpumask = type { i32 }

@tick_do_timer_cpu = common dso_local global i32 0, align 4
@TICK_DO_TIMER_BOOT = common dso_local global i32 0, align 4
@tick_next_period = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@tick_period = common dso_local global i32 0, align 4
@TICKDEV_MODE_PERIODIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tick_device*, %struct.clock_event_device*, i32, %struct.cpumask*)* @tick_setup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tick_setup_device(%struct.tick_device* %0, %struct.clock_event_device* %1, i32 %2, %struct.cpumask* %3) #0 {
  %5 = alloca %struct.tick_device*, align 8
  %6 = alloca %struct.clock_event_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpumask*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.clock_event_device*)*, align 8
  store %struct.tick_device* %0, %struct.tick_device** %5, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.cpumask* %3, %struct.cpumask** %8, align 8
  store void (%struct.clock_event_device*)* null, void (%struct.clock_event_device*)** %10, align 8
  %11 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %12 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %11, i32 0, i32 1
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %12, align 8
  %14 = icmp ne %struct.clock_event_device* %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @tick_do_timer_cpu, align 4
  %17 = load i32, i32* @TICK_DO_TIMER_BOOT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* @tick_do_timer_cpu, align 4
  %21 = call i32 (...) @ktime_get()
  store i32 %21, i32* @tick_next_period, align 4
  %22 = load i32, i32* @NSEC_PER_SEC, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = sdiv i32 %22, %23
  %25 = call i32 @ktime_set(i32 0, i32 %24)
  store i32 %25, i32* @tick_period, align 4
  br label %26

26:                                               ; preds = %19, %15
  %27 = load i64, i64* @TICKDEV_MODE_PERIODIC, align 8
  %28 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %29 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %45

30:                                               ; preds = %4
  %31 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %32 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %31, i32 0, i32 1
  %33 = load %struct.clock_event_device*, %struct.clock_event_device** %32, align 8
  %34 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %33, i32 0, i32 0
  %35 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %34, align 8
  store void (%struct.clock_event_device*)* %35, void (%struct.clock_event_device*)** %10, align 8
  %36 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %37 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %36, i32 0, i32 1
  %38 = load %struct.clock_event_device*, %struct.clock_event_device** %37, align 8
  %39 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  %41 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %42 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %41, i32 0, i32 1
  %43 = load %struct.clock_event_device*, %struct.clock_event_device** %42, align 8
  %44 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %43, i32 0, i32 0
  store void (%struct.clock_event_device*)* @clockevents_handle_noop, void (%struct.clock_event_device*)** %44, align 8
  br label %45

45:                                               ; preds = %30, %26
  %46 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %47 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %48 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %47, i32 0, i32 1
  store %struct.clock_event_device* %46, %struct.clock_event_device** %48, align 8
  %49 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %50 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %53 = call i32 @cpumask_equal(i32 %51, %struct.cpumask* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %45
  %56 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %57 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %60 = call i32 @irq_set_affinity(i32 %58, %struct.cpumask* %59)
  br label %61

61:                                               ; preds = %55, %45
  %62 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @tick_device_uses_broadcast(%struct.clock_event_device* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %81

67:                                               ; preds = %61
  %68 = load %struct.tick_device*, %struct.tick_device** %5, align 8
  %69 = getelementptr inbounds %struct.tick_device, %struct.tick_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TICKDEV_MODE_PERIODIC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %75 = call i32 @tick_setup_periodic(%struct.clock_event_device* %74, i32 0)
  br label %81

76:                                               ; preds = %67
  %77 = load %struct.clock_event_device*, %struct.clock_event_device** %6, align 8
  %78 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %10, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @tick_setup_oneshot(%struct.clock_event_device* %77, void (%struct.clock_event_device*)* %78, i32 %79)
  br label %81

81:                                               ; preds = %66, %76, %73
  ret void
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local void @clockevents_handle_noop(%struct.clock_event_device*) #1

declare dso_local i32 @cpumask_equal(i32, %struct.cpumask*) #1

declare dso_local i32 @irq_set_affinity(i32, %struct.cpumask*) #1

declare dso_local i64 @tick_device_uses_broadcast(%struct.clock_event_device*, i32) #1

declare dso_local i32 @tick_setup_periodic(%struct.clock_event_device*, i32) #1

declare dso_local i32 @tick_setup_oneshot(%struct.clock_event_device*, void (%struct.clock_event_device*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
