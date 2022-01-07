; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_release_reorder_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_release_reorder_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_rx_data = type { i32, i32, i32, i32, i32, %struct.sta_info* }
%struct.tid_ampdu_rx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_release_reorder_timeout(%struct.sta_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff_head, align 4
  %6 = alloca %struct.ieee80211_rx_data, align 8
  %7 = alloca %struct.tid_ampdu_rx*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 0
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 3
  %14 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 4
  %18 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 5
  %22 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  store %struct.sta_info* %22, %struct.sta_info** %21, align 8
  %23 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.tid_ampdu_rx* @rcu_dereference(i32 %30)
  store %struct.tid_ampdu_rx* %31, %struct.tid_ampdu_rx** %7, align 8
  %32 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %7, align 8
  %33 = icmp ne %struct.tid_ampdu_rx* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  br label %49

35:                                               ; preds = %2
  %36 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %5)
  %37 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %7, align 8
  %38 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %7, align 8
  %44 = call i32 @ieee80211_sta_reorder_release(i32 %42, %struct.tid_ampdu_rx* %43, %struct.sk_buff_head* %5)
  %45 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %7, align 8
  %46 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = call i32 @ieee80211_rx_handlers(%struct.ieee80211_rx_data* %6, %struct.sk_buff_head* %5)
  br label %49

49:                                               ; preds = %35, %34
  ret void
}

declare dso_local %struct.tid_ampdu_rx* @rcu_dereference(i32) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ieee80211_sta_reorder_release(i32, %struct.tid_ampdu_rx*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ieee80211_rx_handlers(%struct.ieee80211_rx_data*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
