; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32, i32, i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32 }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_set_auth(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %11 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IW_AUTH_INDEX, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %61 [
    i32 128, label %15
    i32 135, label %16
    i32 136, label %16
    i32 133, label %16
    i32 130, label %17
    i32 134, label %23
    i32 137, label %29
    i32 129, label %40
    i32 131, label %49
    i32 132, label %55
  ]

15:                                               ; preds = %4
  br label %64

16:                                               ; preds = %4, %4, %4
  br label %64

17:                                               ; preds = %4
  %18 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %19 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %64

23:                                               ; preds = %4
  %24 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %25 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %64

29:                                               ; preds = %4
  %30 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %31 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %64

40:                                               ; preds = %4
  %41 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %42 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  br label %64

49:                                               ; preds = %4
  %50 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %51 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  br label %64

55:                                               ; preds = %4
  %56 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %57 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  br label %64

61:                                               ; preds = %4
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %65

64:                                               ; preds = %55, %49, %40, %29, %23, %17, %16, %15
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
