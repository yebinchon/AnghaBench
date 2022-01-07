; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_process_delba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_process_delba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.sta_info = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@IEEE80211_DELBA_PARAM_TID_MASK = common dso_local global i32 0, align 4
@IEEE80211_DELBA_PARAM_INITIATOR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"delba from %pM (%s) tid %d reason code %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"initiator\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"recipient\00", align 1
@WLAN_BACK_INITIATOR = common dso_local global i32 0, align 4
@AGG_STOP_PEER_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_process_delba(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.ieee80211_mgmt* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.ieee80211_mgmt* %2, %struct.ieee80211_mgmt** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @IEEE80211_DELBA_PARAM_TID_MASK, align 4
  %22 = and i32 %20, %21
  %23 = ashr i32 %22, 12
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @IEEE80211_DELBA_PARAM_INITIATOR_MASK, align 4
  %26 = and i32 %24, %25
  %27 = ashr i32 %26, 11
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %29 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = call i32 @ht_dbg_ratelimited(%struct.ieee80211_sub_if_data* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %35, i32 %36, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @WLAN_BACK_INITIATOR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %4
  %50 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @WLAN_BACK_INITIATOR, align 4
  %53 = call i32 @__ieee80211_stop_rx_ba_session(%struct.sta_info* %50, i32 %51, i32 %52, i32 0, i32 1)
  br label %59

54:                                               ; preds = %4
  %55 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @AGG_STOP_PEER_REQUEST, align 4
  %58 = call i32 @__ieee80211_stop_tx_ba_session(%struct.sta_info* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ht_dbg_ratelimited(%struct.ieee80211_sub_if_data*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @__ieee80211_stop_rx_ba_session(%struct.sta_info*, i32, i32, i32, i32) #1

declare dso_local i32 @__ieee80211_stop_tx_ba_session(%struct.sta_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
