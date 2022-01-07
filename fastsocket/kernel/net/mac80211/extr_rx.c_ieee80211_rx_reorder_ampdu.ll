; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_rx_reorder_ampdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_rx_reorder_ampdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.TYPE_4__*, %struct.sta_info*, %struct.ieee80211_local*, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sta_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.tid_ampdu_rx = type { i32, i64 }

@IEEE80211_QOS_CTL_ACK_POLICY_MASK = common dso_local global i64 0, align 8
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i64 0, align 8
@IEEE80211_STYPE_NULLFUNC = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK = common dso_local global i64 0, align 8
@IEEE80211_QOS_CTL_ACK_POLICY_NORMAL = common dso_local global i64 0, align 8
@IEEE80211_RX_RA_MATCH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@IEEE80211_SDATA_QUEUE_TYPE_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rx_data*, %struct.sk_buff_head*)* @ieee80211_rx_reorder_ampdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_reorder_ampdu(%struct.ieee80211_rx_data* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.tid_ampdu_rx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %14 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %14, i32 0, i32 3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %5, align 8
  %17 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %17, i32 0, i32 2
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  store %struct.ieee80211_local* %19, %struct.ieee80211_local** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %23, %struct.ieee80211_hdr** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %24)
  store %struct.ieee80211_rx_status* %25, %struct.ieee80211_rx_status** %8, align 8
  %26 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %26, i32 0, i32 1
  %28 = load %struct.sta_info*, %struct.sta_info** %27, align 8
  store %struct.sta_info* %28, %struct.sta_info** %9, align 8
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_is_data_qos(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  br label %134

35:                                               ; preds = %2
  %36 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %37 = icmp ne %struct.sta_info* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %134

39:                                               ; preds = %35
  %40 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %41 = call i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %40)
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IEEE80211_QOS_CTL_ACK_POLICY_MASK, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %13, align 8
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %46 = call i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %45)
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IEEE80211_QOS_CTL_TID_MASK, align 8
  %49 = and i64 %47, %48
  store i64 %49, i64* %12, align 8
  %50 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.tid_ampdu_rx* @rcu_dereference(i32 %56)
  store %struct.tid_ampdu_rx* %57, %struct.tid_ampdu_rx** %10, align 8
  %58 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %10, align 8
  %59 = icmp ne %struct.tid_ampdu_rx* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %39
  br label %134

61:                                               ; preds = %39
  %62 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IEEE80211_STYPE_NULLFUNC, align 4
  %66 = call i32 @cpu_to_le16(i32 %65)
  %67 = and i32 %64, %66
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %134

71:                                               ; preds = %61
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @IEEE80211_QOS_CTL_ACK_POLICY_NORMAL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %134

80:                                               ; preds = %75, %71
  %81 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IEEE80211_RX_RA_MATCH, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %134

88:                                               ; preds = %80
  %89 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %10, align 8
  %90 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @jiffies, align 4
  %95 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %10, align 8
  %96 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %99 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %97
  %107 = load i32, i32* @IEEE80211_SDATA_QUEUE_TYPE_FRAME, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %111 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = call i32 @skb_queue_tail(i32* %113, %struct.sk_buff* %114)
  %116 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %117 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %116, i32 0, i32 0
  %118 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %119 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = call i32 @ieee80211_queue_work(i32* %117, i32* %121)
  br label %138

123:                                              ; preds = %97
  %124 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %125 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %10, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %130 = call i64 @ieee80211_sta_manage_reorder_buf(%struct.TYPE_4__* %126, %struct.tid_ampdu_rx* %127, %struct.sk_buff* %128, %struct.sk_buff_head* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %138

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %87, %79, %70, %60, %38, %34
  %135 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %135, %struct.sk_buff* %136)
  br label %138

138:                                              ; preds = %134, %132, %106
  ret void
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local %struct.tid_ampdu_rx* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

declare dso_local i64 @ieee80211_sta_manage_reorder_buf(%struct.TYPE_4__*, %struct.tid_ampdu_rx*, %struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
