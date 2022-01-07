; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_add_ht_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_add_ht_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_sta_ht_cap = type { i32 }

@IEEE80211_HT_PARAM_CHA_SEC_OFFSET = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SM_PS = common dso_local global i32 0, align 4
@WLAN_HT_CAP_SM_PS_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SM_PS_SHIFT = common dso_local global i32 0, align 4
@WLAN_HT_CAP_SM_PS_STATIC = common dso_local global i32 0, align 4
@WLAN_HT_CAP_SM_PS_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, %struct.ieee80211_supported_band*, %struct.ieee80211_channel*, i32)* @ieee80211_add_ht_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_add_ht_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32 %2, %struct.ieee80211_supported_band* %3, %struct.ieee80211_channel* %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ieee80211_sta_ht_cap, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ieee80211_supported_band* %3, %struct.ieee80211_supported_band** %10, align 8
  store %struct.ieee80211_channel* %4, %struct.ieee80211_channel** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = call i32 @BUILD_BUG_ON(i32 0)
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %22 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %21, i32 0, i32 0
  %23 = call i32 @memcpy(%struct.ieee80211_sta_ht_cap* %16, i32* %22, i32 4)
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %25 = call i32 @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data* %24, %struct.ieee80211_sta_ht_cap* %16)
  %26 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %16, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_OFFSET, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %61 [
    i32 134, label %31
    i32 133, label %46
  ]

31:                                               ; preds = %6
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %15, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %15, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %36, %31
  br label %61

46:                                               ; preds = %6
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %15, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %15, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %51, %46
  br label %61

61:                                               ; preds = %6, %60, %45
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IEEE80211_STA_DISABLE_40MHZ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %15, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %15, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %70, %61
  %80 = load i32, i32* @IEEE80211_HT_CAP_SM_PS, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %15, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %12, align 4
  switch i32 %84, label %105 [
    i32 132, label %85
    i32 130, label %85
    i32 129, label %87
    i32 128, label %93
    i32 131, label %99
  ]

85:                                               ; preds = %79, %79
  %86 = call i32 @WARN_ON(i32 1)
  br label %87

87:                                               ; preds = %79, %85
  %88 = load i32, i32* @WLAN_HT_CAP_SM_PS_DISABLED, align 4
  %89 = load i32, i32* @IEEE80211_HT_CAP_SM_PS_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %15, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %15, align 4
  br label %105

93:                                               ; preds = %79
  %94 = load i32, i32* @WLAN_HT_CAP_SM_PS_STATIC, align 4
  %95 = load i32, i32* @IEEE80211_HT_CAP_SM_PS_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %15, align 4
  br label %105

99:                                               ; preds = %79
  %100 = load i32, i32* @WLAN_HT_CAP_SM_PS_DYNAMIC, align 4
  %101 = load i32, i32* @IEEE80211_HT_CAP_SM_PS_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %15, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %79, %99, %93, %87
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = call i32* @skb_put(%struct.sk_buff* %106, i32 6)
  store i32* %107, i32** %13, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @ieee80211_ie_build_ht_cap(i32* %108, %struct.ieee80211_sta_ht_cap* %16, i32 %109)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(%struct.ieee80211_sta_ht_cap*, i32*, i32) #1

declare dso_local i32 @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta_ht_cap*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_ie_build_ht_cap(i32*, %struct.ieee80211_sta_ht_cap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
