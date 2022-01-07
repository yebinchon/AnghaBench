; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wep.c_ieee80211_wep_add_iv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_wep.c_ieee80211_wep_add_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_FCTL_PROTECTED = common dso_local global i32 0, align 4
@WEP_ICV_LEN = common dso_local global i64 0, align 8
@WEP_IV_LEN = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ieee80211_local*, %struct.sk_buff*, i32, i32)* @ieee80211_wep_add_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ieee80211_wep_add_iv(%struct.ieee80211_local* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %17, %struct.ieee80211_hdr** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %18)
  store %struct.ieee80211_tx_info* %19, %struct.ieee80211_tx_info** %11, align 8
  %20 = load i32, i32* @IEEE80211_FCTL_PROTECTED, align 4
  %21 = call i32 @cpu_to_le16(i32 %20)
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i64 @skb_tailroom(%struct.sk_buff* %26)
  %28 = load i64, i64* @WEP_ICV_LEN, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = call i64 @skb_headroom(%struct.sk_buff* %31)
  %33 = load i64, i64* @WEP_IV_LEN, align 8
  %34 = icmp slt i64 %32, %33
  br label %35

35:                                               ; preds = %30, %4
  %36 = phi i1 [ true, %4 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32* null, i32** %5, align 8
  br label %94

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %43 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ieee80211_hdrlen(i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load i64, i64* @WEP_IV_LEN, align 8
  %48 = call i32* @skb_push(%struct.sk_buff* %46, i64 %47)
  store i32* %48, i32** %13, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i64, i64* @WEP_IV_LEN, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @memmove(i32* %49, i32* %52, i32 %53)
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %41
  %61 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32* %74, i32** %5, align 8
  br label %94

75:                                               ; preds = %60, %41
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call i64 @skb_network_offset(%struct.sk_buff* %77)
  %79 = load i64, i64* @WEP_IV_LEN, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @skb_set_network_header(%struct.sk_buff* %76, i64 %80)
  %82 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @ieee80211_wep_get_iv(%struct.ieee80211_local* %82, i32 %83, i32 %84, i32* %88)
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32* %93, i32** %5, align 8
  br label %94

94:                                               ; preds = %75, %70, %40
  %95 = load i32*, i32** %5, align 8
  ret i32* %95
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_wep_get_iv(%struct.ieee80211_local*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
