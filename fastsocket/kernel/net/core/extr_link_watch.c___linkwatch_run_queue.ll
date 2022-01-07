; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_link_watch.c___linkwatch_run_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_link_watch.c___linkwatch_run_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.net_device* }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@linkwatch_nextevent = common dso_local global i64 0, align 8
@LW_URGENT = common dso_local global i32 0, align 4
@linkwatch_flags = common dso_local global i32 0, align 4
@lweventlist_lock = common dso_local global i32 0, align 4
@lweventlist = common dso_local global %struct.net_device* null, align 8
@__LINK_STATE_LINKWATCH_PENDING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__linkwatch_run_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__linkwatch_run_queue(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* @HZ, align 8
  %10 = add nsw i64 %8, %9
  store i64 %10, i64* @linkwatch_nextevent, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load i64, i64* @linkwatch_nextevent, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @HZ, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @time_after(i64 %12, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i64, i64* @jiffies, align 8
  store i64 %19, i64* @linkwatch_nextevent, align 8
  br label %20

20:                                               ; preds = %18, %11
  br label %21

21:                                               ; preds = %20, %7
  %22 = load i32, i32* @LW_URGENT, align 4
  %23 = call i32 @clear_bit(i32 %22, i32* @linkwatch_flags)
  %24 = call i32 @spin_lock_irq(i32* @lweventlist_lock)
  %25 = load %struct.net_device*, %struct.net_device** @lweventlist, align 8
  store %struct.net_device* %25, %struct.net_device** %3, align 8
  store %struct.net_device* null, %struct.net_device** @lweventlist, align 8
  %26 = call i32 @spin_unlock_irq(i32* @lweventlist_lock)
  br label %27

27:                                               ; preds = %71, %41, %21
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %30, label %74

30:                                               ; preds = %27
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  store %struct.net_device* %31, %struct.net_device** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 2
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %3, align 8
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 @linkwatch_urgent_event(%struct.net_device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @linkwatch_add_event(%struct.net_device* %42)
  br label %27

44:                                               ; preds = %37, %30
  %45 = call i32 (...) @smp_mb__before_clear_bit()
  %46 = load i32, i32* @__LINK_STATE_LINKWATCH_PENDING, align 4
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 @rfc2863_policy(%struct.net_device* %50)
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IFF_UP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %44
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = call i64 @netif_carrier_ok(%struct.net_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 @dev_activate(%struct.net_device* %63)
  br label %68

65:                                               ; preds = %58
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = call i32 @dev_deactivate(%struct.net_device* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = call i32 @netdev_state_change(%struct.net_device* %69)
  br label %71

71:                                               ; preds = %68, %44
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = call i32 @dev_put(%struct.net_device* %72)
  br label %27

74:                                               ; preds = %27
  %75 = load %struct.net_device*, %struct.net_device** @lweventlist, align 8
  %76 = icmp ne %struct.net_device* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @linkwatch_schedule_work(i32 0)
  br label %79

79:                                               ; preds = %77, %74
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @linkwatch_urgent_event(%struct.net_device*) #1

declare dso_local i32 @linkwatch_add_event(%struct.net_device*) #1

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @rfc2863_policy(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @dev_activate(%struct.net_device*) #1

declare dso_local i32 @dev_deactivate(%struct.net_device*) #1

declare dso_local i32 @netdev_state_change(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @linkwatch_schedule_work(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
