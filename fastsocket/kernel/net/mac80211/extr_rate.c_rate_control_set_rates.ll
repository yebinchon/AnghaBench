; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_set_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_set_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_sta_rates = type { i32 }

@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rate_control_set_rates(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, %struct.ieee80211_sta_rates* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.ieee80211_sta_rates*, align 8
  %7 = alloca %struct.ieee80211_sta_rates*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store %struct.ieee80211_sta_rates* %2, %struct.ieee80211_sta_rates** %6, align 8
  %8 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ieee80211_sta_rates* @rcu_dereference_protected(i32 %10, i32 1)
  store %struct.ieee80211_sta_rates* %11, %struct.ieee80211_sta_rates** %7, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %6, align 8
  %16 = call i32 @rcu_assign_pointer(i32 %14, %struct.ieee80211_sta_rates* %15)
  %17 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %7, align 8
  %18 = icmp ne %struct.ieee80211_sta_rates* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %7, align 8
  %21 = load i32, i32* @rcu_head, align 4
  %22 = call i32 @kfree_rcu(%struct.ieee80211_sta_rates* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %3
  ret i32 0
}

declare dso_local %struct.ieee80211_sta_rates* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_sta_rates*) #1

declare dso_local i32 @kfree_rcu(%struct.ieee80211_sta_rates*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
