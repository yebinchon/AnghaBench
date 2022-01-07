; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_cfg80211_get_dev_from_ifindex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_cfg80211_get_dev_from_ifindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@cfg80211_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cfg80211_registered_device* @cfg80211_get_dev_from_ifindex(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  %9 = call %struct.cfg80211_registered_device* @ERR_PTR(i32 %8)
  store %struct.cfg80211_registered_device* %9, %struct.cfg80211_registered_device** %5, align 8
  %10 = call i32 @mutex_lock(i32* @cfg80211_mutex)
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.net_device* @dev_get_by_index(%struct.net* %11, i32 %12)
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %27)
  store %struct.cfg80211_registered_device* %28, %struct.cfg80211_registered_device** %5, align 8
  %29 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %30 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  br label %36

32:                                               ; preds = %17
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.cfg80211_registered_device* @ERR_PTR(i32 %34)
  store %struct.cfg80211_registered_device* %35, %struct.cfg80211_registered_device** %5, align 8
  br label %36

36:                                               ; preds = %32, %22
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = call i32 @dev_put(%struct.net_device* %37)
  br label %39

39:                                               ; preds = %36, %16
  %40 = call i32 @mutex_unlock(i32* @cfg80211_mutex)
  %41 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  ret %struct.cfg80211_registered_device* %41
}

declare dso_local %struct.cfg80211_registered_device* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
