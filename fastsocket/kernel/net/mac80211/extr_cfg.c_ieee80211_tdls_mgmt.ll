; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_tdls_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_tdls_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.ieee80211_local* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.ieee80211_local = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i32 }

@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TDLS mgmt action %d peer %pM\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_AC_BK = common dso_local global i32 0, align 4
@IEEE80211_AC_VI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, i32*, i64)* @ieee80211_tdls_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tdls_mgmt(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.wiphy*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ieee80211_sub_if_data*, align 8
  %19 = alloca %struct.ieee80211_local*, align 8
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %10, align 8
  store %struct.net_device* %1, %struct.net_device** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %23 = load %struct.net_device*, %struct.net_device** %11, align 8
  %24 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %23)
  store %struct.ieee80211_sub_if_data* %24, %struct.ieee80211_sub_if_data** %18, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %18, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 2
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %26, align 8
  store %struct.ieee80211_local* %27, %struct.ieee80211_local** %19, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %20, align 8
  %28 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %29 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %8
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %182

37:                                               ; preds = %8
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %18, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %18, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44, %37
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %182

54:                                               ; preds = %44
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %18, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @tdls_dbg(%struct.ieee80211_sub_if_data* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %56, i32* %57)
  %59 = load %struct.ieee80211_local*, %struct.ieee80211_local** %19, align 8
  %60 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @max(i32 4, i32 4)
  %64 = add nsw i64 %62, %63
  %65 = add nsw i64 %64, 50
  %66 = add nsw i64 %65, 7
  %67 = load i64, i64* %17, align 8
  %68 = add i64 %66, %67
  %69 = add i64 %68, 4
  %70 = call %struct.sk_buff* @dev_alloc_skb(i64 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %20, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %54
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %182

76:                                               ; preds = %54
  %77 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %78 = load %struct.ieee80211_local*, %struct.ieee80211_local** %19, align 8
  %79 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @skb_reserve(%struct.sk_buff* %77, i64 %81)
  %83 = load i32, i32* %13, align 4
  switch i32 %83, label %102 [
    i32 130, label %84
    i32 129, label %84
    i32 131, label %84
    i32 128, label %84
    i32 132, label %84
    i32 133, label %93
  ]

84:                                               ; preds = %76, %76, %76, %76, %76
  %85 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %86 = load %struct.net_device*, %struct.net_device** %11, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %92 = call i32 @ieee80211_prep_tdls_encap_data(%struct.wiphy* %85, %struct.net_device* %86, i32* %87, i32 %88, i32 %89, i32 %90, %struct.sk_buff* %91)
  store i32 %92, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %105

93:                                               ; preds = %76
  %94 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %95 = load %struct.net_device*, %struct.net_device** %11, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %101 = call i32 @ieee80211_prep_tdls_direct(%struct.wiphy* %94, %struct.net_device* %95, i32* %96, i32 %97, i32 %98, i32 %99, %struct.sk_buff* %100)
  store i32 %101, i32* %22, align 4
  store i32 1, i32* %21, align 4
  br label %105

102:                                              ; preds = %76
  %103 = load i32, i32* @ENOTSUPP, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %22, align 4
  br label %105

105:                                              ; preds = %102, %93, %84
  %106 = load i32, i32* %22, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %178

109:                                              ; preds = %105
  %110 = load i64, i64* %17, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %114 = load i64, i64* %17, align 8
  %115 = call i32 @skb_put(%struct.sk_buff* %113, i64 %114)
  %116 = load i32*, i32** %16, align 8
  %117 = load i64, i64* %17, align 8
  %118 = call i32 @memcpy(i32 %115, i32* %116, i64 %117)
  br label %119

119:                                              ; preds = %112, %109
  %120 = load i32, i32* %13, align 4
  switch i32 %120, label %147 [
    i32 130, label %121
    i32 131, label %121
    i32 128, label %121
    i32 132, label %121
    i32 129, label %134
    i32 133, label %134
  ]

121:                                              ; preds = %119, %119, %119, %119
  %122 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %123 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %18, align 8
  %124 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %18, align 8
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ieee80211_tdls_add_link_ie(%struct.sk_buff* %122, i32* %126, i32* %127, i32 %132)
  br label %150

134:                                              ; preds = %119, %119
  %135 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %18, align 8
  %138 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %18, align 8
  %142 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ieee80211_tdls_add_link_ie(%struct.sk_buff* %135, i32* %136, i32* %140, i32 %145)
  br label %150

147:                                              ; preds = %119
  %148 = load i32, i32* @ENOTSUPP, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %22, align 4
  br label %178

150:                                              ; preds = %134, %121
  %151 = load i32, i32* %21, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %18, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %156 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %154, %struct.sk_buff* %155)
  store i32 0, i32* %9, align 4
  br label %182

157:                                              ; preds = %150
  %158 = load i32, i32* %13, align 4
  switch i32 %158, label %165 [
    i32 130, label %159
    i32 129, label %159
  ]

159:                                              ; preds = %157, %157
  %160 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %161 = load i32, i32* @IEEE80211_AC_BK, align 4
  %162 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %160, i32 %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  store i32 2, i32* %164, align 4
  br label %171

165:                                              ; preds = %157
  %166 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %167 = load i32, i32* @IEEE80211_AC_VI, align 4
  %168 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %166, i32 %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  store i32 5, i32* %170, align 4
  br label %171

171:                                              ; preds = %165, %159
  %172 = call i32 (...) @local_bh_disable()
  %173 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %174 = load %struct.net_device*, %struct.net_device** %11, align 8
  %175 = call i32 @ieee80211_subif_start_xmit(%struct.sk_buff* %173, %struct.net_device* %174)
  store i32 %175, i32* %22, align 4
  %176 = call i32 (...) @local_bh_enable()
  %177 = load i32, i32* %22, align 4
  store i32 %177, i32* %9, align 4
  br label %182

178:                                              ; preds = %147, %108
  %179 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %180 = call i32 @dev_kfree_skb(%struct.sk_buff* %179)
  %181 = load i32, i32* %22, align 4
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %178, %171, %153, %73, %51, %34
  %183 = load i32, i32* %9, align 4
  ret i32 %183
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @tdls_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, i32*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @ieee80211_prep_tdls_encap_data(%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_prep_tdls_direct(%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @ieee80211_tdls_add_link_ie(%struct.sk_buff*, i32*, i32*, i32) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @ieee80211_subif_start_xmit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
