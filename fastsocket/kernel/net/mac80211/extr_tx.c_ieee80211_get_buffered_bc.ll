; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_get_buffered_bc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_get_buffered_bc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_tx_data = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.ps_data }
%struct.ps_data = type { i64, i32, i32 }
%struct.TYPE_7__ = type { %struct.ps_data, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.beacon_data = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@IEEE80211_FCTL_MOREDATA = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@IEEE80211_TX_PS_BUFFERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_get_buffered_bc(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_data, align 4
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca %struct.ps_data*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %12 = alloca %struct.beacon_data*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %14)
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %17 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %16)
  store %struct.ieee80211_sub_if_data* %17, %struct.ieee80211_sub_if_data** %8, align 8
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @rcu_dereference(i32 %22)
  %24 = bitcast i8* %23 to %struct.ieee80211_chanctx_conf*
  store %struct.ieee80211_chanctx_conf* %24, %struct.ieee80211_chanctx_conf** %11, align 8
  %25 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %11, align 8
  %26 = icmp ne %struct.ieee80211_chanctx_conf* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %152

28:                                               ; preds = %2
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @rcu_dereference(i32 %40)
  %42 = bitcast i8* %41 to %struct.beacon_data*
  store %struct.beacon_data* %42, %struct.beacon_data** %12, align 8
  %43 = load %struct.beacon_data*, %struct.beacon_data** %12, align 8
  %44 = icmp ne %struct.beacon_data* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.beacon_data*, %struct.beacon_data** %12, align 8
  %47 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %35
  br label %152

51:                                               ; preds = %45
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store %struct.ps_data* %55, %struct.ps_data** %9, align 8
  br label %68

56:                                               ; preds = %28
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %57, i32 0, i32 0
  %59 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_12__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store %struct.ps_data* %65, %struct.ps_data** %9, align 8
  br label %67

66:                                               ; preds = %56
  br label %152

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.ps_data*, %struct.ps_data** %9, align 8
  %70 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.ps_data*, %struct.ps_data** %9, align 8
  %75 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73, %68
  br label %152

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %130
  %81 = load %struct.ps_data*, %struct.ps_data** %9, align 8
  %82 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %81, i32 0, i32 1
  %83 = call %struct.sk_buff* @skb_dequeue(i32* %82)
  store %struct.sk_buff* %83, %struct.sk_buff** %6, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = icmp ne %struct.sk_buff* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %152

87:                                               ; preds = %80
  %88 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %89 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.ps_data*, %struct.ps_data** %9, align 8
  %93 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %92, i32 0, i32 1
  %94 = call i32 @skb_queue_empty(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %87
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sge i32 %99, 2
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %105, %struct.ieee80211_hdr** %13, align 8
  %106 = load i32, i32* @IEEE80211_FCTL_MOREDATA, align 4
  %107 = call i32 @cpu_to_le16(i32 %106)
  %108 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %109 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %101, %96, %87
  %113 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(i32 %122)
  store %struct.ieee80211_sub_if_data* %123, %struct.ieee80211_sub_if_data** %8, align 8
  br label %124

124:                                              ; preds = %119, %112
  %125 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = call i32 @ieee80211_tx_prepare(%struct.ieee80211_sub_if_data* %125, %struct.ieee80211_tx_data* %7, %struct.sk_buff* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  br label %133

130:                                              ; preds = %124
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %131)
  br label %80

133:                                              ; preds = %129
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %134)
  store %struct.ieee80211_tx_info* %135, %struct.ieee80211_tx_info** %10, align 8
  %136 = load i32, i32* @IEEE80211_TX_PS_BUFFERED, align 4
  %137 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %7, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %136
  store i32 %139, i32* %137, align 4
  %140 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %11, align 8
  %141 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %147 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = call i64 @invoke_tx_handlers(%struct.ieee80211_tx_data* %7)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %151

151:                                              ; preds = %150, %133
  br label %152

152:                                              ; preds = %151, %86, %78, %66, %50, %27
  %153 = call i32 (...) @rcu_read_unlock()
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %154
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_12__*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(i32) #1

declare dso_local i32 @ieee80211_tx_prepare(%struct.ieee80211_sub_if_data*, %struct.ieee80211_tx_data*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @invoke_tx_handlers(%struct.ieee80211_tx_data*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
