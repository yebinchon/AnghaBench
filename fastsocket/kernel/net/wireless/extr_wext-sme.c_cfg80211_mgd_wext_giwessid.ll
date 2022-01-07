; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_giwessid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_giwessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mgd_wext_giwessid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca i64*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %14, %struct.wireless_dev** %10, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %100

26:                                               ; preds = %4
  %27 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %28 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %30 = call i32 @wdev_lock(%struct.wireless_dev* %29)
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %32 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %26
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %38 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* @WLAN_EID_SSID, align 4
  %42 = call i64* @ieee80211_bss_get_ie(i32* %40, i32 %41)
  store i64* %42, i64** %11, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %35
  %46 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %47 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %52 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i64*, i64** %11, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  %56 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %57 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcpy(i8* %53, i64* %55, i64 %58)
  br label %60

60:                                               ; preds = %45, %35
  %61 = call i32 (...) @rcu_read_unlock()
  br label %97

62:                                               ; preds = %26
  %63 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %64 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %96

69:                                               ; preds = %62
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %71 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %78 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %80 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %85 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %88 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %93 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @memcpy(i8* %86, i64* %91, i64 %94)
  br label %96

96:                                               ; preds = %76, %69, %62
  br label %97

97:                                               ; preds = %96, %60
  %98 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %99 = call i32 @wdev_unlock(%struct.wireless_dev* %98)
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %23
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64* @ieee80211_bss_get_ie(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
