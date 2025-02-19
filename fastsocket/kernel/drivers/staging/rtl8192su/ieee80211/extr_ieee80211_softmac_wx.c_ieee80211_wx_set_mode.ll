; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i64 }

@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@ARPHRD_IEEE80211 = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_set_mode(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 2
  %13 = call i32 @down(i32* %12)
  %14 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %15 = bitcast %union.iwreq_data* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %62

22:                                               ; preds = %4
  %23 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %24 = bitcast %union.iwreq_data* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IW_MODE_MONITOR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* @ARPHRD_IEEE80211, align 4
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %40

34:                                               ; preds = %22
  %35 = load i32, i32* @ARPHRD_ETHER, align 4
  %36 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %47 = bitcast %union.iwreq_data* %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %61

51:                                               ; preds = %40
  %52 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %53 = call i32 @ieee80211_stop_protocol(%struct.ieee80211_device* %52)
  %54 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %55 = bitcast %union.iwreq_data* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %60 = call i32 @ieee80211_start_protocol(%struct.ieee80211_device* %59)
  br label %61

61:                                               ; preds = %51, %45
  br label %62

62:                                               ; preds = %61, %21
  %63 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %63, i32 0, i32 2
  %65 = call i32 @up(i32* %64)
  ret i32 0
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @ieee80211_stop_protocol(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_start_protocol(%struct.ieee80211_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
