; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_mlme_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_mlme_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cfg80211_deauth_request = type { i32*, i64, i32*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_mlme_down(%struct.cfg80211_registered_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_deauth_request, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  store %struct.wireless_dev* %12, %struct.wireless_dev** %5, align 8
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %18 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %17)
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %69

26:                                               ; preds = %2
  %27 = call i32 @memset(%struct.cfg80211_deauth_request* %6, i32 0, i32 32)
  %28 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %29 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %6, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %6, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %6, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %33 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %69

37:                                               ; preds = %26
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %39 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memcpy(i32* %16, i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.cfg80211_deauth_request, %struct.cfg80211_deauth_request* %6, i32 0, i32 0
  store i32* %16, i32** %46, align 8
  %47 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i32 @rdev_deauth(%struct.cfg80211_registered_device* %47, %struct.net_device* %48, %struct.cfg80211_deauth_request* %6)
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %51 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %37
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @cfg80211_unhold_bss(%struct.TYPE_5__* %57)
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %60 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %59, i32 0, i32 0
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %62 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @cfg80211_put_bss(i32* %60, %struct.TYPE_6__* %64)
  %66 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %67 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %66, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %67, align 8
  br label %68

68:                                               ; preds = %54, %37
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %36, %25
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %9, align 4
  switch i32 %71, label %73 [
    i32 0, label %72
    i32 1, label %72
  ]

72:                                               ; preds = %69, %69
  ret void

73:                                               ; preds = %69
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #2

declare dso_local i32 @memset(%struct.cfg80211_deauth_request*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @rdev_deauth(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_deauth_request*) #2

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_5__*) #2

declare dso_local i32 @cfg80211_put_bss(i32*, %struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
