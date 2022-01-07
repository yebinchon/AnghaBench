; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_set_wpa_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_set_wpa_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IW_AUTH_WPA_VERSION_WPA = common dso_local global i32 0, align 4
@IW_AUTH_WPA_VERSION_WPA2 = common dso_local global i32 0, align 4
@IW_AUTH_WPA_VERSION_DISABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_WPA_VERSION_1 = common dso_local global i32 0, align 4
@NL80211_WPA_VERSION_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wireless_dev*, i32)* @cfg80211_set_wpa_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_set_wpa_version(%struct.wireless_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA, align 4
  %8 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @IW_AUTH_WPA_VERSION_DISABLED, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %6, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @IW_AUTH_WPA_VERSION_DISABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA, align 4
  %26 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %79

33:                                               ; preds = %23, %18
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IW_AUTH_WPA_VERSION_DISABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32, i32* @NL80211_WPA_VERSION_1, align 4
  %40 = load i32, i32* @NL80211_WPA_VERSION_2, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %44 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %42
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %38, %33
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* @NL80211_WPA_VERSION_1, align 4
  %57 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %58 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %56
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %55, %50
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32, i32* @NL80211_WPA_VERSION_2, align 4
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %72 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %70
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %69, %64
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %30, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
