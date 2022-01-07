; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_giwfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_giwfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_chan_def = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @cfg80211_wext_giwfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_giwfreq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.cfg80211_chan_def, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %10, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %11, align 8
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %63 [
    i32 128, label %24
    i32 130, label %30
    i32 129, label %36
  ]

24:                                               ; preds = %4
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %27 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @cfg80211_mgd_wext_giwfreq(%struct.net_device* %25, %struct.iw_request_info* %26, %struct.iw_freq* %27, i8* %28)
  store i32 %29, i32* %5, align 4
  br label %66

30:                                               ; preds = %4
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %33 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @cfg80211_ibss_wext_giwfreq(%struct.net_device* %31, %struct.iw_request_info* %32, %struct.iw_freq* %33, i8* %34)
  store i32 %35, i32* %5, align 4
  br label %66

36:                                               ; preds = %4
  %37 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %38 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %66

46:                                               ; preds = %36
  %47 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %49 = call i32 @rdev_get_channel(%struct.cfg80211_registered_device* %47, %struct.wireless_dev* %48, %struct.cfg80211_chan_def* %12)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %66

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %60 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %62 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %61, i32 0, i32 0
  store i32 6, i32* %62, align 4
  store i32 0, i32* %5, align 4
  br label %66

63:                                               ; preds = %4
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %54, %52, %43, %30, %24
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @cfg80211_mgd_wext_giwfreq(%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*) #1

declare dso_local i32 @cfg80211_ibss_wext_giwfreq(%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*) #1

declare dso_local i32 @rdev_get_channel(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
