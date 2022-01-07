; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c___cfg80211_sme_scan_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c___cfg80211_sme_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.cfg80211_bss = type { i32 }

@CFG80211_SME_CONNECTING = common dso_local global i64 0, align 8
@CFG80211_CONN_SCANNING = common dso_local global i64 0, align 8
@CFG80211_CONN_SCAN_AGAIN = common dso_local global i64 0, align 8
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__cfg80211_sme_scan_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cfg80211_sme_scan_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  store %struct.wireless_dev* %8, %struct.wireless_dev** %3, align 8
  %9 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %10 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %11)
  store %struct.cfg80211_registered_device* %12, %struct.cfg80211_registered_device** %4, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %14 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %13)
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CFG80211_SME_CONNECTING, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %79

21:                                               ; preds = %1
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %79

27:                                               ; preds = %21
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CFG80211_CONN_SCANNING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %37 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CFG80211_CONN_SCAN_AGAIN, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %79

44:                                               ; preds = %35, %27
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %46 = call %struct.cfg80211_bss* @cfg80211_get_conn_bss(%struct.wireless_dev* %45)
  store %struct.cfg80211_bss* %46, %struct.cfg80211_bss** %5, align 8
  %47 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %48 = icmp ne %struct.cfg80211_bss* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %51 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %50, i32 0, i32 1
  %52 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %53 = call i32 @cfg80211_put_bss(i32* %51, %struct.cfg80211_bss* %52)
  br label %79

54:                                               ; preds = %44
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CFG80211_CONN_SCAN_AGAIN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %64 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %63, i32 0, i32 0
  %65 = call i32 @schedule_work(i32* %64)
  br label %78

66:                                               ; preds = %54
  %67 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %68 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %71 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  %77 = call i32 @__cfg80211_connect_result(i32 %69, i32 %75, i32* null, i32 0, i32* null, i32 0, i32 %76, i32 0, i32* null)
  br label %78

78:                                               ; preds = %66, %62
  br label %79

79:                                               ; preds = %20, %26, %43, %78, %49
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_conn_bss(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_put_bss(i32*, %struct.cfg80211_bss*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @__cfg80211_connect_result(i32, i32, i32*, i32, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
