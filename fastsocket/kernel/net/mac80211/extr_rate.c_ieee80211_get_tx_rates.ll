; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_ieee80211_get_tx_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_ieee80211_get_tx_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_rate = type { i64 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_get_tx_rates(%struct.ieee80211_vif* %0, %struct.ieee80211_sta* %1, %struct.sk_buff* %2, %struct.ieee80211_tx_rate* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_tx_rate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.ieee80211_tx_rate* %3, %struct.ieee80211_tx_rate** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %12, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %13, align 8
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %22 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %23 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @rate_control_fill_sta_table(%struct.ieee80211_sta* %21, %struct.ieee80211_tx_info* %22, %struct.ieee80211_tx_rate* %23, i32 %24)
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %27 = icmp ne %struct.ieee80211_vif* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  br label %83

29:                                               ; preds = %5
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %31 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %30)
  store %struct.ieee80211_sub_if_data* %31, %struct.ieee80211_sub_if_data** %11, align 8
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %38, align 8
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %39, i64 %42
  %44 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %43, align 8
  store %struct.ieee80211_supported_band* %44, %struct.ieee80211_supported_band** %14, align 8
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ieee80211_is_data(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %29
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %52 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %53 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %55 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @rate_control_apply_mask(%struct.ieee80211_sub_if_data* %51, %struct.ieee80211_sta* %52, %struct.ieee80211_supported_band* %53, %struct.ieee80211_tx_info* %54, %struct.ieee80211_tx_rate* %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %29
  %59 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %59, i64 0
  %61 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %70 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %71 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %72 = call i32 @__rate_control_send_low(%struct.TYPE_6__* %68, %struct.ieee80211_supported_band* %69, %struct.ieee80211_sta* %70, %struct.ieee80211_tx_info* %71)
  br label %73

73:                                               ; preds = %64, %58
  %74 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %75 = icmp ne %struct.ieee80211_sta* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %78 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %79 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %80 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @rate_fixup_ratelist(%struct.ieee80211_vif* %77, %struct.ieee80211_supported_band* %78, %struct.ieee80211_tx_info* %79, %struct.ieee80211_tx_rate* %80, i32 %81)
  br label %83

83:                                               ; preds = %28, %76, %73
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rate_control_fill_sta_table(%struct.ieee80211_sta*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*, i32) #1

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @rate_control_apply_mask(%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, %struct.ieee80211_supported_band*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*, i32) #1

declare dso_local i32 @__rate_control_send_low(%struct.TYPE_6__*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @rate_fixup_ratelist(%struct.ieee80211_vif*, %struct.ieee80211_supported_band*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
