; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_cfg80211_leave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_cfg80211_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.wireless_dev = type { i32, i64, %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_AUTOMATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_leave(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %3, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %4, align 8
  %6 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %7 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %6, i32 0, i32 3
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %10 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %41 [
    i32 133, label %12
    i32 130, label %16
    i32 128, label %16
    i32 131, label %33
    i32 132, label %37
    i32 129, label %37
  ]

12:                                               ; preds = %2
  %13 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @cfg80211_leave_ibss(%struct.cfg80211_registered_device* %13, %struct.net_device* %14, i32 1)
  br label %42

16:                                               ; preds = %2, %2
  %17 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %18 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %21 = call i32 @__cfg80211_stop_sched_scan(%struct.cfg80211_registered_device* %20, i32 0)
  %22 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %23 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %26 = call i32 @wdev_lock(%struct.wireless_dev* %25)
  %27 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %30 = call i32 @__cfg80211_disconnect(%struct.cfg80211_registered_device* %27, %struct.net_device* %28, i32 %29, i32 1)
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %32 = call i32 @wdev_unlock(%struct.wireless_dev* %31)
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @cfg80211_leave_mesh(%struct.cfg80211_registered_device* %34, %struct.net_device* %35)
  br label %42

37:                                               ; preds = %2, %2
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call i32 @cfg80211_stop_ap(%struct.cfg80211_registered_device* %38, %struct.net_device* %39)
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %37, %33, %16, %12
  %43 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %44 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  ret void
}

declare dso_local i32 @cfg80211_leave_ibss(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__cfg80211_stop_sched_scan(%struct.cfg80211_registered_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @__cfg80211_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_leave_mesh(%struct.cfg80211_registered_device*, %struct.net_device*) #1

declare dso_local i32 @cfg80211_stop_ap(%struct.cfg80211_registered_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
