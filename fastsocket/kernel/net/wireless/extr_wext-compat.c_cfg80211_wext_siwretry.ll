; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwretry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwretry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i8*, i64 }
%struct.cfg80211_registered_device = type { i32 }

@IW_RETRY_TYPE = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_LONG = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @cfg80211_wext_siwretry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_siwretry(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  store %struct.wireless_dev* %18, %struct.wireless_dev** %10, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %20 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.TYPE_2__* %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %13, align 8
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %14, align 8
  %33 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %34 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %4
  %38 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %39 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IW_RETRY_TYPE, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %129

48:                                               ; preds = %37
  %49 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %50 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IW_RETRY_LONG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %57 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %60 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* %58, i8** %62, align 8
  %63 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %106

66:                                               ; preds = %48
  %67 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %68 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IW_RETRY_SHORT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %75 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %78 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i8* %76, i8** %80, align 8
  %81 = load i32, i32* @WIPHY_PARAM_RETRY_SHORT, align 4
  %82 = load i32, i32* %12, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %105

84:                                               ; preds = %66
  %85 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %86 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %89 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i8* %87, i8** %91, align 8
  %92 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %93 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %96 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i8* %94, i8** %98, align 8
  %99 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %100 = load i32, i32* %12, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* @WIPHY_PARAM_RETRY_SHORT, align 4
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %84, %73
  br label %106

106:                                              ; preds = %105, %55
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %129

110:                                              ; preds = %106
  %111 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @rdev_set_wiphy_params(%struct.cfg80211_registered_device* %111, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %110
  %117 = load i8*, i8** %14, align 8
  %118 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %119 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i8* %117, i8** %121, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %124 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i8* %122, i8** %126, align 8
  br label %127

127:                                              ; preds = %116, %110
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %109, %45
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.TYPE_2__*) #1

declare dso_local i32 @rdev_set_wiphy_params(%struct.cfg80211_registered_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
