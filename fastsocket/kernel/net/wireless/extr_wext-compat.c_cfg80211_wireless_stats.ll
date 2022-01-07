; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wireless_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wireless_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_statistics = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.station_info = type { i32, i32, i32, i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@cfg80211_wireless_stats.wstats = internal global %struct.iw_statistics zeroinitializer, align 4
@cfg80211_wireless_stats.sinfo = internal global %struct.station_info zeroinitializer, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@STATION_INFO_SIGNAL = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_INVALID = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_INVALID = common dso_local global i32 0, align 4
@STATION_INFO_RX_DROP_MISC = common dso_local global i32 0, align 4
@STATION_INFO_TX_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iw_statistics* (%struct.net_device*)* @cfg80211_wireless_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iw_statistics* @cfg80211_wireless_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.iw_statistics*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  store %struct.wireless_dev* %12, %struct.wireless_dev** %4, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %15)
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %5, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %22, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  store i32 1, i32* %8, align 4
  br label %138

29:                                               ; preds = %1
  %30 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %31 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  store i32 1, i32* %8, align 4
  br label %138

37:                                               ; preds = %29
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %39 = call i32 @wdev_lock(%struct.wireless_dev* %38)
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %41 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %46 = call i32 @wdev_unlock(%struct.wireless_dev* %45)
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  store i32 1, i32* %8, align 4
  br label %138

47:                                               ; preds = %37
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32* %20, i32 %53, i32 %54)
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %57 = call i32 @wdev_unlock(%struct.wireless_dev* %56)
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i64 @rdev_get_station(%struct.cfg80211_registered_device* %58, %struct.net_device* %59, i32* %20, %struct.station_info* @cfg80211_wireless_stats.sinfo)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  store %struct.iw_statistics* null, %struct.iw_statistics** %2, align 8
  store i32 1, i32* %8, align 4
  br label %138

63:                                               ; preds = %47
  %64 = call i32 @memset(%struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 20)
  %65 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %66 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %113 [
    i32 129, label %69
    i32 128, label %98
  ]

69:                                               ; preds = %63
  %70 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 0), align 4
  %71 = load i32, i32* @STATION_INFO_SIGNAL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 1), align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %79 = load i32, i32* @IW_QUAL_QUAL_UPDATED, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %82 = load i32, i32* @IW_QUAL_DBM, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 0), align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, -110
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  store i32 -110, i32* %9, align 4
  br label %94

89:                                               ; preds = %74
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %90, -40
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 -40, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %89
  br label %94

94:                                               ; preds = %93, %88
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 110
  store i32 %96, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 1), align 4
  br label %120

97:                                               ; preds = %69
  br label %98

98:                                               ; preds = %63, %97
  %99 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 0), align 4
  %100 = load i32, i32* @STATION_INFO_SIGNAL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %107 = load i32, i32* @IW_QUAL_QUAL_UPDATED, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 1), align 4
  store i32 %110, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 0), align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 1), align 4
  store i32 %111, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 1), align 4
  br label %120

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %63, %112
  %114 = load i32, i32* @IW_QUAL_LEVEL_INVALID, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %117 = load i32, i32* @IW_QUAL_QUAL_INVALID, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  br label %120

120:                                              ; preds = %113, %103, %94
  %121 = load i32, i32* @IW_QUAL_NOISE_INVALID, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 1, i32 2), align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 0), align 4
  %125 = load i32, i32* @STATION_INFO_RX_DROP_MISC, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 3), align 4
  store i32 %129, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 0, i32 1), align 4
  br label %130

130:                                              ; preds = %128, %120
  %131 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 0), align 4
  %132 = load i32, i32* @STATION_INFO_TX_FAILED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* getelementptr inbounds (%struct.station_info, %struct.station_info* @cfg80211_wireless_stats.sinfo, i32 0, i32 2), align 4
  store i32 %136, i32* getelementptr inbounds (%struct.iw_statistics, %struct.iw_statistics* @cfg80211_wireless_stats.wstats, i32 0, i32 0, i32 0), align 4
  br label %137

137:                                              ; preds = %135, %130
  store %struct.iw_statistics* @cfg80211_wireless_stats.wstats, %struct.iw_statistics** %2, align 8
  store i32 1, i32* %8, align 4
  br label %138

138:                                              ; preds = %137, %62, %44, %36, %28
  %139 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load %struct.iw_statistics*, %struct.iw_statistics** %2, align 8
  ret %struct.iw_statistics* %140
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @rdev_get_station(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, %struct.station_info*) #1

declare dso_local i32 @memset(%struct.iw_statistics*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
