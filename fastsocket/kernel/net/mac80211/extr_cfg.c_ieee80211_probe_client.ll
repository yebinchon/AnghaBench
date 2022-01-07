; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_probe_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_probe_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, %struct.ieee80211_local* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_qos_hdr = type { i8*, i64, i32, i32, i32, i64, i8* }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.ieee80211_tx_info = type { i32 }
%struct.sta_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WLAN_STA_WME = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_QOS_NULLFUNC = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_STYPE_NULLFUNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_NL80211_FRAME_TX = common dso_local global i32 0, align 4
@IEEE80211_AC_VO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i64*)* @ieee80211_probe_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_probe_client(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.ieee80211_qos_hdr*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_tx_info*, align 8
  %18 = alloca %struct.sta_info*, align 8
  %19 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %20 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %21)
  store %struct.ieee80211_sub_if_data* %22, %struct.ieee80211_sub_if_data** %10, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %24, align 8
  store %struct.ieee80211_local* %25, %struct.ieee80211_local** %11, align 8
  store i32 48, i32* %14, align 4
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %30)
  store %struct.ieee80211_chanctx_conf* %31, %struct.ieee80211_chanctx_conf** %19, align 8
  %32 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %19, align 8
  %33 = icmp ne %struct.ieee80211_chanctx_conf* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %176

42:                                               ; preds = %4
  %43 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %19, align 8
  %44 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %20, align 4
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %49, i32* %50)
  store %struct.sta_info* %51, %struct.sta_info** %18, align 8
  %52 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %53 = icmp ne %struct.sta_info* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %56 = load i32, i32* @WLAN_STA_WME, align 4
  %57 = call i32 @test_sta_flag(%struct.sta_info* %55, i32 %56)
  store i32 %57, i32* %16, align 4
  br label %62

58:                                               ; preds = %42
  %59 = call i32 (...) @rcu_read_unlock()
  %60 = load i32, i32* @ENOLINK, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %176

62:                                               ; preds = %54
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %67 = load i32, i32* @IEEE80211_STYPE_QOS_NULLFUNC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %70 = or i32 %68, %69
  %71 = call i8* @cpu_to_le16(i32 %70)
  store i8* %71, i8** %15, align 8
  br label %81

72:                                               ; preds = %62
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %73, 2
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %76 = load i32, i32* @IEEE80211_STYPE_NULLFUNC, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %79 = or i32 %77, %78
  %80 = call i8* @cpu_to_le16(i32 %79)
  store i8* %80, i8** %15, align 8
  br label %81

81:                                               ; preds = %72, %65
  %82 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %83 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = call %struct.sk_buff* @dev_alloc_skb(i64 %88)
  store %struct.sk_buff* %89, %struct.sk_buff** %13, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %91 = icmp ne %struct.sk_buff* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %81
  %93 = call i32 (...) @rcu_read_unlock()
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %176

96:                                               ; preds = %81
  %97 = load %struct.net_device*, %struct.net_device** %7, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  store %struct.net_device* %97, %struct.net_device** %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %101 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %102 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @skb_reserve(%struct.sk_buff* %100, i64 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i64 @skb_put(%struct.sk_buff* %106, i32 %107)
  %109 = inttoptr i64 %108 to i8*
  %110 = bitcast i8* %109 to %struct.ieee80211_qos_hdr*
  store %struct.ieee80211_qos_hdr* %110, %struct.ieee80211_qos_hdr** %12, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %12, align 8
  %113 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %112, i32 0, i32 6
  store i8* %111, i8** %113, align 8
  %114 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %12, align 8
  %115 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %114, i32 0, i32 5
  store i64 0, i64* %115, align 8
  %116 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %12, align 8
  %117 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %120 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ETH_ALEN, align 4
  %124 = call i32 @memcpy(i32 %118, i32 %122, i32 %123)
  %125 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %12, align 8
  %126 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @ETH_ALEN, align 4
  %133 = call i32 @memcpy(i32 %127, i32 %131, i32 %132)
  %134 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %12, align 8
  %135 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %138 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @ETH_ALEN, align 4
  %142 = call i32 @memcpy(i32 %136, i32 %140, i32 %141)
  %143 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %12, align 8
  %144 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %143, i32 0, i32 1
  store i64 0, i64* %144, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %146 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %145)
  store %struct.ieee80211_tx_info* %146, %struct.ieee80211_tx_info** %17, align 8
  %147 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %148 = load i32, i32* @IEEE80211_TX_INTFL_NL80211_FRAME_TX, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %17, align 8
  %151 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %155 = load i32, i32* @IEEE80211_AC_VO, align 4
  %156 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %154, i32 %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 0
  store i32 7, i32* %158, align 8
  %159 = load i32, i32* %16, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %96
  %162 = call i8* @cpu_to_le16(i32 7)
  %163 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %12, align 8
  %164 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %161, %96
  %166 = call i32 (...) @local_bh_disable()
  %167 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %169 = load i32, i32* %20, align 4
  %170 = call i32 @ieee80211_xmit(%struct.ieee80211_sub_if_data* %167, %struct.sk_buff* %168, i32 %169)
  %171 = call i32 (...) @local_bh_enable()
  %172 = call i32 (...) @rcu_read_unlock()
  %173 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %174 = ptrtoint %struct.sk_buff* %173 to i64
  %175 = load i64*, i64** %9, align 8
  store i64 %174, i64* %175, align 8
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %165, %92, %58, %38
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @ieee80211_xmit(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
