; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_release_reorder_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_release_reorder_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.tid_ampdu_rx = type { i32, %struct.sk_buff**, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@IEEE80211_RX_DEFERRED_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, i32, %struct.sk_buff_head*)* @ieee80211_release_reorder_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_release_reorder_frame(%struct.ieee80211_sub_if_data* %0, %struct.tid_ampdu_rx* %1, i32 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.tid_ampdu_rx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.tid_ampdu_rx* %1, %struct.tid_ampdu_rx** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %11 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %12 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %11, i32 0, i32 1
  %13 = load %struct.sk_buff**, %struct.sk_buff*** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %13, i64 %15
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %9, align 8
  %18 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %19 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %18, i32 0, i32 3
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %45

24:                                               ; preds = %4
  %25 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %26 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %30 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %29, i32 0, i32 1
  %31 = load %struct.sk_buff**, %struct.sk_buff*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %31, i64 %33
  store %struct.sk_buff* null, %struct.sk_buff** %34, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %35)
  store %struct.ieee80211_rx_status* %36, %struct.ieee80211_rx_status** %10, align 8
  %37 = load i32, i32* @IEEE80211_RX_DEFERRED_RELEASE, align 4
  %38 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %39 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %42, %struct.sk_buff* %43)
  br label %45

45:                                               ; preds = %24, %23
  %46 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %47 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ieee80211_sn_inc(i32 %48)
  %50 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %51 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_sn_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
