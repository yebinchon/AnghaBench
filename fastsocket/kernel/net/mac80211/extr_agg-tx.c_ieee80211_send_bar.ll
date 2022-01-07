; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_send_bar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_send_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__, %struct.ieee80211_local* }
%struct.TYPE_5__ = type { i32* }
%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_bar = type { i8*, i8*, i32, i32, i8* }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_FTYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_STYPE_BACK_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL = common dso_local global i64 0, align 8
@IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA = common dso_local global i64 0, align 8
@IEEE80211_BAR_CTRL_TID_INFO_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_send_bar(%struct.ieee80211_vif* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_bar*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %14)
  store %struct.ieee80211_sub_if_data* %15, %struct.ieee80211_sub_if_data** %9, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 1
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %10, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 32, %22
  %24 = call %struct.sk_buff* @dev_alloc_skb(i64 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %11, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %94

28:                                               ; preds = %4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @skb_reserve(%struct.sk_buff* %29, i64 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = call i64 @skb_put(%struct.sk_buff* %35, i32 32)
  %37 = inttoptr i64 %36 to %struct.ieee80211_bar*
  store %struct.ieee80211_bar* %37, %struct.ieee80211_bar** %12, align 8
  %38 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %12, align 8
  %39 = call i32 @memset(%struct.ieee80211_bar* %38, i32 0, i32 32)
  %40 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %41 = load i32, i32* @IEEE80211_STYPE_BACK_REQ, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %12, align 8
  %45 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %12, align 8
  %47 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32 %48, i32* %49, i32 %50)
  %52 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %12, align 8
  %53 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 @memcpy(i32 %54, i32* %58, i32 %59)
  %61 = load i64, i64* @IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %13, align 4
  %65 = load i64, i64* @IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %13, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @IEEE80211_BAR_CTRL_TID_INFO_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %12, align 8
  %77 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i8* @cpu_to_le16(i32 %78)
  %80 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %12, align 8
  %81 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %83 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %86 = call %struct.TYPE_6__* @IEEE80211_SKB_CB(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  %90 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @ieee80211_tx_skb_tid(%struct.ieee80211_sub_if_data* %90, %struct.sk_buff* %91, i32 %92)
  br label %94

94:                                               ; preds = %28, %27
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_bar*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb_tid(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
