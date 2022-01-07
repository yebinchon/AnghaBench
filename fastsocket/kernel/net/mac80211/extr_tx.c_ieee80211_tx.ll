; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_3__, %struct.ieee80211_local* }
%struct.TYPE_3__ = type { i32* }
%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_data = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, i32, i32 }

@TX_DROP = common dso_local global i64 0, align 8
@TX_QUEUED = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@IEEE80211_HW_QUEUE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, i32)* @ieee80211_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.ieee80211_tx_data, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 1
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %10, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %13, align 8
  store i32 1, i32* %14, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 10
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i32 @dev_kfree_skb(%struct.sk_buff* %29)
  store i32 1, i32* %5, align 4
  br label %100

31:                                               ; preds = %4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i64 @ieee80211_tx_prepare(%struct.ieee80211_sub_if_data* %35, %struct.ieee80211_tx_data* %11, %struct.sk_buff* %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @TX_DROP, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %46 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %45, i32 0, i32 0
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call i32 @ieee80211_free_txskb(%struct.TYPE_4__* %46, %struct.sk_buff* %47)
  store i32 1, i32* %5, align 4
  br label %100

49:                                               ; preds = %31
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @TX_QUEUED, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %100

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %63 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %70 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IEEE80211_HW_QUEUE_CONTROL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %68, %58
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %81)
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %86 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %76, %68
  %88 = call i32 @invoke_tx_handlers(%struct.ieee80211_tx_data* %11)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  %91 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %92 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %11, i32 0, i32 1
  %93 = load i32, i32* %15, align 4
  %94 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %11, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @__ieee80211_tx(%struct.ieee80211_local* %91, i32* %92, i32 %93, i32 %95, i32 %96)
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %90, %87
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %56, %44, %28
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_tx_prepare(%struct.ieee80211_sub_if_data*, %struct.ieee80211_tx_data*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @invoke_tx_handlers(%struct.ieee80211_tx_data*) #1

declare dso_local i32 @__ieee80211_tx(%struct.ieee80211_local*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
