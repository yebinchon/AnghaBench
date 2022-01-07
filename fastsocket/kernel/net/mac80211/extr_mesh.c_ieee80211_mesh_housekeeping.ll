; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_housekeeping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_ieee80211_mesh_housekeeping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i32 }

@IEEE80211_MESH_PEER_INACTIVITY_LIMIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_MESH_HOUSEKEEPING_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_mesh_housekeeping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_mesh_housekeeping(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_if_mesh*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %7, %struct.ieee80211_if_mesh** %3, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %9 = load i32, i32* @IEEE80211_MESH_PEER_INACTIVITY_LIMIT, align 4
  %10 = call i32 @ieee80211_sta_expire(%struct.ieee80211_sub_if_data* %8, i32 %9)
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %12 = call i32 @mesh_path_expire(%struct.ieee80211_sub_if_data* %11)
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %14 = call i32 @mesh_accept_plinks_update(%struct.ieee80211_sub_if_data* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ieee80211_mbss_info_change_notify(%struct.ieee80211_sub_if_data* %15, i32 %16)
  %18 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %18, i32 0, i32 0
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* @IEEE80211_MESH_HOUSEKEEPING_INTERVAL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @round_jiffies(i64 %22)
  %24 = call i32 @mod_timer(i32* %19, i32 %23)
  ret void
}

declare dso_local i32 @ieee80211_sta_expire(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @mesh_path_expire(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mesh_accept_plinks_update(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_mbss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
