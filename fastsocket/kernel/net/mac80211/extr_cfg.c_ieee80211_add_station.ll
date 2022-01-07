; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_add_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_add_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_parameters = type { i32, %struct.net_device* }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_PEER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_parameters*)* @ieee80211_add_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_add_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_parameters* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.station_parameters*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.sta_info*, align 8
  %12 = alloca %struct.ieee80211_sub_if_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.station_parameters* %3, %struct.station_parameters** %9, align 8
  %15 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %16 = call %struct.ieee80211_local* @wiphy_priv(%struct.wiphy* %15)
  store %struct.ieee80211_local* %16, %struct.ieee80211_local** %10, align 8
  %17 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %18 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %17, i32 0, i32 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = icmp ne %struct.net_device* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %4
  %22 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %23 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %22, i32 0, i32 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  %25 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %24)
  store %struct.ieee80211_sub_if_data* %25, %struct.ieee80211_sub_if_data** %12, align 8
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %21
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %141

42:                                               ; preds = %32, %21
  br label %46

43:                                               ; preds = %4
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %44)
  store %struct.ieee80211_sub_if_data* %45, %struct.ieee80211_sub_if_data** %12, align 8
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @ether_addr_equal(i32* %47, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %141

57:                                               ; preds = %46
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @is_multicast_ether_addr(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %141

64:                                               ; preds = %57
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data* %65, i32* %66, i32 %67)
  store %struct.sta_info* %68, %struct.sta_info** %11, align 8
  %69 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %70 = icmp ne %struct.sta_info* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %141

74:                                               ; preds = %64
  %75 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %76 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %74
  %83 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %84 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %85 = call i32 @sta_info_pre_move_state(%struct.sta_info* %83, i32 %84)
  %86 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %87 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %88 = call i32 @sta_info_pre_move_state(%struct.sta_info* %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %74
  %90 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %91 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %92 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %93 = call i32 @sta_apply_parameters(%struct.ieee80211_local* %90, %struct.sta_info* %91, %struct.station_parameters* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %98 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %99 = call i32 @sta_info_free(%struct.ieee80211_local* %97, %struct.sta_info* %98)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %5, align 4
  br label %141

101:                                              ; preds = %89
  %102 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %103 = load i32, i32* @WLAN_STA_TDLS_PEER, align 4
  %104 = call i32 @test_sta_flag(%struct.sta_info* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %108 = call i32 @rate_control_rate_init(%struct.sta_info* %107)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %111 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %122 = icmp eq i64 %120, %121
  br label %123

123:                                              ; preds = %116, %109
  %124 = phi i1 [ true, %109 ], [ %122, %116 ]
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %14, align 4
  %126 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %127 = call i32 @sta_info_insert_rcu(%struct.sta_info* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = call i32 (...) @rcu_read_unlock()
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %5, align 4
  br label %141

133:                                              ; preds = %123
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %138 = call i32 @ieee80211_send_layer2_update(%struct.sta_info* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %130, %96, %71, %61, %54, %39
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.ieee80211_local* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sta_info_pre_move_state(%struct.sta_info*, i32) #1

declare dso_local i32 @sta_apply_parameters(%struct.ieee80211_local*, %struct.sta_info*, %struct.station_parameters*) #1

declare dso_local i32 @sta_info_free(%struct.ieee80211_local*, %struct.sta_info*) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @rate_control_rate_init(%struct.sta_info*) #1

declare dso_local i32 @sta_info_insert_rcu(%struct.sta_info*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_send_layer2_update(%struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
