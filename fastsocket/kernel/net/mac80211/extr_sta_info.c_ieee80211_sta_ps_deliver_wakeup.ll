; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_ieee80211_sta_ps_deliver_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_sta_info.c_ieee80211_sta_ps_deliver_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_5__*, i64, %struct.ieee80211_sub_if_data* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff_head = type { i32 }

@WLAN_STA_SP = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@IEEE80211_HW_AP_LINK_PS = common dso_local global i32 0, align 4
@STA_NOTIFY_AWAKE = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@clear_sta_ps_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"STA %pM aid %d sending %d filtered/%d PS frames since STA not sleeping anymore\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_ps_deliver_wakeup(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sk_buff_head, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %12 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 4
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %3, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %19 = load i32, i32* @WLAN_STA_SP, align 4
  %20 = call i32 @clear_sta_flag(%struct.sta_info* %18, i32 %19)
  %21 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %22 = call i32 @BITS_TO_LONGS(i32 %21)
  %23 = icmp sgt i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUILD_BUG_ON(i32 %24)
  %26 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IEEE80211_HW_AP_LINK_PS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %1
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %38 = load i32, i32* @STA_NOTIFY_AWAKE, align 4
  %39 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 0
  %41 = call i32 @drv_sta_notify(%struct.ieee80211_local* %36, %struct.ieee80211_sub_if_data* %37, i32 %38, %struct.TYPE_6__* %40)
  br label %42

42:                                               ; preds = %35, %1
  %43 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %5)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %113, %42
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %116

48:                                               ; preds = %44
  %49 = call i32 @skb_queue_len(%struct.sk_buff_head* %5)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = call i32 @skb_queue_splice_tail_init(%struct.TYPE_5__* %64, %struct.sk_buff_head* %5)
  %66 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = call i32 @skb_queue_len(%struct.sk_buff_head* %5)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %10, align 4
  %82 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %83 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %92 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = call i32 @skb_queue_splice_tail_init(%struct.TYPE_5__* %96, %struct.sk_buff_head* %5)
  %98 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %99 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = call i32 @skb_queue_len(%struct.sk_buff_head* %5)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %48
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %44

116:                                              ; preds = %44
  %117 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %118 = load i32, i32* @clear_sta_ps_flags, align 4
  %119 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %120 = call i32 @ieee80211_add_pending_skbs_fn(%struct.ieee80211_local* %117, %struct.sk_buff_head* %5, i32 %118, %struct.sta_info* %119)
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %123 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %127 = call i32 @sta_info_recalc_tim(%struct.sta_info* %126)
  %128 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %129 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %130 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %134 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @ps_dbg(%struct.ieee80211_sub_if_data* %128, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %136, i32 %137, i32 %138)
  ret void
}

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @drv_sta_notify(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.TYPE_5__*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ieee80211_add_pending_skbs_fn(%struct.ieee80211_local*, %struct.sk_buff_head*, i32, %struct.sta_info*) #1

declare dso_local i32 @sta_info_recalc_tim(%struct.sta_info*) #1

declare dso_local i32 @ps_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
