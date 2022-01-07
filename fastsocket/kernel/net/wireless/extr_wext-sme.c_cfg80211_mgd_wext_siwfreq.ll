; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32, i32 }
%struct.cfg80211_chan_def = type { i32, i8*, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@CFG80211_SME_IDLE = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mgd_wext_siwfreq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.ieee80211_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cfg80211_chan_def, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  store %struct.wireless_dev* %19, %struct.wireless_dev** %10, align 8
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32* %22)
  store %struct.cfg80211_registered_device* %23, %struct.cfg80211_registered_device** %11, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %12, align 8
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %166

35:                                               ; preds = %4
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %37 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %40 = call i32 @cfg80211_wext_freq(i32* %38, %struct.iw_freq* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %5, align 4
  br label %166

45:                                               ; preds = %35
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %50 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i8* @ieee80211_get_channel(i32* %51, i32 %52)
  %54 = bitcast i8* %53 to %struct.ieee80211_channel*
  store %struct.ieee80211_channel* %54, %struct.ieee80211_channel** %12, align 8
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %56 = icmp ne %struct.ieee80211_channel* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %166

60:                                               ; preds = %48
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %62 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %166

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %45
  %72 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %73 = call i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device* %72)
  %74 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %75 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %74, i32 0, i32 0
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %78 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %77, i32 0, i32 1
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %81 = call i32 @wdev_lock(%struct.wireless_dev* %80)
  %82 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %83 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CFG80211_SME_IDLE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %71
  store i32 1, i32* %15, align 4
  %88 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %89 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %91, align 8
  %93 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %94 = icmp eq %struct.ieee80211_channel* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 0, i32* %13, align 4
  br label %154

96:                                               ; preds = %87
  %97 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %98 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %103, %96
  %105 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @__cfg80211_disconnect(%struct.cfg80211_registered_device* %105, %struct.net_device* %106, i32 %107, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %154

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %71
  %115 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %116 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %117 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store %struct.ieee80211_channel* %115, %struct.ieee80211_channel** %119, align 8
  %120 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %121 = icmp ne %struct.ieee80211_channel* %120, null
  br i1 %121, label %122, label %150

122:                                              ; preds = %114
  %123 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %124 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %150, label %129

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 0
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %130, align 8
  %132 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 1
  store i8* null, i8** %132, align 8
  %133 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 2
  %134 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  store i32 %134, i32* %133, align 8
  %135 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %136 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %135, i32 0, i32 2
  %137 = load i32, i32* %14, align 4
  %138 = call i8* @ieee80211_get_channel(i32* %136, i32 %137)
  %139 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 1
  store i8* %138, i8** %139, align 8
  %140 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %129
  %144 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %145 = call i32 @cfg80211_set_monitor_channel(%struct.cfg80211_registered_device* %144, %struct.cfg80211_chan_def* %16)
  store i32 %145, i32* %13, align 4
  br label %149

146:                                              ; preds = %129
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %146, %143
  br label %154

150:                                              ; preds = %122, %114
  %151 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %152 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %153 = call i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device* %151, %struct.wireless_dev* %152)
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %150, %149, %112, %95
  %155 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %156 = call i32 @wdev_unlock(%struct.wireless_dev* %155)
  %157 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %158 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %157, i32 0, i32 1
  %159 = call i32 @mutex_unlock(i32* %158)
  %160 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %161 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %160, i32 0, i32 0
  %162 = call i32 @mutex_unlock(i32* %161)
  %163 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %164 = call i32 @cfg80211_unlock_rdev(%struct.cfg80211_registered_device* %163)
  %165 = load i32, i32* %13, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %154, %67, %57, %43, %32
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_wext_freq(i32*, %struct.iw_freq*) #1

declare dso_local i8* @ieee80211_get_channel(i32*, i32) #1

declare dso_local i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @__cfg80211_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @cfg80211_set_monitor_channel(%struct.cfg80211_registered_device*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cfg80211_unlock_rdev(%struct.cfg80211_registered_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
