; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_reset_ap_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_reset_ap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_4__ }
%struct.ieee80211_local = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32 }

@IEEE80211_STA_BEACON_POLL = common dso_local global i32 0, align 4
@IEEE80211_STA_CONNECTION_POLL = common dso_local global i32 0, align 4
@IEEE80211_HW_CONNECTION_MONITOR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_CONNECTION_IDLE_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_reset_ap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_reset_ap_probe(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_managed*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.ieee80211_if_managed* %7, %struct.ieee80211_if_managed** %3, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %4, align 8
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_STA_BEACON_POLL, align 4
  %18 = load i32, i32* @IEEE80211_STA_CONNECTION_POLL, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  br label %61

26:                                               ; preds = %1
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %28 = call i32 @__ieee80211_stop_poll(%struct.ieee80211_sub_if_data* %27)
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %33 = call i32 @ieee80211_recalc_ps(%struct.ieee80211_local* %32, i32 -1)
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_local*, %struct.ieee80211_local** %38, align 8
  %40 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_HW_CONNECTION_MONITOR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %57

47:                                               ; preds = %26
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %49 = call i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data* %48)
  %50 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %50, i32 0, i32 1
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* @IEEE80211_CONNECTION_IDLE_TIME, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @round_jiffies_up(i64 %54)
  %56 = call i32 @mod_timer(i32* %51, i32 %55)
  br label %57

57:                                               ; preds = %47, %46
  %58 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %61

61:                                               ; preds = %57, %22
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__ieee80211_stop_poll(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_recalc_ps(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies_up(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
