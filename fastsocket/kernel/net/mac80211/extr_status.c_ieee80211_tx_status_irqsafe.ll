; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_status.c_ieee80211_tx_status_irqsafe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_status.c_ieee80211_tx_status_irqsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_local = type { i32, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_STATUS_MSG = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_IRQSAFE_QUEUE_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %8)
  store %struct.ieee80211_local* %9, %struct.ieee80211_local** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %10)
  store %struct.ieee80211_tx_info* %11, %struct.ieee80211_tx_info** %6, align 8
  %12 = load i32, i32* @IEEE80211_TX_STATUS_MSG, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 3
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 2
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32* [ %23, %21 ], [ %26, %24 ]
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @skb_queue_tail(i32* %28, %struct.sk_buff* %29)
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 3
  %33 = call i32 @skb_queue_len(i32* %32)
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 2
  %36 = call i32 @skb_queue_len(i32* %35)
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %49, %27
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @IEEE80211_IRQSAFE_QUEUE_LIMIT, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %43, i32 0, i32 2
  %45 = call %struct.sk_buff* @skb_dequeue(i32* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %4, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i1 [ false, %38 ], [ %46, %42 ]
  br i1 %48, label %49, label %59

49:                                               ; preds = %47
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %50, %struct.sk_buff* %51)
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  %55 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @I802_DEBUG_INC(i32 %57)
  br label %38

59:                                               ; preds = %47
  %60 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %60, i32 0, i32 0
  %62 = call i32 @tasklet_schedule(i32* %61)
  ret void
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @I802_DEBUG_INC(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
