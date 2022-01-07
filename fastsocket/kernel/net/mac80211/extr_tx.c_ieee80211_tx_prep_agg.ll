; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_tx_prep_agg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_tx_prep_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.tid_ampdu_tx = type { i32, i64, i32, i32 }

@HT_AGG_STATE_OPERATIONAL = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@HT_AGG_STATE_WANT_START = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_NEED_TXPROCESSING = common dso_local global i32 0, align 4
@STA_MAX_TX_BUFFER = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*, %struct.sk_buff*, %struct.ieee80211_tx_info*, %struct.tid_ampdu_tx*, i32)* @ieee80211_tx_prep_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx_prep_agg(%struct.ieee80211_tx_data* %0, %struct.sk_buff* %1, %struct.ieee80211_tx_info* %2, %struct.tid_ampdu_tx* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_tx_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.tid_ampdu_tx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.tid_ampdu_tx* %3, %struct.tid_ampdu_tx** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %14 = load i32, i32* @HT_AGG_STATE_OPERATIONAL, align 4
  %15 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %16 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %15, i32 0, i32 3
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %21 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  store i32 1, i32* %12, align 4
  br label %103

25:                                               ; preds = %5
  %26 = load i32, i32* @HT_AGG_STATE_WANT_START, align 4
  %27 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %28 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %27, i32 0, i32 3
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %102

32:                                               ; preds = %25
  %33 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.TYPE_8__* %40, i32 %41)
  store %struct.tid_ampdu_tx* %42, %struct.tid_ampdu_tx** %9, align 8
  %43 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %44 = icmp ne %struct.tid_ampdu_tx* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %86

46:                                               ; preds = %32
  %47 = load i32, i32* @HT_AGG_STATE_OPERATIONAL, align 4
  %48 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %49 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %48, i32 0, i32 3
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  store i32 1, i32* %12, align 4
  br label %85

58:                                               ; preds = %46
  store i32 1, i32* %11, align 4
  %59 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32* %62, i32** %65, align 8
  %66 = load i32, i32* @IEEE80211_TX_INTFL_NEED_TXPROCESSING, align 4
  %67 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %72 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %71, i32 0, i32 2
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = call i32 @__skb_queue_tail(i32* %72, %struct.sk_buff* %73)
  %75 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %76 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %75, i32 0, i32 2
  %77 = call i64 @skb_queue_len(i32* %76)
  %78 = load i64, i64* @STA_MAX_TX_BUFFER, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %58
  %81 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %82 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %81, i32 0, i32 2
  %83 = call %struct.sk_buff* @__skb_dequeue(i32* %82)
  store %struct.sk_buff* %83, %struct.sk_buff** %13, align 8
  br label %84

84:                                               ; preds = %80, %58
  br label %85

85:                                               ; preds = %84, %52
  br label %86

86:                                               ; preds = %85, %45
  %87 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %100 = call i32 @ieee80211_free_txskb(i32* %98, %struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %94, %86
  br label %102

102:                                              ; preds = %101, %31
  br label %103

103:                                              ; preds = %102, %19
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %108 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @jiffies, align 4
  %113 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %9, align 8
  %114 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %106, %103
  %116 = load i32, i32* %11, align 4
  ret i32 %116
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ieee80211_free_txskb(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
