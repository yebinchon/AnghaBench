; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_if_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_if_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_if_remove(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %3 = call i32 (...) @ASSERT_RTNL()
  %4 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 3
  %11 = call i32 @list_del_rcu(i32* %10)
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = call i32 (...) @synchronize_rcu()
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @unregister_netdevice(i64 %25)
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 0
  %30 = call i32 @cfg80211_unregister_wdev(i32* %29)
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %32 = call i32 @kfree(%struct.ieee80211_sub_if_data* %31)
  br label %33

33:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @unregister_netdevice(i64) #1

declare dso_local i32 @cfg80211_unregister_wdev(i32*) #1

declare dso_local i32 @kfree(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
