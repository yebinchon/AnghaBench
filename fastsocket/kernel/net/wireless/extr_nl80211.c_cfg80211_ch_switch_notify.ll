; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_ch_switch_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_ch_switch_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32, %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_ch_switch_notify(%struct.net_device* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  store %struct.wireless_dev* %10, %struct.wireless_dev** %5, align 8
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 2
  %13 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  store %struct.wiphy* %13, %struct.wiphy** %6, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %15 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %14)
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %18 = call i32 @trace_cfg80211_ch_switch_notify(%struct.net_device* %16, %struct.cfg80211_chan_def* %17)
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %20 = call i32 @wdev_lock(%struct.wireless_dev* %19)
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %28 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %26, %2
  %33 = phi i1 [ false, %2 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %49

38:                                               ; preds = %32
  %39 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %40 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @nl80211_ch_switch_notify(%struct.cfg80211_registered_device* %44, %struct.net_device* %45, %struct.cfg80211_chan_def* %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %37
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %51 = call i32 @wdev_unlock(%struct.wireless_dev* %50)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_ch_switch_notify(%struct.net_device*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nl80211_ch_switch_notify(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
