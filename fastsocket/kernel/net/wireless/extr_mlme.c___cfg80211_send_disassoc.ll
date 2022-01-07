; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c___cfg80211_send_disassoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c___cfg80211_send_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_8__*, %struct.wiphy* }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CFG80211_SME_CONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cfg80211_send_disassoc(%struct.net_device* %0, i32* %1, i64 %2) #0 {
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
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %7, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 2
  %19 = load %struct.wiphy*, %struct.wiphy** %18, align 8
  store %struct.wiphy* %19, %struct.wiphy** %8, align 8
  %20 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %9, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = bitcast i32* %22 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %23, %struct.ieee80211_mgmt** %10, align 8
  %24 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %11, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @trace___cfg80211_send_disassoc(%struct.net_device* %27)
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %30 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %29)
  %31 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @nl80211_send_disassoc(%struct.cfg80211_registered_device* %31, %struct.net_device* %32, i32* %33, i64 %34, i32 %35)
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %38 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %99

43:                                               ; preds = %3
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %45 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %50 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @ether_addr_equal(i32 %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %48
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = call i32 @cfg80211_sme_disassoc(%struct.net_device* %59, %struct.TYPE_8__* %62)
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %65 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @cfg80211_unhold_bss(%struct.TYPE_8__* %66)
  %68 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @cfg80211_put_bss(%struct.wiphy* %68, %struct.TYPE_9__* %72)
  %74 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %75 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %74, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %75, align 8
  br label %78

76:                                               ; preds = %48, %43
  %77 = call i32 @WARN_ON(i32 1)
  br label %78

78:                                               ; preds = %76, %58
  %79 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %80 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %86 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @ether_addr_equal(i32 %87, i32* %90)
  %92 = icmp ne i64 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %13, align 4
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @__cfg80211_disconnected(%struct.net_device* %95, i32* null, i32 0, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %78, %42
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace___cfg80211_send_disassoc(%struct.net_device*) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @nl80211_send_disassoc(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i64, i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @cfg80211_sme_disassoc(%struct.net_device*, %struct.TYPE_8__*) #1

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_8__*) #1

declare dso_local i32 @cfg80211_put_bss(%struct.wiphy*, %struct.TYPE_9__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @__cfg80211_disconnected(%struct.net_device*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
