; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwessid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i64, i32 }
%struct.cfg80211_registered_device = type { i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CFG80211_SME_IDLE = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mgd_wext_siwessid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i64, align 8
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
  %22 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %23 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %166

36:                                               ; preds = %4
  %37 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %38 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i64, i64* %12, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub i64 %47, 1
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %53, %45, %42
  %57 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %58 = call i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device* %57)
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %60 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %63 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %62, i32 0, i32 1
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %66 = call i32 @wdev_lock(%struct.wireless_dev* %65)
  store i32 0, i32* %13, align 4
  %67 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %68 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CFG80211_SME_IDLE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %115

72:                                               ; preds = %56
  store i32 1, i32* %14, align 4
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %74 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %72
  %80 = load i64, i64* %12, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %85 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %83, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %92 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i64 @memcmp(i64 %95, i8* %96, i64 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %154

101:                                              ; preds = %90, %82, %79, %72
  %102 = load i64, i64* %12, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 0, i32* %14, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %107 = load %struct.net_device*, %struct.net_device** %6, align 8
  %108 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @__cfg80211_disconnect(%struct.cfg80211_registered_device* %106, %struct.net_device* %107, i32 %108, i32 %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %154

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %56
  %116 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %117 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %120 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %124 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  store i64 %122, i64* %126, align 8
  %127 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %128 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i64, i64* %12, align 8
  %133 = call i32 @memcpy(i64 %130, i8* %131, i64 %132)
  %134 = load i64, i64* %12, align 8
  %135 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %136 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i64 %134, i64* %138, align 8
  %139 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %140 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  %144 = load i32, i32* @ETH_P_PAE, align 4
  %145 = call i32 @cpu_to_be16(i32 %144)
  %146 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %147 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  store i32 %145, i32* %150, align 4
  %151 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %152 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %153 = call i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device* %151, %struct.wireless_dev* %152)
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %115, %113, %100
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

166:                                              ; preds = %154, %33
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i64 @memcmp(i64, i8*, i64) #1

declare dso_local i32 @__cfg80211_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

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
