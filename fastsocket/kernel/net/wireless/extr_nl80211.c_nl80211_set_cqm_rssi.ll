; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_cqm_rssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_cqm_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i64 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, i32, i32)* @nl80211_set_cqm_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_cqm_rssi(%struct.genl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %14 = getelementptr inbounds %struct.net_device*, %struct.net_device** %13, i64 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = bitcast %struct.net_device* %15 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %8, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 0
  %19 = load %struct.net_device**, %struct.net_device*** %18, align 8
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %19, i64 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %3
  %28 = load %struct.net_device*, %struct.net_device** %10, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %29, align 8
  store %struct.wireless_dev* %30, %struct.wireless_dev** %9, align 8
  %31 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %32 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %62

40:                                               ; preds = %27
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %62

55:                                               ; preds = %46, %40
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %57 = bitcast %struct.cfg80211_registered_device* %56 to %struct.net_device*
  %58 = load %struct.net_device*, %struct.net_device** %10, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @rdev_set_cqm_rssi_config(%struct.net_device* %57, %struct.net_device* %58, i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %52, %37, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @rdev_set_cqm_rssi_config(%struct.net_device*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
