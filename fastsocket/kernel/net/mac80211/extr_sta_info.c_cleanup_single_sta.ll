; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_cleanup_single_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_cleanup_single_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_9__, i32, i32*, i32*, %struct.ieee80211_sub_if_data* }
%struct.TYPE_9__ = type { i32* }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.ieee80211_local* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ps_data }
%struct.ps_data = type { i32 }
%struct.TYPE_6__ = type { %struct.ps_data }
%struct.ieee80211_local = type { i32, i32 }
%struct.tid_ampdu_tx = type { i32 }

@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*)* @cleanup_single_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_single_sta(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tid_ampdu_tx*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ps_data*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 4
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  store %struct.ieee80211_sub_if_data* %11, %struct.ieee80211_sub_if_data** %6, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 3
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %7, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %16 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %17 = call i64 @test_sta_flag(%struct.sta_info* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %1
  %20 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 4
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %21, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %19
  %29 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 4
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %30, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %28, %19
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.ps_data* %41, %struct.ps_data** %8, align 8
  br label %54

42:                                               ; preds = %28
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %43, i32 0, i32 0
  %45 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_10__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store %struct.ps_data* %51, %struct.ps_data** %8, align 8
  br label %53

52:                                               ; preds = %42
  br label %147

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %56 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %57 = call i32 @clear_sta_flag(%struct.sta_info* %55, i32 %56)
  %58 = load %struct.ps_data*, %struct.ps_data** %8, align 8
  %59 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %58, i32 0, i32 0
  %60 = call i32 @atomic_dec(i32* %59)
  %61 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %62 = call i32 @sta_info_recalc_tim(%struct.sta_info* %61)
  br label %63

63:                                               ; preds = %54, %1
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %100, %63
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %103

68:                                               ; preds = %64
  %69 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i64 @skb_queue_len(i32* %74)
  %76 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %83 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %82, i32 0, i32 0
  %84 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %85 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @ieee80211_purge_tx_queue(i32* %83, i32* %89)
  %91 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %92 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %91, i32 0, i32 0
  %93 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %94 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = call i32 @ieee80211_purge_tx_queue(i32* %92, i32* %98)
  br label %100

100:                                              ; preds = %68
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %64

103:                                              ; preds = %64
  %104 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %104, i32 0, i32 0
  %106 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_10__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %110 = call i32 @mesh_sta_cleanup(%struct.sta_info* %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %113 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %112, i32 0, i32 1
  %114 = call i32 @cancel_work_sync(i32* %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %140, %111
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %115
  %120 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %121 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.tid_ampdu_tx* @rcu_dereference_raw(i32 %127)
  store %struct.tid_ampdu_tx* %128, %struct.tid_ampdu_tx** %5, align 8
  %129 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %5, align 8
  %130 = icmp ne %struct.tid_ampdu_tx* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %119
  br label %140

132:                                              ; preds = %119
  %133 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %134 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %133, i32 0, i32 0
  %135 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %5, align 8
  %136 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %135, i32 0, i32 0
  %137 = call i32 @ieee80211_purge_tx_queue(i32* %134, i32* %136)
  %138 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %5, align 8
  %139 = call i32 @kfree(%struct.tid_ampdu_tx* %138)
  br label %140

140:                                              ; preds = %132, %131
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %115

143:                                              ; preds = %115
  %144 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %145 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %146 = call i32 @sta_info_free(%struct.ieee80211_local* %144, %struct.sta_info* %145)
  br label %147

147:                                              ; preds = %143, %52
  ret void
}

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_10__*) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @sta_info_recalc_tim(%struct.sta_info*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @ieee80211_purge_tx_queue(i32*, i32*) #1

declare dso_local i32 @mesh_sta_cleanup(%struct.sta_info*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference_raw(i32) #1

declare dso_local i32 @kfree(%struct.tid_ampdu_tx*) #1

declare dso_local i32 @sta_info_free(%struct.ieee80211_local*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
