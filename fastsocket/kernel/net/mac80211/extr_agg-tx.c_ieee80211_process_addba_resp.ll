; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_process_addba_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_process_addba_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { %struct.TYPE_12__, %struct.TYPE_7__, i32 }
%struct.TYPE_12__ = type { i32, i64* }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.tid_ampdu_tx = type { i64, i32, i32, i64, i32, i32, i32 }

@IEEE80211_ADDBA_PARAM_TID_MASK = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"wrong addBA response token, %pM tid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"switched off addBA timer for %pM tid %d\0A\00", align 1
@HT_AGG_STATE_WANT_STOP = common dso_local global i32 0, align 4
@HT_AGG_STATE_STOPPING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"got addBA resp for %pM tid %d but we already gave up\0A\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@HT_AGG_STATE_RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@HT_AGG_STATE_DRV_READY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@AGG_STOP_DECLINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_process_addba_resp(%struct.ieee80211_local* %0, %struct.sta_info* %1, %struct.ieee80211_mgmt* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tid_ampdu_tx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.ieee80211_mgmt* %2, %struct.ieee80211_mgmt** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @le16_to_cpu(i32 %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @IEEE80211_ADDBA_PARAM_TID_MASK, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 2
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = ashr i32 %28, 6
  store i32 %29, i32* %12, align 4
  %30 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info* %34, i32 %35)
  store %struct.tid_ampdu_tx* %36, %struct.tid_ampdu_tx** %9, align 8
  %37 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %38 = icmp ne %struct.tid_ampdu_tx* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %4
  br label %161

40:                                               ; preds = %4
  %41 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %49 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %40
  %53 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %57 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @ht_dbg(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  br label %161

62:                                               ; preds = %40
  %63 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %64 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %63, i32 0, i32 6
  %65 = call i32 @del_timer_sync(i32* %64)
  %66 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @ht_dbg(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* @HT_AGG_STATE_WANT_STOP, align 4
  %76 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %77 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %76, i32 0, i32 5
  %78 = call i64 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %62
  %81 = load i32, i32* @HT_AGG_STATE_STOPPING, align 4
  %82 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %83 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %82, i32 0, i32 5
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %80, %62
  %87 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %88 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %91 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @ht_dbg(i32 %89, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  br label %161

96:                                               ; preds = %80
  %97 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @le16_to_cpu(i32 %103)
  %105 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %155

107:                                              ; preds = %96
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %155

110:                                              ; preds = %107
  %111 = load i32, i32* @HT_AGG_STATE_RESPONSE_RECEIVED, align 4
  %112 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %113 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %112, i32 0, i32 5
  %114 = call i64 @test_and_set_bit(i32 %111, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %161

117:                                              ; preds = %110
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %120 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @HT_AGG_STATE_DRV_READY, align 4
  %122 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %123 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %122, i32 0, i32 5
  %124 = call i64 @test_bit(i32 %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %117
  %127 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %128 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @ieee80211_agg_tx_operational(%struct.ieee80211_local* %127, %struct.sta_info* %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %117
  %132 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %133 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  store i64 0, i64* %138, align 8
  %139 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %140 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %131
  %144 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %145 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %144, i32 0, i32 4
  %146 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %147 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @TU_TO_EXP_TIME(i64 %148)
  %150 = call i32 @mod_timer(i32* %145, i32 %149)
  %151 = load i32, i32* @jiffies, align 4
  %152 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %153 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %143, %131
  br label %160

155:                                              ; preds = %107, %96
  %156 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @AGG_STOP_DECLINED, align 4
  %159 = call i32 @___ieee80211_stop_tx_ba_session(%struct.sta_info* %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %155, %154
  br label %161

161:                                              ; preds = %160, %116, %86, %52, %39
  %162 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %163 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = call i32 @mutex_unlock(i32* %164)
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info*, i32) #1

declare dso_local i32 @ht_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_agg_tx_operational(%struct.ieee80211_local*, %struct.sta_info*, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @TU_TO_EXP_TIME(i64) #1

declare dso_local i32 @___ieee80211_stop_tx_ba_session(%struct.sta_info*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
