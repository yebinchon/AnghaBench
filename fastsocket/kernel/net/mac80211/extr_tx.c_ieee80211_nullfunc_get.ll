; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_nullfunc_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_nullfunc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64, i32 }
%struct.ieee80211_hdr_3addr = type { i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_3__ }
%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_NULLFUNC = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_nullfunc_get(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_hdr_3addr*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_if_managed*, align 8
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %83

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %22 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %21)
  store %struct.ieee80211_sub_if_data* %22, %struct.ieee80211_sub_if_data** %7, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.ieee80211_if_managed* %25, %struct.ieee80211_if_managed** %8, align 8
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %27, align 8
  store %struct.ieee80211_local* %28, %struct.ieee80211_local** %9, align 8
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 16
  %34 = call %struct.sk_buff* @dev_alloc_skb(i64 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %10, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %20
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %83

38:                                               ; preds = %20
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @skb_reserve(%struct.sk_buff* %39, i64 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = call i64 @skb_put(%struct.sk_buff* %45, i32 16)
  %47 = inttoptr i64 %46 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %47, %struct.ieee80211_hdr_3addr** %6, align 8
  %48 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %6, align 8
  %49 = call i32 @memset(%struct.ieee80211_hdr_3addr* %48, i32 0, i32 16)
  %50 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %51 = load i32, i32* @IEEE80211_STYPE_NULLFUNC, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @cpu_to_le16(i32 %54)
  %56 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %8, align 8
  %62 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @memcpy(i32 %60, i32 %63, i32 %64)
  %66 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ETH_ALEN, align 4
  %73 = call i32 @memcpy(i32 %68, i32 %71, i32 %72)
  %74 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %8, align 8
  %78 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = call i32 @memcpy(i32 %76, i32 %79, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %82, %struct.sk_buff** %3, align 8
  br label %83

83:                                               ; preds = %38, %37, %19
  %84 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %84
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_hdr_3addr*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
