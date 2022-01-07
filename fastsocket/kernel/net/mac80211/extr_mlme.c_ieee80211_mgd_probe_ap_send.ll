; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_probe_ap_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_mgd_probe_ap_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i64, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64* }

@max_probe_tries = common dso_local global i64 0, align 8
@IEEE80211_HW_REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@probe_wait_ms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_mgd_probe_ap_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_mgd_probe_ap_send(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_managed*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.ieee80211_if_managed* %10, %struct.ieee80211_if_managed** %3, align 8
  %11 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %11, i32 0, i32 3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %5, align 8
  %16 = load i64, i64* @max_probe_tries, align 8
  %17 = sub nsw i64 %16, 3
  %18 = call i64 @max(i32 1, i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i64* null, i64** %5, align 8
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %25
  %40 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %40, i32 0, i32 1
  store i32 0, i32* %41, align 8
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %46 = call i32 @ieee80211_send_nullfunc(%struct.TYPE_8__* %44, %struct.ieee80211_sub_if_data* %45, i32 0)
  br label %78

47:                                               ; preds = %25
  %48 = call i32 (...) @rcu_read_lock()
  %49 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %49, i32 0, i32 3
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i32, i32* @WLAN_EID_SSID, align 4
  %53 = call i64* @ieee80211_bss_get_ie(%struct.TYPE_9__* %51, i32 %52)
  store i64* %53, i64** %4, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = icmp eq i64* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON_ONCE(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %65

60:                                               ; preds = %47
  %61 = load i64*, i64** %4, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %59
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %67 = load i64*, i64** %5, align 8
  %68 = load i64*, i64** %4, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %72 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %71, i32 0, i32 3
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ieee80211_send_probe_req(%struct.ieee80211_sub_if_data* %66, i64* %67, i64* %69, i32 %70, i32* null, i32 0, i32 -1, i32 1, i32 0, i32 %75, i32 0)
  %77 = call i32 (...) @rcu_read_unlock()
  br label %78

78:                                               ; preds = %65, %39
  %79 = load i64, i64* @jiffies, align 8
  %80 = load i32, i32* @probe_wait_ms, align 4
  %81 = call i64 @msecs_to_jiffies(i32 %80)
  %82 = add nsw i64 %79, %81
  %83 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %84 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %86 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %3, align 8
  %87 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @run_again(%struct.ieee80211_if_managed* %85, i64 %88)
  %90 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %78
  %100 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %104 = call i32 @ieee80211_flush_queues(%struct.TYPE_8__* %102, %struct.ieee80211_sub_if_data* %103)
  br label %105

105:                                              ; preds = %99, %78
  ret void
}

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @ieee80211_send_nullfunc(%struct.TYPE_8__*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64* @ieee80211_bss_get_ie(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_send_probe_req(%struct.ieee80211_sub_if_data*, i64*, i64*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @run_again(%struct.ieee80211_if_managed*, i64) #1

declare dso_local i32 @ieee80211_flush_queues(%struct.TYPE_8__*, %struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
