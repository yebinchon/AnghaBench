; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_radar_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_radar_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_DFS_UNAVAILABLE = common dso_local global i32 0, align 4
@IEEE80211_DFS_MIN_NOP_TIME_MS = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4
@NL80211_RADAR_DETECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_radar_event(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1, i32 %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %9)
  store %struct.cfg80211_registered_device* %10, %struct.cfg80211_registered_device** %7, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %12 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %13 = call i32 @trace_cfg80211_radar_event(%struct.wiphy* %11, %struct.cfg80211_chan_def* %12)
  %14 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %15 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %16 = load i32, i32* @NL80211_DFS_UNAVAILABLE, align 4
  %17 = call i32 @cfg80211_set_dfs_state(%struct.wiphy* %14, %struct.cfg80211_chan_def* %15, i32 %16)
  %18 = load i32, i32* @IEEE80211_DFS_MIN_NOP_TIME_MS, align 4
  %19 = call i64 @msecs_to_jiffies(i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* @cfg80211_wq, align 4
  %21 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %22 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %21, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @queue_delayed_work(i32 %20, i32* %22, i64 %23)
  %25 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %26 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %27 = load i32, i32* @NL80211_RADAR_DETECTED, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @nl80211_radar_notify(%struct.cfg80211_registered_device* %25, %struct.cfg80211_chan_def* %26, i32 %27, i32* null, i32 %28)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_radar_event(%struct.wiphy*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_set_dfs_state(%struct.wiphy*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @nl80211_radar_notify(%struct.cfg80211_registered_device*, %struct.cfg80211_chan_def*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
