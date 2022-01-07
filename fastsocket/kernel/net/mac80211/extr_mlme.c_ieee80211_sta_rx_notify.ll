; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_sta_rx_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_sta_rx_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_rx_notify(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %4, align 8
  %5 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @is_multicast_ether_addr(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %13 = call i32 @ieee80211_sta_reset_conn_monitor(%struct.ieee80211_sub_if_data* %12)
  br label %14

14:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_sta_reset_conn_monitor(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
