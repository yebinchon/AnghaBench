; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwtxpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwtxpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.cfg80211_registered_device = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IW_TXPOW_TYPE = common dso_local global i32 0, align 4
@IW_TXPOW_DBM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_TXPOW_RANGE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_TX_POWER_FIXED = common dso_local global i32 0, align 4
@NL80211_TX_POWER_AUTOMATIC = common dso_local global i32 0, align 4
@NL80211_TX_POWER_LIMITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @cfg80211_wext_siwtxpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_siwtxpower(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %10, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %22 = bitcast %union.iwreq_data* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IW_TXPOW_TYPE, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @IW_TXPOW_DBM, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %115

32:                                               ; preds = %4
  %33 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %34 = bitcast %union.iwreq_data* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IW_TXPOW_RANGE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %115

43:                                               ; preds = %32
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %45 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %115

53:                                               ; preds = %43
  %54 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %55 = bitcast %union.iwreq_data* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %100, label %59

59:                                               ; preds = %53
  %60 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %61 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rfkill_set_sw_state(i32 %62, i32 0)
  %64 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %65 = bitcast %union.iwreq_data* %64 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %59
  %70 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %71 = bitcast %union.iwreq_data* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %115

78:                                               ; preds = %69
  %79 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %80 = bitcast %union.iwreq_data* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* @NL80211_TX_POWER_FIXED, align 4
  store i32 %83, i32* %12, align 4
  br label %99

84:                                               ; preds = %59
  %85 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %86 = bitcast %union.iwreq_data* %85 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @NL80211_TX_POWER_AUTOMATIC, align 4
  store i32 %91, i32* %12, align 4
  br label %98

92:                                               ; preds = %84
  %93 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %94 = bitcast %union.iwreq_data* %93 to %struct.TYPE_4__*
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* @NL80211_TX_POWER_LIMITED, align 4
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %92, %90
  br label %99

99:                                               ; preds = %98, %78
  br label %108

100:                                              ; preds = %53
  %101 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %102 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @rfkill_set_sw_state(i32 %103, i32 1)
  %105 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %106 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %105, i32 0, i32 0
  %107 = call i32 @schedule_work(i32* %106)
  store i32 0, i32* %5, align 4
  br label %115

108:                                              ; preds = %99
  %109 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %110 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @DBM_TO_MBM(i32 %112)
  %114 = call i32 @rdev_set_tx_power(%struct.cfg80211_registered_device* %109, %struct.wireless_dev* %110, i32 %111, i32 %113)
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %108, %100, %75, %50, %40, %29
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @rfkill_set_sw_state(i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @rdev_set_tx_power(%struct.cfg80211_registered_device*, %struct.wireless_dev*, i32, i32) #1

declare dso_local i32 @DBM_TO_MBM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
