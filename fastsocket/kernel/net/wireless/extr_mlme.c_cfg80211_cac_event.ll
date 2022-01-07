; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_cac_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_cac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i64, i32, %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@IEEE80211_DFS_MIN_CAC_TIME_MS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NL80211_DFS_AVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_cac_event(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.cfg80211_chan_def, align 4
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %14, %struct.wireless_dev** %7, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 3
  %17 = load %struct.wiphy*, %struct.wiphy** %16, align 8
  store %struct.wiphy* %17, %struct.wiphy** %8, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %19 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %18)
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %9, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @trace_cfg80211_cac_event(%struct.net_device* %20, i32 %21)
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %77

32:                                               ; preds = %3
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %77

42:                                               ; preds = %32
  %43 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %44 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %47 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %10, i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  switch i32 %48, label %67 [
    i32 128, label %49
    i32 129, label %66
  ]

49:                                               ; preds = %42
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %51 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @IEEE80211_DFS_MIN_CAC_TIME_MS, align 4
  %54 = call i64 @msecs_to_jiffies(i32 %53)
  %55 = add i64 %52, %54
  store i64 %55, i64* %11, align 8
  %56 = load i32, i32* @jiffies, align 4
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @time_after_eq(i32 %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @WARN_ON(i32 %61)
  %63 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %64 = load i32, i32* @NL80211_DFS_AVAILABLE, align 4
  %65 = call i32 @cfg80211_set_dfs_state(%struct.wiphy* %63, %struct.cfg80211_chan_def* %10, i32 %64)
  br label %69

66:                                               ; preds = %42
  br label %69

67:                                               ; preds = %42
  %68 = call i64 @WARN_ON(i32 1)
  br label %77

69:                                               ; preds = %66, %49
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %71 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @nl80211_radar_notify(%struct.cfg80211_registered_device* %72, %struct.cfg80211_chan_def* %10, i32 %73, %struct.net_device* %74, i32 %75)
  br label %77

77:                                               ; preds = %69, %67, %41, %31
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_cac_event(%struct.net_device*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after_eq(i32, i64) #1

declare dso_local i32 @cfg80211_set_dfs_state(%struct.wiphy*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @nl80211_radar_notify(%struct.cfg80211_registered_device*, %struct.cfg80211_chan_def*, i32, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
