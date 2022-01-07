; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_status.c_ieee80211_frame_acked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_status.c_ieee80211_frame_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.ieee80211_sub_if_data*, %struct.ieee80211_local* }
%struct.ieee80211_sub_if_data = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_mgmt = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.ieee80211_hdr = type { i32 }

@WLAN_CATEGORY_HT = common dso_local global i64 0, align 8
@WLAN_HT_ACTION_SMPS = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_SMPS_DYNAMIC = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, %struct.sk_buff*)* @ieee80211_frame_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_frame_acked(%struct.sta_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %15, %struct.ieee80211_mgmt** %5, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 1
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %6, align 8
  %19 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %20, align 8
  store %struct.ieee80211_sub_if_data* %21, %struct.ieee80211_sub_if_data** %7, align 8
  %22 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ieee80211_is_data_qos(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %32, %struct.ieee80211_hdr** %8, align 8
  %33 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %34 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  store i32 %38, i32* %10, align 4
  %39 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %40 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @ieee80211_check_pending_bar(%struct.sta_info* %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %27, %2
  %46 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ieee80211_is_action(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %107

51:                                               ; preds = %45
  %52 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WLAN_CATEGORY_HT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %107

59:                                               ; preds = %51
  %60 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @WLAN_HT_ACTION_SMPS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %59
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %69
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %78 = call i64 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  %81 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %97 [
    i32 129, label %88
    i32 128, label %92
    i32 130, label %96
  ]

88:                                               ; preds = %80
  %89 = load i32, i32* @IEEE80211_SMPS_DYNAMIC, align 4
  %90 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %101

92:                                               ; preds = %80
  %93 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %94 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %95 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %101

96:                                               ; preds = %80
  br label %97

97:                                               ; preds = %80, %96
  %98 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  %99 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %92, %88
  %102 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %103 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %102, i32 0, i32 0
  %104 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %104, i32 0, i32 0
  %106 = call i32 @ieee80211_queue_work(i32* %103, i32* %105)
  br label %107

107:                                              ; preds = %101, %76, %69, %59, %51, %45
  ret void
}

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @ieee80211_check_pending_bar(%struct.sta_info*, i32, i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i64 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
