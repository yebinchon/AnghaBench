; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c___cfg80211_mlme_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c___cfg80211_mlme_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_auth_request = type { i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32 }

@NL80211_AUTHTYPE_SHARED_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CHAN_MODE_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cfg80211_mlme_auth(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.ieee80211_channel* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32* %7, i32 %8, i32* %9, i32 %10, i32 %11, i32* %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.cfg80211_registered_device*, align 8
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca %struct.ieee80211_channel*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.wireless_dev*, align 8
  %31 = alloca %struct.cfg80211_auth_request, align 8
  %32 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %16, align 8
  store %struct.net_device* %1, %struct.net_device** %17, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %18, align 8
  store i32 %3, i32* %19, align 4
  store i32* %4, i32** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32 %6, i32* %22, align 4
  store i32* %7, i32** %23, align 8
  store i32 %8, i32* %24, align 4
  store i32* %9, i32** %25, align 8
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32* %12, i32** %28, align 8
  store i32 %13, i32* %29, align 4
  %33 = load %struct.net_device*, %struct.net_device** %17, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %34, align 8
  store %struct.wireless_dev* %35, %struct.wireless_dev** %30, align 8
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %30, align 8
  %37 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %36)
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* @NL80211_AUTHTYPE_SHARED_KEY, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %14
  %42 = load i32*, i32** %25, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32, i32* %26, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %27, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %27, align 4
  %52 = icmp sgt i32 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %47, %44, %41
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %15, align 4
  br label %132

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %14
  %58 = load %struct.wireless_dev*, %struct.wireless_dev** %30, align 8
  %59 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp ne %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load i32*, i32** %20, align 8
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %30, align 8
  %65 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ether_addr_equal(i32* %63, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* @EALREADY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %15, align 4
  br label %132

75:                                               ; preds = %62, %57
  %76 = call i32 @memset(%struct.cfg80211_auth_request* %31, i32 0, i32 56)
  %77 = load i32*, i32** %23, align 8
  %78 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 8
  store i32* %77, i32** %78, align 8
  %79 = load i32, i32* %24, align 4
  %80 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load i32*, i32** %28, align 8
  %82 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 7
  store i32* %81, i32** %82, align 8
  %83 = load i32, i32* %29, align 4
  %84 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %19, align 4
  %86 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %16, align 8
  %88 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %87, i32 0, i32 0
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %90 = load i32*, i32** %20, align 8
  %91 = load i32*, i32** %21, align 8
  %92 = load i32, i32* %22, align 4
  %93 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %94 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %95 = call %struct.TYPE_7__* @cfg80211_get_bss(i32* %88, %struct.ieee80211_channel* %89, i32* %90, i32* %91, i32 %92, i32 %93, i32 %94)
  %96 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 5
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %96, align 8
  %97 = load i32*, i32** %25, align 8
  %98 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 6
  store i32* %97, i32** %98, align 8
  %99 = load i32, i32* %26, align 4
  %100 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 3
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %27, align 4
  %102 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 4
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 5
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = icmp ne %struct.TYPE_7__* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %75
  %107 = load i32, i32* @ENOENT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %15, align 4
  br label %132

109:                                              ; preds = %75
  %110 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %16, align 8
  %111 = load %struct.wireless_dev*, %struct.wireless_dev** %30, align 8
  %112 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 5
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %117 = call i32 @cfg80211_can_use_chan(%struct.cfg80211_registered_device* %110, %struct.wireless_dev* %111, i32 %115, i32 %116)
  store i32 %117, i32* %32, align 4
  %118 = load i32, i32* %32, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %125

121:                                              ; preds = %109
  %122 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %16, align 8
  %123 = load %struct.net_device*, %struct.net_device** %17, align 8
  %124 = call i32 @rdev_auth(%struct.cfg80211_registered_device* %122, %struct.net_device* %123, %struct.cfg80211_auth_request* %31)
  store i32 %124, i32* %32, align 4
  br label %125

125:                                              ; preds = %121, %120
  %126 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %16, align 8
  %127 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %31, i32 0, i32 5
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = call i32 @cfg80211_put_bss(i32* %127, %struct.TYPE_7__* %129)
  %131 = load i32, i32* %32, align 4
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %125, %106, %72, %53
  %133 = load i32, i32* %15, align 4
  ret i32 %133
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @memset(%struct.cfg80211_auth_request*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @cfg80211_get_bss(i32*, %struct.ieee80211_channel*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_can_use_chan(%struct.cfg80211_registered_device*, %struct.wireless_dev*, i32, i32) #1

declare dso_local i32 @rdev_auth(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_auth_request*) #1

declare dso_local i32 @cfg80211_put_bss(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
