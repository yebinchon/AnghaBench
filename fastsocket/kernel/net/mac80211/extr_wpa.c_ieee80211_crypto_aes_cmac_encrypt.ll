; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_cmac_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wpa.c_ieee80211_crypto_aes_cmac_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { i32, %struct.ieee80211_key* }
%struct.ieee80211_key = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_mmie = type { i32, i32, i32, i32, i32 }

@TX_DROP = common dso_local global i32 0, align 4
@TX_CONTINUE = common dso_local global i32 0, align 4
@WLAN_EID_MMIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_aes_cmac_encrypt(%struct.ieee80211_tx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_tx_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca %struct.ieee80211_mmie*, align 8
  %8 = alloca [20 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %3, align 8
  %10 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  store %struct.ieee80211_key* %12, %struct.ieee80211_key** %6, align 8
  %13 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %13, i32 0, i32 0
  %15 = call i32 @skb_queue_len(i32* %14)
  %16 = icmp ne i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @TX_DROP, align 4
  store i32 %21, i32* %2, align 4
  br label %93

22:                                               ; preds = %1
  %23 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %23, i32 0, i32 0
  %25 = call %struct.sk_buff* @skb_peek(i32* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %26)
  store %struct.ieee80211_tx_info* %27, %struct.ieee80211_tx_info** %5, align 8
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %34, i32* %2, align 4
  br label %93

35:                                               ; preds = %22
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @skb_tailroom(%struct.sk_buff* %36)
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 20
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @TX_DROP, align 4
  store i32 %44, i32* %2, align 4
  br label %93

45:                                               ; preds = %35
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i64 @skb_put(%struct.sk_buff* %46, i32 20)
  %48 = inttoptr i64 %47 to %struct.ieee80211_mmie*
  store %struct.ieee80211_mmie* %48, %struct.ieee80211_mmie** %7, align 8
  %49 = load i32, i32* @WLAN_EID_MMIE, align 4
  %50 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %53 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %52, i32 0, i32 0
  store i32 18, i32* %53, align 4
  %54 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cpu_to_le16(i32 %57)
  %59 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = call i32 @atomic64_inc_return(i32* %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @bip_ipn_set64(i32 %68, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %73 = call i32 @bip_aad(%struct.sk_buff* %71, i32* %72)
  %74 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 24
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, 24
  %88 = load %struct.ieee80211_mmie*, %struct.ieee80211_mmie** %7, align 8
  %89 = getelementptr inbounds %struct.ieee80211_mmie, %struct.ieee80211_mmie* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ieee80211_aes_cmac(i32 %78, i32* %79, i64 %83, i64 %87, i32 %90)
  %92 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %45, %43, %33, %20
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @bip_ipn_set64(i32, i32) #1

declare dso_local i32 @bip_aad(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ieee80211_aes_cmac(i32, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
