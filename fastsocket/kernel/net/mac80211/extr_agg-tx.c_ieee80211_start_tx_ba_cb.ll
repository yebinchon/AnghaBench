; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_start_tx_ba_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_start_tx_ba_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tid_ampdu_tx = type { i32 }

@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Bad TID value: tid = %d (>= %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not find station: %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"addBA was not requested!\0A\00", align 1
@HT_AGG_STATE_DRV_READY = common dso_local global i32 0, align 4
@HT_AGG_STATE_RESPONSE_RECEIVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_start_tx_ba_cb(%struct.ieee80211_vif* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.tid_ampdu_tx*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %11)
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %7, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %8, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @trace_api_start_tx_ba_cb(%struct.ieee80211_sub_if_data* %16, i32* %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %27 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @ht_dbg(%struct.ieee80211_sub_if_data* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  br label %89

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %32, i32* %33)
  store %struct.sta_info* %34, %struct.sta_info** %9, align 8
  %35 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %36 = icmp ne %struct.sta_info* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %39 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @ht_dbg(%struct.ieee80211_sub_if_data* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32* %42)
  br label %89

44:                                               ; preds = %28
  %45 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info* %49, i32 %50)
  store %struct.tid_ampdu_tx* %51, %struct.tid_ampdu_tx** %10, align 8
  %52 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %10, align 8
  %53 = icmp ne %struct.tid_ampdu_tx* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %60 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @ht_dbg(%struct.ieee80211_sub_if_data* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %81

61:                                               ; preds = %44
  %62 = load i32, i32* @HT_AGG_STATE_DRV_READY, align 4
  %63 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %10, align 8
  %64 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %63, i32 0, i32 0
  %65 = call i32 @test_and_set_bit(i32 %62, i32* %64)
  %66 = call i64 @WARN_ON(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %81

69:                                               ; preds = %61
  %70 = load i32, i32* @HT_AGG_STATE_RESPONSE_RECEIVED, align 4
  %71 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %10, align 8
  %72 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %71, i32 0, i32 0
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %77 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ieee80211_agg_tx_operational(%struct.ieee80211_local* %76, %struct.sta_info* %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %69
  br label %81

81:                                               ; preds = %80, %68, %58
  %82 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %83 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  br label %89

89:                                               ; preds = %81, %37, %23
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i32 @trace_api_start_tx_ba_cb(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @ht_dbg(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_agg_tx_operational(%struct.ieee80211_local*, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
