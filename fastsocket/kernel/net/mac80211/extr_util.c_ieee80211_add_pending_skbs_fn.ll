; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_add_pending_skbs_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_add_pending_skbs_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32*, %struct.ieee80211_hw }
%struct.ieee80211_hw = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_QUEUE_STOP_REASON_SKB_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_add_pending_skbs_fn(%struct.ieee80211_local* %0, %struct.sk_buff_head* %1, void (i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %6, align 8
  store void (i8*)* %2, void (i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %15, i32 0, i32 2
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %9, align 8
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 0
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  br label %21

21:                                               ; preds = %42, %37, %4
  %22 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %23 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %10, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %26)
  store %struct.ieee80211_tx_info* %27, %struct.ieee80211_tx_info** %14, align 8
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %38, i32 0, i32 2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %39, %struct.sk_buff* %40)
  br label %21

42:                                               ; preds = %25
  %43 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_SKB_ADD, align 4
  %49 = call i32 @__ieee80211_stop_queue(%struct.ieee80211_hw* %46, i32 %47, i32 %48)
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = call i32 @__skb_queue_tail(i32* %55, %struct.sk_buff* %56)
  br label %21

58:                                               ; preds = %21
  %59 = load void (i8*)*, void (i8*)** %7, align 8
  %60 = icmp ne void (i8*)* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load void (i8*)*, void (i8*)** %7, align 8
  %63 = load i8*, i8** %8, align 8
  call void %62(i8* %63)
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %76, %64
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_SKB_ADD, align 4
  %75 = call i32 @__ieee80211_wake_queue(%struct.ieee80211_hw* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %65

79:                                               ; preds = %65
  %80 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %80, i32 0, i32 0
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @__ieee80211_stop_queue(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @__ieee80211_wake_queue(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
