; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_get_power_rsl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_get_power_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IEEE80211_PS_DISABLED = common dso_local global i32 0, align 4
@IW_POWER_TYPE = common dso_local global i32 0, align 4
@IW_POWER_TIMEOUT = common dso_local global i32 0, align 4
@IW_POWER_PERIOD = common dso_local global i32 0, align 4
@IEEE80211_PS_MBCAST = common dso_local global i32 0, align 4
@IEEE80211_PS_UNICAST = common dso_local global i32 0, align 4
@IW_POWER_ALL_R = common dso_local global i32 0, align 4
@IW_POWER_MULTICAST_R = common dso_local global i32 0, align 4
@IW_POWER_UNICAST_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_get_power(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 3
  %12 = call i32 @down(i32* %11)
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE80211_PS_DISABLED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %20 = bitcast %union.iwreq_data* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %100

22:                                               ; preds = %4
  %23 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %24 = bitcast %union.iwreq_data* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %27 = bitcast %union.iwreq_data* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IW_POWER_TYPE, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %22
  %35 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %36 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %37 = bitcast %union.iwreq_data* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 1000
  %43 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %44 = bitcast %union.iwreq_data* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  br label %58

46:                                               ; preds = %22
  %47 = load i32, i32* @IW_POWER_PERIOD, align 4
  %48 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %49 = bitcast %union.iwreq_data* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 1000
  %55 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %56 = bitcast %union.iwreq_data* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %46, %34
  %59 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IEEE80211_PS_MBCAST, align 4
  %63 = load i32, i32* @IEEE80211_PS_UNICAST, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = load i32, i32* @IEEE80211_PS_MBCAST, align 4
  %67 = load i32, i32* @IEEE80211_PS_UNICAST, align 4
  %68 = or i32 %66, %67
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = load i32, i32* @IW_POWER_ALL_R, align 4
  %72 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %73 = bitcast %union.iwreq_data* %72 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 4
  br label %99

77:                                               ; preds = %58
  %78 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IEEE80211_PS_MBCAST, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load i32, i32* @IW_POWER_MULTICAST_R, align 4
  %86 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %87 = bitcast %union.iwreq_data* %86 to %struct.TYPE_2__*
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %85
  store i32 %90, i32* %88, align 4
  br label %98

91:                                               ; preds = %77
  %92 = load i32, i32* @IW_POWER_UNICAST_R, align 4
  %93 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %94 = bitcast %union.iwreq_data* %93 to %struct.TYPE_2__*
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %84
  br label %99

99:                                               ; preds = %98, %70
  br label %100

100:                                              ; preds = %99, %18
  %101 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %102 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %101, i32 0, i32 3
  %103 = call i32 @up(i32* %102)
  %104 = load i32, i32* %9, align 4
  ret i32 %104
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
