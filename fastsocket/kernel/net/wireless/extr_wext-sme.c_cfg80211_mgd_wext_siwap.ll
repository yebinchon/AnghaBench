; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_siwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i64, i32* }
%struct.cfg80211_registered_device = type { i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@CFG80211_SME_IDLE = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mgd_wext_siwap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %10, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %11, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
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
  br label %149

35:                                               ; preds = %4
  %36 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ARPHRD_ETHER, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %149

44:                                               ; preds = %35
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @is_zero_ether_addr(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = call i64 @is_broadcast_ether_addr(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44
  store i32* null, i32** %12, align 8
  br label %53

53:                                               ; preds = %52, %48
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %55 = call i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device* %54)
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %57 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %60 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %59, i32 0, i32 1
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %63 = call i32 @wdev_lock(%struct.wireless_dev* %62)
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %65 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CFG80211_SME_IDLE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %109

69:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %74 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %137

80:                                               ; preds = %72, %69
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %82 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load i32*, i32** %12, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32*, i32** %12, align 8
  %92 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %93 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @ether_addr_equal(i32* %91, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %137

100:                                              ; preds = %90, %87, %80
  %101 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %104 = call i32 @__cfg80211_disconnect(%struct.cfg80211_registered_device* %101, %struct.net_device* %102, i32 %103, i32 0)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %137

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %53
  %110 = load i32*, i32** %12, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %128

112:                                              ; preds = %109
  %113 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %114 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* @ETH_ALEN, align 4
  %119 = call i32 @memcpy(i32* %116, i32* %117, i32 %118)
  %120 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %121 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %125 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i32* %123, i32** %127, align 8
  br label %133

128:                                              ; preds = %109
  %129 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %130 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %128, %112
  %134 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %135 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %136 = call i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device* %134, %struct.wireless_dev* %135)
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %133, %107, %99, %79
  %138 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %139 = call i32 @wdev_unlock(%struct.wireless_dev* %138)
  %140 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %141 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %140, i32 0, i32 1
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %144 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %143, i32 0, i32 0
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %147 = call i32 @cfg80211_unlock_rdev(%struct.cfg80211_registered_device* %146)
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %137, %41, %32
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i32 @cfg80211_lock_rdev(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i32 @__cfg80211_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

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
