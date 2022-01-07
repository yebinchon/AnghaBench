; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_sme_disassoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_sme_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.cfg80211_internal_bss = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@CFG80211_CONN_IDLE = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_sme_disassoc(%struct.net_device* %0, %struct.cfg80211_internal_bss* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cfg80211_internal_bss*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.cfg80211_internal_bss* %1, %struct.cfg80211_internal_bss** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  store %struct.wireless_dev* %12, %struct.wireless_dev** %5, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %15)
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %6, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %22 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %21)
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %48

28:                                               ; preds = %2
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CFG80211_CONN_IDLE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %48

37:                                               ; preds = %28
  %38 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %4, align 8
  %39 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32* %20, i32 %41, i32 %42)
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %47 = call i32 @__cfg80211_mlme_deauth(%struct.cfg80211_registered_device* %44, %struct.net_device* %45, i32* %20, i32* null, i32 0, i32 %46, i32 0)
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %37, %36, %27
  %49 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %52 [
    i32 0, label %51
    i32 1, label %51
  ]

51:                                               ; preds = %48, %48
  ret void

52:                                               ; preds = %48
  unreachable
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @__cfg80211_mlme_deauth(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i32*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
