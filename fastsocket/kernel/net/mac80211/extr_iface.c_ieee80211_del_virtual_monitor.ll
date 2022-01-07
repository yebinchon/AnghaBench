; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_del_virtual_monitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_del_virtual_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@IEEE80211_HW_WANT_MONITOR_VIF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_del_virtual_monitor(%struct.ieee80211_local* %0) #0 {
  %2 = alloca %struct.ieee80211_local*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %2, align 8
  %4 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IEEE80211_HW_WANT_MONITOR_VIF, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %46

12:                                               ; preds = %1
  %13 = call i32 (...) @ASSERT_RTNL()
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 0
  %22 = call i32 @lockdep_is_held(i32* %21)
  %23 = call %struct.ieee80211_sub_if_data* @rcu_dereference_protected(i32 %19, i32 %22)
  store %struct.ieee80211_sub_if_data* %23, %struct.ieee80211_sub_if_data** %3, align 8
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %25 = icmp ne %struct.ieee80211_sub_if_data* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %12
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  br label %46

30:                                               ; preds = %12
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rcu_assign_pointer(i32 %33, i32* null)
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %36 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = call i32 (...) @synchronize_net()
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %40 = call i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data* %39)
  %41 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %43 = call i32 @drv_remove_interface(%struct.ieee80211_local* %41, %struct.ieee80211_sub_if_data* %42)
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %45 = call i32 @kfree(%struct.ieee80211_sub_if_data* %44)
  br label %46

46:                                               ; preds = %30, %26, %11
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ieee80211_sub_if_data* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @drv_remove_interface(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @kfree(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
