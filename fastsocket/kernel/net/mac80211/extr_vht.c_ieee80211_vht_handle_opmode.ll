; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_vht.c_ieee80211_vht_handle_opmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_vht.c_ieee80211_vht_handle_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.sta_info = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@IEEE80211_OPMODE_NOTIF_RX_NSS_TYPE_BF = common dso_local global i32 0, align 4
@IEEE80211_OPMODE_NOTIF_RX_NSS_MASK = common dso_local global i32 0, align 4
@IEEE80211_OPMODE_NOTIF_RX_NSS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_RC_NSS_CHANGED = common dso_local global i32 0, align 4
@IEEE80211_OPMODE_NOTIF_CHANWIDTH_MASK = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_20 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_40 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_80 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_160 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_vht_handle_opmode(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.sta_info* %1, %struct.sta_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %11, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %24, i64 %26
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %27, align 8
  store %struct.ieee80211_supported_band* %28, %struct.ieee80211_supported_band** %12, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @IEEE80211_OPMODE_NOTIF_RX_NSS_TYPE_BF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %108

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @IEEE80211_OPMODE_NOTIF_RX_NSS_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* @IEEE80211_OPMODE_NOTIF_RX_NSS_SHIFT, align 4
  %39 = load i32, i32* %15, align 4
  %40 = ashr i32 %39, %38
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %15, align 4
  %43 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %34
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @IEEE80211_RC_NSS_CHANGED, align 4
  %55 = load i32, i32* %14, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %49, %34
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %99

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @IEEE80211_OPMODE_NOTIF_CHANWIDTH_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %81 [
    i32 130, label %65
    i32 129, label %69
    i32 128, label %73
    i32 131, label %77
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* @IEEE80211_STA_RX_BW_20, align 4
  %67 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %81

69:                                               ; preds = %61
  %70 = load i32, i32* @IEEE80211_STA_RX_BW_40, align 4
  %71 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %72 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %81

73:                                               ; preds = %61
  %74 = load i32, i32* @IEEE80211_STA_RX_BW_80, align 4
  %75 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %76 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %81

77:                                               ; preds = %61
  %78 = load i32, i32* @IEEE80211_STA_RX_BW_160, align 4
  %79 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %80 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %61, %77, %73, %69, %65
  %82 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %83 = call i32 @ieee80211_sta_cur_vht_bw(%struct.sta_info* %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %86 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %84, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %93 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @IEEE80211_RC_NSS_CHANGED, align 4
  %96 = load i32, i32* %14, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %90, %81
  br label %99

99:                                               ; preds = %98, %60
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %104 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %105 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @rate_control_rate_update(%struct.ieee80211_local* %103, %struct.ieee80211_supported_band* %104, %struct.sta_info* %105, i32 %106)
  br label %108

108:                                              ; preds = %33, %102, %99
  ret void
}

declare dso_local i32 @ieee80211_sta_cur_vht_bw(%struct.sta_info*) #1

declare dso_local i32 @rate_control_rate_update(%struct.ieee80211_local*, %struct.ieee80211_supported_band*, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
