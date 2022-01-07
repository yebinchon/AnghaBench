; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwauth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @cfg80211_wext_siwauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_siwauth(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  store %struct.wireless_dev* %13, %struct.wireless_dev** %10, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %70

22:                                               ; preds = %4
  %23 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %24 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IW_AUTH_INDEX, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %67 [
    i32 131, label %28
    i32 128, label %36
    i32 136, label %42
    i32 133, label %48
    i32 135, label %54
    i32 137, label %60
    i32 129, label %66
    i32 130, label %66
    i32 134, label %66
    i32 132, label %66
  ]

28:                                               ; preds = %22
  %29 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %30 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %33 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  store i32 0, i32* %5, align 4
  br label %70

36:                                               ; preds = %22
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %38 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %39 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cfg80211_set_wpa_version(%struct.wireless_dev* %37, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %70

42:                                               ; preds = %22
  %43 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %44 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %45 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cfg80211_set_cipher_group(%struct.wireless_dev* %43, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %70

48:                                               ; preds = %22
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %50 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %51 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cfg80211_set_key_mgt(%struct.wireless_dev* %49, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %70

54:                                               ; preds = %22
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %56 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %57 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cfg80211_set_cipher_pairwise(%struct.wireless_dev* %55, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %70

60:                                               ; preds = %22
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %62 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %63 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cfg80211_set_auth_alg(%struct.wireless_dev* %61, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %70

66:                                               ; preds = %22, %22, %22, %22
  store i32 0, i32* %5, align 4
  br label %70

67:                                               ; preds = %22
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %66, %60, %54, %48, %42, %36, %28, %19
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @cfg80211_set_wpa_version(%struct.wireless_dev*, i32) #1

declare dso_local i32 @cfg80211_set_cipher_group(%struct.wireless_dev*, i32) #1

declare dso_local i32 @cfg80211_set_key_mgt(%struct.wireless_dev*, i32) #1

declare dso_local i32 @cfg80211_set_cipher_pairwise(%struct.wireless_dev*, i32) #1

declare dso_local i32 @cfg80211_set_auth_alg(%struct.wireless_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
