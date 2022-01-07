; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac_wx.c_ieee80211_wx_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32, i64 (i32)* }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE_A = common dso_local global i32 0, align 4
@IEEE_B = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i32 0, align 4
@IEEE_N_5G = common dso_local global i32 0, align 4
@IEEE_N_24G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_get_rate(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
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
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IEEE_A, align 4
  %14 = load i32, i32* @IEEE_B, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IEEE_G, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %12, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  br label %57

24:                                               ; preds = %4
  %25 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IEEE_N_5G, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 580, i32* %9, align 4
  br label %56

32:                                               ; preds = %24
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IEEE_N_24G, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %40, i32 0, i32 3
  %42 = load i64 (i32)*, i64 (i32)** %41, align 8
  %43 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 %42(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %50 = call i32 @HTHalfMcsToDataRate(%struct.ieee80211_device* %49, i32 15)
  store i32 %50, i32* %9, align 4
  br label %54

51:                                               ; preds = %39
  %52 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %53 = call i32 @HTMcsToDataRate(%struct.ieee80211_device* %52, i32 15)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55, %31
  br label %57

57:                                               ; preds = %56, %20
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 500000
  %60 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %61 = bitcast %union.iwreq_data* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  ret i32 0
}

declare dso_local i32 @HTHalfMcsToDataRate(%struct.ieee80211_device*, i32) #1

declare dso_local i32 @HTMcsToDataRate(%struct.ieee80211_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
