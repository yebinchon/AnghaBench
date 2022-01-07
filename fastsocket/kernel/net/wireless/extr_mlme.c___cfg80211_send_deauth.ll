; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c___cfg80211_send_deauth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c___cfg80211_send_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_7__*, %struct.wiphy* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.ieee80211_mgmt = type { i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CFG80211_SME_CONNECTED = common dso_local global i64 0, align 8
@CFG80211_SME_CONNECTING = common dso_local global i64 0, align 8
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cfg80211_send_deauth(%struct.net_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.ieee80211_mgmt*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %7, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 2
  %20 = load %struct.wiphy*, %struct.wiphy** %19, align 8
  store %struct.wiphy* %20, %struct.wiphy** %8, align 8
  %21 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %9, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = bitcast i32* %23 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %24, %struct.ieee80211_mgmt** %10, align 8
  %25 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %26 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @trace___cfg80211_send_deauth(%struct.net_device* %28)
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %31 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %30)
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %33 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %3
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %38 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @ether_addr_equal(i32 %42, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %36
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @cfg80211_unhold_bss(%struct.TYPE_7__* %49)
  %51 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %53 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @cfg80211_put_bss(%struct.wiphy* %51, %struct.TYPE_8__* %55)
  %57 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %58 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %57, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %58, align 8
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %46, %36, %3
  %60 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32 @nl80211_send_deauth(%struct.cfg80211_registered_device* %60, %struct.net_device* %61, i32* %62, i64 %63, i32 %64)
  %66 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %67 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %59
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %76 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %82 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @ether_addr_equal(i32 %83, i32* %86)
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %14, align 4
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @__cfg80211_disconnected(%struct.net_device* %91, i32* null, i32 0, i32 %92, i32 %93)
  br label %109

95:                                               ; preds = %71, %59
  %96 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %97 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CFG80211_SME_CONNECTING, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %104 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  %107 = call i32 @__cfg80211_connect_result(%struct.net_device* %102, i32* %105, i32* null, i32 0, i32* null, i32 0, i32 %106, i32 0, i32* null)
  br label %108

108:                                              ; preds = %101, %95
  br label %109

109:                                              ; preds = %108, %74
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace___cfg80211_send_deauth(%struct.net_device*) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_7__*) #1

declare dso_local i32 @cfg80211_put_bss(%struct.wiphy*, %struct.TYPE_8__*) #1

declare dso_local i32 @nl80211_send_deauth(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @__cfg80211_disconnected(%struct.net_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @__cfg80211_connect_result(%struct.net_device*, i32*, i32*, i32, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
