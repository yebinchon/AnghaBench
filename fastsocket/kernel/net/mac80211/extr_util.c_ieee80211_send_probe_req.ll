; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_send_probe_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_send_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_send_probe_req(%struct.ieee80211_sub_if_data* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32 %6, i32 %7, i32 %8, %struct.ieee80211_channel* %9, i32 %10) #0 {
  %12 = alloca %struct.ieee80211_sub_if_data*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ieee80211_channel*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.ieee80211_channel* %9, %struct.ieee80211_channel** %21, align 8
  store i32 %10, i32* %22, align 4
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* %18, align 4
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %21, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = load i64, i64* %17, align 8
  %32 = load i32, i32* %19, align 4
  %33 = call %struct.sk_buff* @ieee80211_build_probe_req(%struct.ieee80211_sub_if_data* %24, i32* %25, i32 %26, %struct.ieee80211_channel* %27, i32* %28, i64 %29, i32* %30, i64 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %23, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %11
  %37 = load i32, i32* %20, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %39 = call %struct.TYPE_2__* @IEEE80211_SKB_CB(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %22, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %21, align 8
  %49 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ieee80211_tx_skb_tid_band(%struct.ieee80211_sub_if_data* %46, %struct.sk_buff* %47, i32 7, i32 %50)
  br label %56

52:                                               ; preds = %36
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %55 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %53, %struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %52, %45
  br label %57

57:                                               ; preds = %56, %11
  ret void
}

declare dso_local %struct.sk_buff* @ieee80211_build_probe_req(%struct.ieee80211_sub_if_data*, i32*, i32, %struct.ieee80211_channel*, i32*, i64, i32*, i64, i32) #1

declare dso_local %struct.TYPE_2__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb_tid_band(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
