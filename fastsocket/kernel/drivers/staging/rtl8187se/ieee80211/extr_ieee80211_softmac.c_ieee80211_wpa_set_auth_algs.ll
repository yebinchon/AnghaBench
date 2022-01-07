; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_auth_algs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_auth_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32 (i32, %struct.ieee80211_security*)* }
%struct.ieee80211_security = type { i32, i32 }

@SEC_AUTH_MODE = common dso_local global i32 0, align 4
@AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@WLAN_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@WLAN_AUTH_OPEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, i32)* @ieee80211_wpa_set_auth_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_wpa_set_auth_algs(%struct.ieee80211_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_security, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 1
  %9 = load i32, i32* @SEC_AUTH_MODE, align 4
  store i32 %9, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @AUTH_ALG_SHARED_KEY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @WLAN_AUTH_SHARED_KEY, align 4
  %16 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @WLAN_AUTH_OPEN, align 4
  %21 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %25, i32 0, i32 2
  %27 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %26, align 8
  %28 = icmp ne i32 (i32, %struct.ieee80211_security*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 2
  %32 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %31, align 8
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %32(i32 %35, %struct.ieee80211_security* %5)
  br label %40

37:                                               ; preds = %24
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %29
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
