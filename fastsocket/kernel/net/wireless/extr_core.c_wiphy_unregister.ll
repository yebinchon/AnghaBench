; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_wiphy_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_wiphy_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_4__*, i64, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@cfg80211_mutex = common dso_local global i32 0, align 4
@cfg80211_rdev_list_generation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiphy_unregister(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %7 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %6)
  store %struct.cfg80211_registered_device* %7, %struct.cfg80211_registered_device** %3, align 8
  %8 = call i32 (...) @rtnl_lock()
  %9 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = call i32 (...) @rtnl_unlock()
  %13 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %14 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %13, i32 0, i32 12
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rfkill_unregister(i32 %15)
  %17 = call i32 @mutex_lock(i32* @cfg80211_mutex)
  %18 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %19 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %22 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %21, i32 0, i32 9
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %25 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %28 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %27, i32 0, i32 9
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @wait_event(i32 %20, i32 %33)
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %36 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %35, i32 0, i32 9
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 10
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %46 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %45, i32 0, i32 9
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @debugfs_remove_recursive(i32 %51)
  %53 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %54 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %53, i32 0, i32 8
  %55 = call i32 @list_del_rcu(i32* %54)
  %56 = call i32 (...) @synchronize_rcu()
  %57 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %58 = call i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device* %57)
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %60 = call i32 @cfg80211_unlock_rdev(%struct.cfg80211_registered_device* %59)
  %61 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %62 = call i32 @wiphy_regulatory_deregister(%struct.wiphy* %61)
  %63 = load i32, i32* @cfg80211_rdev_list_generation, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @cfg80211_rdev_list_generation, align 4
  %65 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %66 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = call i32 @device_del(i32* %67)
  %69 = call i32 @mutex_unlock(i32* @cfg80211_mutex)
  %70 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %71 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %70, i32 0, i32 6
  %72 = call i32 @flush_work(i32* %71)
  %73 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %74 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %73, i32 0, i32 5
  %75 = call i32 @cancel_work_sync(i32* %74)
  %76 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %77 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %76, i32 0, i32 4
  %78 = call i32 @flush_work(i32* %77)
  %79 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %80 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %79, i32 0, i32 3
  %81 = call i32 @cancel_delayed_work_sync(i32* %80)
  %82 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %83 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %1
  %87 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %88 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %95 = call i32 @rdev_set_wakeup(%struct.cfg80211_registered_device* %94, i32 0)
  br label %96

96:                                               ; preds = %93, %86, %1
  %97 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %98 = call i32 @cfg80211_rdev_free_wowlan(%struct.cfg80211_registered_device* %97)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @rfkill_unregister(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @cfg80211_unlock_rdev(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @wiphy_regulatory_deregister(%struct.wiphy*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rdev_set_wakeup(%struct.cfg80211_registered_device*, i32) #1

declare dso_local i32 @cfg80211_rdev_free_wowlan(%struct.cfg80211_registered_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
