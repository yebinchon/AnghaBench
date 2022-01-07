; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_bitrate_mask = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_NUM_BANDS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @cfg80211_wext_siwrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_siwrate(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.cfg80211_bitrate_mask, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_supported_band*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee80211_rate*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %21, align 8
  store %struct.wireless_dev* %22, %struct.wireless_dev** %10, align 8
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.TYPE_6__* %25)
  store %struct.cfg80211_registered_device* %26, %struct.cfg80211_registered_device** %11, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %28 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %140

36:                                               ; preds = %4
  %37 = call i32 @memset(%struct.cfg80211_bitrate_mask* %12, i32 0, i32 8)
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %38 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %39 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %59

43:                                               ; preds = %36
  %44 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %45 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %50 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 100000
  store i32 %52, i32* %13, align 4
  br label %58

53:                                               ; preds = %43
  %54 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %55 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 100000
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %42
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %127, %59
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @IEEE80211_NUM_BANDS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %130

64:                                               ; preds = %60
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %66 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %69, i64 %71
  %73 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %72, align 8
  store %struct.ieee80211_supported_band* %73, %struct.ieee80211_supported_band** %15, align 8
  %74 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %75 = icmp eq %struct.ieee80211_supported_band* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %127

77:                                               ; preds = %64
  store i32 0, i32* %17, align 4
  br label %78

78:                                               ; preds = %123, %77
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %81 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %126

84:                                               ; preds = %78
  %85 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %86 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %85, i32 0, i32 1
  %87 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %87, i64 %89
  store %struct.ieee80211_rate* %90, %struct.ieee80211_rate** %19, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %19, align 8
  %93 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %84
  %97 = load i32, i32* %17, align 4
  %98 = shl i32 1, %97
  %99 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %12, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 %98, i32* %104, align 4
  store i32 1, i32* %18, align 4
  br label %126

105:                                              ; preds = %84
  %106 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %19, align 8
  %107 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load i32, i32* %17, align 4
  %113 = shl i32 1, %112
  %114 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %12, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %113
  store i32 %121, i32* %119, align 4
  store i32 1, i32* %18, align 4
  br label %122

122:                                              ; preds = %111, %105
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %78

126:                                              ; preds = %96, %78
  br label %127

127:                                              ; preds = %126, %76
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %60

130:                                              ; preds = %60
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %140

136:                                              ; preds = %130
  %137 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %138 = load %struct.net_device*, %struct.net_device** %6, align 8
  %139 = call i32 @rdev_set_bitrate_mask(%struct.cfg80211_registered_device* %137, %struct.net_device* %138, i32* null, %struct.cfg80211_bitrate_mask* %12)
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %133, %33
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(%struct.cfg80211_bitrate_mask*, i32, i32) #1

declare dso_local i32 @rdev_set_bitrate_mask(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, %struct.cfg80211_bitrate_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
