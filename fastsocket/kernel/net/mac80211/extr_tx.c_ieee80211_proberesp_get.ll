; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_proberesp_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_proberesp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_if_ap = type { i32 }
%struct.probe_resp = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ieee80211_if_ap }
%struct.TYPE_3__ = type { i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_proberesp_get(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_if_ap*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.probe_resp*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_if_ap* null, %struct.ieee80211_if_ap** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store %struct.probe_resp* null, %struct.probe_resp** %8, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %11)
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %10, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %64

20:                                               ; preds = %2
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.ieee80211_if_ap* %24, %struct.ieee80211_if_ap** %6, align 8
  %25 = load %struct.ieee80211_if_ap*, %struct.ieee80211_if_ap** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_if_ap, %struct.ieee80211_if_ap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.probe_resp* @rcu_dereference(i32 %27)
  store %struct.probe_resp* %28, %struct.probe_resp** %8, align 8
  %29 = load %struct.probe_resp*, %struct.probe_resp** %8, align 8
  %30 = icmp ne %struct.probe_resp* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %61

32:                                               ; preds = %20
  %33 = load %struct.probe_resp*, %struct.probe_resp** %8, align 8
  %34 = getelementptr inbounds %struct.probe_resp, %struct.probe_resp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.sk_buff* @dev_alloc_skb(i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %61

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load %struct.probe_resp*, %struct.probe_resp** %8, align 8
  %43 = getelementptr inbounds %struct.probe_resp, %struct.probe_resp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @skb_put(%struct.sk_buff* %41, i32 %44)
  %46 = load %struct.probe_resp*, %struct.probe_resp** %8, align 8
  %47 = getelementptr inbounds %struct.probe_resp, %struct.probe_resp* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.probe_resp*, %struct.probe_resp** %8, align 8
  %50 = getelementptr inbounds %struct.probe_resp, %struct.probe_resp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %45, i32 %48, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %56, %struct.ieee80211_hdr** %9, align 8
  %57 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memset(i32 %59, i32 0, i32 4)
  br label %61

61:                                               ; preds = %40, %39, %31
  %62 = call i32 (...) @rcu_read_unlock()
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %3, align 8
  br label %64

64:                                               ; preds = %61, %19
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %65
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.probe_resp* @rcu_dereference(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
