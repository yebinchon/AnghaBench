; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_prep_tdls_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_prep_tdls_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.ieee80211_mgmt = type { %struct.TYPE_14__, i8*, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_PUBLIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, %struct.sk_buff*)* @ieee80211_prep_tdls_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_prep_tdls_direct(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.sk_buff* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.ieee80211_sub_if_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.sk_buff* %6, %struct.sk_buff** %15, align 8
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %19)
  store %struct.ieee80211_sub_if_data* %20, %struct.ieee80211_sub_if_data** %16, align 8
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %22 = call i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data* %21)
  store i32 %22, i32* %17, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %24 = call i64 @skb_put(%struct.sk_buff* %23, i32 24)
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %26, %struct.ieee80211_mgmt** %18, align 8
  %27 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %18, align 8
  %28 = call i32 @memset(%struct.ieee80211_mgmt* %27, i32 0, i32 24)
  %29 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %18, align 8
  %30 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i32 %31, i32* %32, i32 %33)
  %35 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %18, align 8
  %36 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32 %37, i32* %41, i32 %42)
  %44 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %18, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32 %46, i32* %51, i32 %52)
  %54 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %55 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %56 = or i32 %54, %55
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %18, align 8
  %59 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %12, align 4
  switch i32 %60, label %101 [
    i32 128, label %61
  ]

61:                                               ; preds = %7
  %62 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %63 = call i64 @skb_put(%struct.sk_buff* %62, i32 17)
  %64 = load i32, i32* @WLAN_CATEGORY_PUBLIC, align 4
  %65 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %18, align 8
  %66 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 8
  %69 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %18, align 8
  %70 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i32 128, i32* %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %18, align 8
  %77 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %75, i32* %81, align 4
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %83 = call i32 @ieee80211_get_tdls_sta_capab(%struct.ieee80211_sub_if_data* %82)
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %18, align 8
  %86 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  store i8* %84, i8** %90, align 8
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @ieee80211_add_srates_ie(%struct.ieee80211_sub_if_data* %91, %struct.sk_buff* %92, i32 0, i32 %93)
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @ieee80211_add_ext_srates_ie(%struct.ieee80211_sub_if_data* %95, %struct.sk_buff* %96, i32 0, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %100 = call i32 @ieee80211_tdls_add_ext_capab(%struct.sk_buff* %99)
  br label %104

101:                                              ; preds = %7
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %105

104:                                              ; preds = %61
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @ieee80211_get_sdata_band(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_mgmt*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_get_tdls_sta_capab(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_add_srates_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ieee80211_add_ext_srates_ie(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ieee80211_tdls_add_ext_capab(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
