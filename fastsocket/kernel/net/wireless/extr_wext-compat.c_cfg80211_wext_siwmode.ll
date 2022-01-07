; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.vif_params = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_wext_siwmode(%struct.net_device* %0, %struct.iw_request_info* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.vif_params, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %10, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %11, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %32 [
    i32 130, label %24
    i32 131, label %26
    i32 128, label %28
    i32 129, label %30
  ]

24:                                               ; preds = %4
  %25 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  store i32 %25, i32* %13, align 4
  br label %35

26:                                               ; preds = %4
  %27 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  store i32 %27, i32* %13, align 4
  br label %35

28:                                               ; preds = %4
  %29 = load i32, i32* @NL80211_IFTYPE_WDS, align 4
  store i32 %29, i32* %13, align 4
  br label %35

30:                                               ; preds = %4
  %31 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  store i32 %31, i32* %13, align 4
  br label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %53

35:                                               ; preds = %30, %28, %26, %24
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %38 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %53

42:                                               ; preds = %35
  %43 = call i32 @memset(%struct.vif_params* %12, i32 0, i32 4)
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %45 = call i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device* %44)
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @cfg80211_change_iface(%struct.cfg80211_registered_device* %46, %struct.net_device* %47, i32 %48, i32* null, %struct.vif_params* %12)
  store i32 %49, i32* %14, align 4
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %51 = call i32 @cfg80211_unlock_rdev(%struct.cfg80211_registered_device* %50)
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %42, %41, %32
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @memset(%struct.vif_params*, i32, i32) #1

declare dso_local i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @cfg80211_change_iface(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, %struct.vif_params*) #1

declare dso_local i32 @cfg80211_unlock_rdev(%struct.cfg80211_registered_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
