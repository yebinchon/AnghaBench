; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_build_probe_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_build_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ieee80211_sub_if_data = type { i32, %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_mgmt = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_build_probe_req(%struct.ieee80211_sub_if_data* %0, i64* %1, i32 %2, %struct.ieee80211_channel* %3, i64* %4, i64 %5, i64* %6, i64 %7, i32 %8) #0 {
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ieee80211_local*, align 8
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca %struct.ieee80211_mgmt*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %11, align 8
  store i64* %1, i64** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %14, align 8
  store i64* %4, i64** %15, align 8
  store i64 %5, i64* %16, align 8
  store i64* %6, i64** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 1
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %26, align 8
  store %struct.ieee80211_local* %27, %struct.ieee80211_local** %20, align 8
  %28 = load i32, i32* %19, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %9
  store i64 0, i64* %23, align 8
  br label %36

31:                                               ; preds = %9
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ieee80211_frequency_to_channel(i32 %34)
  store i64 %35, i64* %23, align 8
  br label %36

36:                                               ; preds = %31, %30
  %37 = load %struct.ieee80211_local*, %struct.ieee80211_local** %20, align 8
  %38 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 0
  %41 = load i64*, i64** %15, align 8
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %18, align 8
  %44 = add i64 100, %43
  %45 = trunc i64 %44 to i32
  %46 = call %struct.sk_buff* @ieee80211_probereq_get(i32* %38, i32* %40, i64* %41, i64 %42, i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %21, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  br label %94

50:                                               ; preds = %36
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %20, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %53 = call i32 @skb_tail_pointer(%struct.sk_buff* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %55 = call i32 @skb_tailroom(%struct.sk_buff* %54)
  %56 = load i64*, i64** %17, align 8
  %57 = load i64, i64* %18, align 8
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i64, i64* %23, align 8
  %63 = call i32 @ieee80211_build_preq_ies(%struct.ieee80211_local* %51, i32 %53, i32 %55, i64* %56, i64 %57, i32 %60, i32 %61, i64 %62)
  store i32 %63, i32* %24, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %65 = load i32, i32* %24, align 4
  %66 = call i32 @skb_put(%struct.sk_buff* %64, i32 %65)
  %67 = load i64*, i64** %12, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %50
  %70 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %73, %struct.ieee80211_mgmt** %22, align 8
  %74 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %75 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i64*, i64** %12, align 8
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = call i32 @memcpy(i32 %76, i64* %77, i32 %78)
  %80 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %81 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64*, i64** %12, align 8
  %84 = load i32, i32* @ETH_ALEN, align 4
  %85 = call i32 @memcpy(i32 %82, i64* %83, i32 %84)
  br label %86

86:                                               ; preds = %69, %50
  %87 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %89 = call %struct.TYPE_2__* @IEEE80211_SKB_CB(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %93, %struct.sk_buff** %10, align 8
  br label %94

94:                                               ; preds = %86, %49
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %95
}

declare dso_local i64 @ieee80211_frequency_to_channel(i32) #1

declare dso_local %struct.sk_buff* @ieee80211_probereq_get(i32*, i32*, i64*, i64, i32) #1

declare dso_local i32 @ieee80211_build_preq_ies(%struct.ieee80211_local*, i32, i32, i64*, i64, i32, i32, i64) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local %struct.TYPE_2__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
