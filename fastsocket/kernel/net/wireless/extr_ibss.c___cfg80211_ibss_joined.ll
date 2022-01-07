; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ibss.c___cfg80211_ibss_joined.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ibss.c___cfg80211_ibss_joined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cfg80211_bss = type { i32 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@CFG80211_SME_CONNECTED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cfg80211_ibss_joined(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_bss*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  store %struct.wireless_dev* %9, %struct.wireless_dev** %5, align 8
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %11 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %85

19:                                               ; preds = %2
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %85

25:                                               ; preds = %19
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %31 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %37 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %38 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %28, i32* null, i32* %29, i32 %32, i32 %35, i32 %36, i32 %37)
  store %struct.cfg80211_bss* %38, %struct.cfg80211_bss** %6, align 8
  %39 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %40 = icmp ne %struct.cfg80211_bss* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  br label %85

46:                                               ; preds = %25
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %53 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %52, i32 0, i32 3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i32 @cfg80211_unhold_bss(%struct.TYPE_6__* %54)
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %57 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %60 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %59, i32 0, i32 3
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @cfg80211_put_bss(i32 %58, i32* %62)
  br label %64

64:                                               ; preds = %51, %46
  %65 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %66 = call %struct.TYPE_6__* @bss_from_pub(%struct.cfg80211_bss* %65)
  %67 = call i32 @cfg80211_hold_bss(%struct.TYPE_6__* %66)
  %68 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %69 = call %struct.TYPE_6__* @bss_from_pub(%struct.cfg80211_bss* %68)
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %71 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %70, i32 0, i32 3
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %71, align 8
  %72 = load i32, i32* @CFG80211_SME_CONNECTED, align 4
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %74 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %76 = call i32 @cfg80211_upload_connect_keys(%struct.wireless_dev* %75)
  %77 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %78 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @wiphy_to_dev(i32 %79)
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i32 @nl80211_send_ibss_bssid(i32 %80, %struct.net_device* %81, i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %64, %45, %24, %18
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_6__*) #1

declare dso_local i32 @cfg80211_put_bss(i32, i32*) #1

declare dso_local i32 @cfg80211_hold_bss(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @bss_from_pub(%struct.cfg80211_bss*) #1

declare dso_local i32 @cfg80211_upload_connect_keys(%struct.wireless_dev*) #1

declare dso_local i32 @nl80211_send_ibss_bssid(i32, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @wiphy_to_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
