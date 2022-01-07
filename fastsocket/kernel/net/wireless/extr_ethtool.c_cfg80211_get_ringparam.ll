; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ethtool.c_cfg80211_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ethtool.c_cfg80211_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @cfg80211_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg80211_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  store %struct.wireless_dev* %9, %struct.wireless_dev** %5, align 8
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %11 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %12)
  store %struct.cfg80211_registered_device* %13, %struct.cfg80211_registered_device** %6, align 8
  %14 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %15 = call i32 @memset(%struct.ethtool_ringparam* %14, i32 0, i32 16)
  %16 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %17 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %24 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %24, i32 0, i32 3
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 2
  %28 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %28, i32 0, i32 1
  %30 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %30, i32 0, i32 0
  %32 = call i32 @rdev_get_ringparam(%struct.cfg80211_registered_device* %23, i32* %25, i32* %27, i32* %29, i32* %31)
  br label %33

33:                                               ; preds = %22, %2
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @memset(%struct.ethtool_ringparam*, i32, i32) #1

declare dso_local i32 @rdev_get_ringparam(%struct.cfg80211_registered_device*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
