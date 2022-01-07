; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_plink.c_mesh_plink_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_plink.c_mesh_plink_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@WLAN_REASON_MESH_PEER_CANCELED = common dso_local global i32 0, align 4
@WLAN_SP_MESH_PEERING_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_plink_deactivate(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %6 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %5, i32 0, i32 5
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_sub_if_data* %7, %struct.ieee80211_sub_if_data** %3, align 8
  %8 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %12 = call i32 @__mesh_plink_deactivate(%struct.sta_info* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @WLAN_REASON_MESH_PEER_CANCELED, align 4
  %14 = call i32 @cpu_to_le16(i32 %13)
  %15 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %18 = load i32, i32* @WLAN_SP_MESH_PEERING_CLOSE, align 4
  %19 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mesh_plink_frame_tx(%struct.ieee80211_sub_if_data* %17, i32 %18, i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__mesh_plink_deactivate(%struct.sta_info*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mesh_plink_frame_tx(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
