; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_cqm_txe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_cqm_txe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i64 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }

@NL80211_CQM_TXE_MAX_INTVL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, i32, i32, i32)* @nl80211_set_cqm_txe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_cqm_txe(%struct.genl_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca %struct.net_device*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 0
  %15 = load %struct.net_device**, %struct.net_device*** %14, align 8
  %16 = getelementptr inbounds %struct.net_device*, %struct.net_device** %15, i64 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = bitcast %struct.net_device* %17 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %10, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load %struct.net_device**, %struct.net_device*** %20, align 8
  %22 = getelementptr inbounds %struct.net_device*, %struct.net_device** %21, i64 1
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %12, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 100
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @NL80211_CQM_TXE_MAX_INTVL, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %69

33:                                               ; preds = %26
  %34 = load %struct.net_device*, %struct.net_device** %12, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %35, align 8
  store %struct.wireless_dev* %36, %struct.wireless_dev** %11, align 8
  %37 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %38 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %69

46:                                               ; preds = %33
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %69

61:                                               ; preds = %52, %46
  %62 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %63 = bitcast %struct.cfg80211_registered_device* %62 to %struct.net_device*
  %64 = load %struct.net_device*, %struct.net_device** %12, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @rdev_set_cqm_txe_config(%struct.net_device* %63, %struct.net_device* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %61, %58, %43, %30
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @rdev_set_cqm_txe_config(%struct.net_device*, %struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
