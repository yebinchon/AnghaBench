; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_plink.c_mesh_sta_info_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_plink.c_mesh_sta_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.sta_info = type { i64, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64*, i64 }
%struct.ieee802_11_elems = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@IEEE80211_RC_SUPP_RATES_CHANGED = common dso_local global i64 0, align 8
@IEEE80211_RC_BW_CHANGED = common dso_local global i64 0, align 8
@IEEE80211_HT_PARAM_CHAN_WIDTH_ANY = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_20 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.ieee802_11_elems*, i32)* @mesh_sta_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_sta_info_init(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.ieee802_11_elems* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.ieee802_11_elems*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.ieee802_11_elems* %2, %struct.ieee802_11_elems** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %9, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %19 = call i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data* %18)
  store i32 %19, i32* %10, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %25, i64 %27
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %28, align 8
  store %struct.ieee80211_supported_band* %29, %struct.ieee80211_supported_band** %11, align 8
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %31 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @ieee80211_sta_get_rates(%struct.ieee80211_local* %30, %struct.ieee802_11_elems* %31, i32 %32, i64* %13)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 1
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load i32, i32* @jiffies, align 4
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  br label %125

46:                                               ; preds = %4
  %47 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %48 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i64, i64* @IEEE80211_RC_SUPP_RATES_CHANGED, align 8
  %59 = load i64, i64* %14, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %14, align 8
  br label %61

61:                                               ; preds = %57, %46
  %62 = load i64, i64* %12, align 8
  %63 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %64 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 %62, i64* %69, align 8
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %72 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %73 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %76 = call i64 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data* %70, %struct.ieee80211_supported_band* %71, i32 %74, %struct.sta_info* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %61
  %79 = load i64, i64* @IEEE80211_RC_BW_CHANGED, align 8
  %80 = load i64, i64* %14, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %14, align 8
  br label %82

82:                                               ; preds = %78, %61
  %83 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %84 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = icmp ne %struct.TYPE_7__* %85, null
  br i1 %86, label %87, label %112

87:                                               ; preds = %82
  %88 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %89 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IEEE80211_HT_PARAM_CHAN_WIDTH_ANY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %87
  %97 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %98 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IEEE80211_STA_RX_BW_20, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i64, i64* @IEEE80211_RC_BW_CHANGED, align 8
  %105 = load i64, i64* %14, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %14, align 8
  br label %107

107:                                              ; preds = %103, %96
  %108 = load i64, i64* @IEEE80211_STA_RX_BW_20, align 8
  %109 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %110 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i64 %108, i64* %111, align 8
  br label %112

112:                                              ; preds = %107, %87, %82
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %117 = call i32 @rate_control_rate_init(%struct.sta_info* %116)
  br label %124

118:                                              ; preds = %112
  %119 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %120 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %121 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %122 = load i64, i64* %14, align 8
  %123 = call i32 @rate_control_rate_update(%struct.ieee80211_local* %119, %struct.ieee80211_supported_band* %120, %struct.sta_info* %121, i64 %122)
  br label %124

124:                                              ; preds = %118, %115
  br label %125

125:                                              ; preds = %124, %45
  %126 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %127 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %126, i32 0, i32 1
  %128 = call i32 @spin_unlock_bh(i32* %127)
  ret void
}

declare dso_local i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @ieee80211_sta_get_rates(%struct.ieee80211_local*, %struct.ieee802_11_elems*, i32, i64*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i32, %struct.sta_info*) #1

declare dso_local i32 @rate_control_rate_init(%struct.sta_info*) #1

declare dso_local i32 @rate_control_rate_update(%struct.ieee80211_local*, %struct.ieee80211_supported_band*, %struct.sta_info*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
