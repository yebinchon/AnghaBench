; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_stop_tx_ba_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_stop_tx_ba_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64* }
%struct.tid_ampdu_tx = type { i64, i64, i32 }

@IEEE80211_NUM_TIDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Bad TID value: tid = %d (>= %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Stopping Tx BA session for %pM tid %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not find station: %pM\0A\00", align 1
@HT_AGG_STATE_STOPPING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"unexpected callback to A-MPDU stop for %pM tid %d\0A\00", align 1
@WLAN_BACK_INITIATOR = common dso_local global i64 0, align 8
@WLAN_REASON_QSTA_NOT_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_stop_tx_ba_cb(%struct.ieee80211_vif* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.tid_ampdu_tx*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %11)
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %7, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %8, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @trace_api_stop_tx_ba_cb(%struct.ieee80211_sub_if_data* %16, i64* %17, i64 %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @IEEE80211_NUM_TIDS, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = inttoptr i64 %25 to i64*
  %27 = load i64, i64* @IEEE80211_NUM_TIDS, align 8
  %28 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i64*, ...) @ht_dbg(%struct.ieee80211_sub_if_data* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64* %26, i64 %27)
  br label %109

29:                                               ; preds = %3
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i64*, ...) @ht_dbg(%struct.ieee80211_sub_if_data* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64* %31, i64 %32)
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %37, i64* %38)
  store %struct.sta_info* %39, %struct.sta_info** %9, align 8
  %40 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %41 = icmp ne %struct.sta_info* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %29
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i64*, ...) @ht_dbg(%struct.ieee80211_sub_if_data* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64* %44)
  br label %105

46:                                               ; preds = %29
  %47 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %48 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 1
  %53 = call i32 @spin_lock_bh(i32* %52)
  %54 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info* %54, i64 %55)
  store %struct.tid_ampdu_tx* %56, %struct.tid_ampdu_tx** %10, align 8
  %57 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %10, align 8
  %58 = icmp ne %struct.tid_ampdu_tx* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %46
  %60 = load i32, i32* @HT_AGG_STATE_STOPPING, align 4
  %61 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %10, align 8
  %62 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %61, i32 0, i32 2
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %59, %46
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %67 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i64*, ...) @ht_dbg(%struct.ieee80211_sub_if_data* %66, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64* %70, i64 %71)
  br label %97

73:                                               ; preds = %59
  %74 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %10, align 8
  %75 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @WLAN_BACK_INITIATOR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %10, align 8
  %81 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %86 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i64*, i64** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @WLAN_BACK_INITIATOR, align 8
  %91 = load i32, i32* @WLAN_REASON_QSTA_NOT_USE, align 4
  %92 = call i32 @ieee80211_send_delba(i32 %87, i64* %88, i64 %89, i64 %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %79, %73
  %94 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @ieee80211_remove_tid_tx(%struct.sta_info* %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %65
  %98 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %99 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %98, i32 0, i32 1
  %100 = call i32 @spin_unlock_bh(i32* %99)
  %101 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %102 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  br label %105

105:                                              ; preds = %97, %42
  %106 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %107 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  br label %109

109:                                              ; preds = %105, %23
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i32 @trace_api_stop_tx_ba_cb(%struct.ieee80211_sub_if_data*, i64*, i64) #1

declare dso_local i32 @ht_dbg(%struct.ieee80211_sub_if_data*, i8*, i64*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i64*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_send_delba(i32, i64*, i64, i64, i32) #1

declare dso_local i32 @ieee80211_remove_tid_tx(%struct.sta_info*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
