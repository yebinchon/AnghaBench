; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_giwrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_giwrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.station_info = type { i32, i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@cfg80211_wext_giwrate.sinfo = internal global %struct.station_info zeroinitializer, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@STATION_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @cfg80211_wext_giwrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_giwrate(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  store %struct.wireless_dev* %18, %struct.wireless_dev** %10, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %20 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %11, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %28 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %92

35:                                               ; preds = %4
  %36 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %37 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %92

45:                                               ; preds = %35
  store i32 0, i32* %14, align 4
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %47 = call i32 @wdev_lock(%struct.wireless_dev* %46)
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 @memcpy(i32* %26, i32 %58, i32 %59)
  br label %64

61:                                               ; preds = %45
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %61, %52
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %66 = call i32 @wdev_unlock(%struct.wireless_dev* %65)
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %92

71:                                               ; preds = %64
  %72 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = call i32 @rdev_get_station(%struct.cfg80211_registered_device* %72, %struct.net_device* %73, i32* %26, %struct.station_info* @cfg80211_wext_giwrate.sinfo)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %92

79:                                               ; preds = %71
  %80 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wext_giwrate.sinfo, i32 0, i32 0), align 4
  %81 = load i32, i32* @STATION_INFO_TX_BITRATE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %92

87:                                               ; preds = %79
  %88 = call i32 @cfg80211_calculate_bitrate(i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wext_giwrate.sinfo, i32 0, i32 1))
  %89 = mul nsw i32 100000, %88
  %90 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %91 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %92

92:                                               ; preds = %87, %84, %77, %69, %42, %32
  %93 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_get_station(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, %struct.station_info*) #1

declare dso_local i32 @cfg80211_calculate_bitrate(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
