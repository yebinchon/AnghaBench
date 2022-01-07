; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_sta.c_ieee80211_sta_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_sta.c_ieee80211_sta_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.ieee80211_sub_if_data*, %struct.ieee80211_local* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.ieee80211_local = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%pM\00", align 1
@flags = common dso_local global i32 0, align 4
@num_ps_buf_frames = common dso_local global i32 0, align 4
@inactive_ms = common dso_local global i32 0, align 4
@connected_time = common dso_local global i32 0, align 4
@last_seq_ctrl = common dso_local global i32 0, align 4
@agg_status = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@last_signal = common dso_local global i32 0, align 4
@beacon_loss_count = common dso_local global i32 0, align 4
@ht_capa = common dso_local global i32 0, align 4
@vht_capa = common dso_local global i32 0, align 4
@last_ack_signal = common dso_local global i32 0, align 4
@current_tx_rate = common dso_local global i32 0, align 4
@last_rx_rate = common dso_local global i32 0, align 4
@rx_packets = common dso_local global i32 0, align 4
@tx_packets = common dso_local global i32 0, align 4
@rx_bytes = common dso_local global i32 0, align 4
@tx_bytes = common dso_local global i32 0, align 4
@rx_duplicates = common dso_local global i32 0, align 4
@num_duplicates = common dso_local global i32 0, align 4
@rx_fragments = common dso_local global i32 0, align 4
@rx_dropped = common dso_local global i32 0, align 4
@tx_fragments = common dso_local global i32 0, align 4
@tx_filtered = common dso_local global i32 0, align 4
@tx_filtered_count = common dso_local global i32 0, align 4
@tx_retry_failed = common dso_local global i32 0, align 4
@tx_retry_count = common dso_local global i32 0, align 4
@wep_weak_iv_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_debugfs_add(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 3
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  store %struct.ieee80211_local* %11, %struct.ieee80211_local** %3, align 8
  %12 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 2
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %4, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  store %struct.dentry* %20, %struct.dentry** %5, align 8
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = mul nsw i32 3, %21
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = icmp ne %struct.dentry* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %125

32:                                               ; preds = %1
  %33 = mul nuw i64 4, %23
  %34 = trunc i64 %33 to i32
  %35 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @snprintf(i32* %25, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = call i32 @debugfs_create_dir(i32* %25, %struct.dentry* %40)
  %42 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %125

51:                                               ; preds = %32
  %52 = load i32, i32* @flags, align 4
  %53 = call i32 @DEBUGFS_ADD(i32 %52)
  %54 = load i32, i32* @num_ps_buf_frames, align 4
  %55 = call i32 @DEBUGFS_ADD(i32 %54)
  %56 = load i32, i32* @inactive_ms, align 4
  %57 = call i32 @DEBUGFS_ADD(i32 %56)
  %58 = load i32, i32* @connected_time, align 4
  %59 = call i32 @DEBUGFS_ADD(i32 %58)
  %60 = load i32, i32* @last_seq_ctrl, align 4
  %61 = call i32 @DEBUGFS_ADD(i32 %60)
  %62 = load i32, i32* @agg_status, align 4
  %63 = call i32 @DEBUGFS_ADD(i32 %62)
  %64 = load i32, i32* @dev, align 4
  %65 = call i32 @DEBUGFS_ADD(i32 %64)
  %66 = load i32, i32* @last_signal, align 4
  %67 = call i32 @DEBUGFS_ADD(i32 %66)
  %68 = load i32, i32* @beacon_loss_count, align 4
  %69 = call i32 @DEBUGFS_ADD(i32 %68)
  %70 = load i32, i32* @ht_capa, align 4
  %71 = call i32 @DEBUGFS_ADD(i32 %70)
  %72 = load i32, i32* @vht_capa, align 4
  %73 = call i32 @DEBUGFS_ADD(i32 %72)
  %74 = load i32, i32* @last_ack_signal, align 4
  %75 = call i32 @DEBUGFS_ADD(i32 %74)
  %76 = load i32, i32* @current_tx_rate, align 4
  %77 = call i32 @DEBUGFS_ADD(i32 %76)
  %78 = load i32, i32* @last_rx_rate, align 4
  %79 = call i32 @DEBUGFS_ADD(i32 %78)
  %80 = load i32, i32* @rx_packets, align 4
  %81 = load i32, i32* @rx_packets, align 4
  %82 = call i32 @DEBUGFS_ADD_COUNTER(i32 %80, i32 %81)
  %83 = load i32, i32* @tx_packets, align 4
  %84 = load i32, i32* @tx_packets, align 4
  %85 = call i32 @DEBUGFS_ADD_COUNTER(i32 %83, i32 %84)
  %86 = load i32, i32* @rx_bytes, align 4
  %87 = load i32, i32* @rx_bytes, align 4
  %88 = call i32 @DEBUGFS_ADD_COUNTER(i32 %86, i32 %87)
  %89 = load i32, i32* @tx_bytes, align 4
  %90 = load i32, i32* @tx_bytes, align 4
  %91 = call i32 @DEBUGFS_ADD_COUNTER(i32 %89, i32 %90)
  %92 = load i32, i32* @rx_duplicates, align 4
  %93 = load i32, i32* @num_duplicates, align 4
  %94 = call i32 @DEBUGFS_ADD_COUNTER(i32 %92, i32 %93)
  %95 = load i32, i32* @rx_fragments, align 4
  %96 = load i32, i32* @rx_fragments, align 4
  %97 = call i32 @DEBUGFS_ADD_COUNTER(i32 %95, i32 %96)
  %98 = load i32, i32* @rx_dropped, align 4
  %99 = load i32, i32* @rx_dropped, align 4
  %100 = call i32 @DEBUGFS_ADD_COUNTER(i32 %98, i32 %99)
  %101 = load i32, i32* @tx_fragments, align 4
  %102 = load i32, i32* @tx_fragments, align 4
  %103 = call i32 @DEBUGFS_ADD_COUNTER(i32 %101, i32 %102)
  %104 = load i32, i32* @tx_filtered, align 4
  %105 = load i32, i32* @tx_filtered_count, align 4
  %106 = call i32 @DEBUGFS_ADD_COUNTER(i32 %104, i32 %105)
  %107 = load i32, i32* @tx_retry_failed, align 4
  %108 = load i32, i32* @tx_retry_failed, align 4
  %109 = call i32 @DEBUGFS_ADD_COUNTER(i32 %107, i32 %108)
  %110 = load i32, i32* @tx_retry_count, align 4
  %111 = load i32, i32* @tx_retry_count, align 4
  %112 = call i32 @DEBUGFS_ADD_COUNTER(i32 %110, i32 %111)
  %113 = load i32, i32* @wep_weak_iv_count, align 4
  %114 = load i32, i32* @wep_weak_iv_count, align 4
  %115 = call i32 @DEBUGFS_ADD_COUNTER(i32 %113, i32 %114)
  %116 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %117 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %118 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %119 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %118, i32 0, i32 1
  %120 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %121 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @drv_sta_add_debugfs(%struct.ieee80211_local* %116, %struct.ieee80211_sub_if_data* %117, %struct.TYPE_6__* %119, i32 %123)
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %51, %50, %31
  %126 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %8, align 4
  switch i32 %127, label %129 [
    i32 0, label %128
    i32 1, label %128
  ]

128:                                              ; preds = %125, %125
  ret void

129:                                              ; preds = %125
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #2

declare dso_local i32 @debugfs_create_dir(i32*, %struct.dentry*) #2

declare dso_local i32 @DEBUGFS_ADD(i32) #2

declare dso_local i32 @DEBUGFS_ADD_COUNTER(i32, i32) #2

declare dso_local i32 @drv_sta_add_debugfs(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.TYPE_6__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
