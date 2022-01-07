; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_wext_siwgenie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_wext_siwgenie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8* }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CFG80211_SME_IDLE = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_wext_siwgenie(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %10, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %11, align 8
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %12, align 8
  %23 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %24 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %105

34:                                               ; preds = %4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i8* null, i8** %12, align 8
  br label %38

38:                                               ; preds = %37, %34
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %40 = call i32 @wdev_lock(%struct.wireless_dev* %39)
  store i32 0, i32* %14, align 4
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i64 @memcmp(i8* %51, i8* %52, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %101

57:                                               ; preds = %47, %38
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kmemdup(i8* %61, i32 %62, i32 %63)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %101

70:                                               ; preds = %60
  br label %72

71:                                               ; preds = %57
  store i8* null, i8** %12, align 8
  br label %72

72:                                               ; preds = %71, %70
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %74 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @kfree(i8* %76)
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %80 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i8* %78, i8** %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %84 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %87 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CFG80211_SME_IDLE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %72
  %92 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %95 = call i32 @__cfg80211_disconnect(%struct.cfg80211_registered_device* %92, %struct.net_device* %93, i32 %94, i32 0)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %101

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %72
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %100, %98, %67, %56
  %102 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %103 = call i32 @wdev_unlock(%struct.wireless_dev* %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %31
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @__cfg80211_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
