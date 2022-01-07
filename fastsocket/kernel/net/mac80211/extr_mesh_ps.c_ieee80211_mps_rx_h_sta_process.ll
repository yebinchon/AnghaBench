; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_ieee80211_mps_rx_h_sta_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_ieee80211_mps_rx_h_sta_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mps_rx_h_sta_process(%struct.sta_info* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %4, align 8
  %5 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @is_unicast_ether_addr(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ieee80211_is_data_qos(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %19 = call i32 @mps_set_sta_peer_pm(%struct.sta_info* %17, %struct.ieee80211_hdr* %18)
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %21 = call i32 @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %20)
  %22 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %23 = call i32 @ieee80211_mpsp_trigger_process(i32 %21, %struct.sta_info* %22, i32 0, i32 0)
  br label %28

24:                                               ; preds = %10, %2
  %25 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %26 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %27 = call i32 @mps_set_sta_nonpeer_pm(%struct.sta_info* %25, %struct.ieee80211_hdr* %26)
  br label %28

28:                                               ; preds = %24, %16
  ret void
}

declare dso_local i64 @is_unicast_ether_addr(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @mps_set_sta_peer_pm(%struct.sta_info*, %struct.ieee80211_hdr*) #1

declare dso_local i32 @ieee80211_mpsp_trigger_process(i32, %struct.sta_info*, i32, i32) #1

declare dso_local i32 @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @mps_set_sta_nonpeer_pm(%struct.sta_info*, %struct.ieee80211_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
