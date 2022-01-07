; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_add_vht_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_add_vht_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_vht_cap = type { i32 }
%struct.ieee80211_sta_vht_cap = type { i32 }

@IEEE80211_STA_DISABLE_80P80MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_160 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, %struct.ieee80211_supported_band*, %struct.ieee80211_vht_cap*)* @ieee80211_add_vht_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_add_vht_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, %struct.ieee80211_supported_band* %2, %struct.ieee80211_vht_cap* %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_vht_cap*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sta_vht_cap, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_supported_band* %2, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_vht_cap* %3, %struct.ieee80211_vht_cap** %8, align 8
  %12 = call i32 @BUILD_BUG_ON(i32 0)
  %13 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %13, i32 0, i32 0
  %15 = call i32 @memcpy(%struct.ieee80211_sta_vht_cap* %11, i32* %14, i32 4)
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %17 = call i32 @ieee80211_apply_vhtcap_overrides(%struct.ieee80211_sub_if_data* %16, %struct.ieee80211_sta_vht_cap* %11)
  %18 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %11, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEEE80211_STA_DISABLE_80P80MHZ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %28, %4
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_STA_DISABLE_160MHZ, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_160, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %45, %36
  %55 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE, align 4
  %59 = call i32 @cpu_to_le32(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %62, %54
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i32* @skb_put(%struct.sk_buff* %68, i32 6)
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @ieee80211_ie_build_vht_cap(i32* %70, %struct.ieee80211_sta_vht_cap* %11, i32 %71)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(%struct.ieee80211_sta_vht_cap*, i32*, i32) #1

declare dso_local i32 @ieee80211_apply_vhtcap_overrides(%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta_vht_cap*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_ie_build_vht_cap(i32*, %struct.ieee80211_sta_vht_cap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
