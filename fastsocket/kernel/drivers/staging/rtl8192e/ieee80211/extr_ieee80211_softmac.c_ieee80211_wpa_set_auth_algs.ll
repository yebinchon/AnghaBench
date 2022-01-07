; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_auth_algs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_auth_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32, i32 (i32, %struct.ieee80211_security*)* }
%struct.ieee80211_security = type { i32, i32 }

@SEC_AUTH_MODE = common dso_local global i32 0, align 4
@AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@WLAN_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@WLAN_AUTH_OPEN = common dso_local global i32 0, align 4
@IW_AUTH_ALG_LEAP = common dso_local global i32 0, align 4
@WLAN_AUTH_LEAP = common dso_local global i32 0, align 4
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
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @WLAN_AUTH_SHARED_KEY, align 4
  %16 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @AUTH_ALG_OPEN_SYSTEM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* @WLAN_AUTH_OPEN, align 4
  %28 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %46

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IW_AUTH_ALG_LEAP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @WLAN_AUTH_LEAP, align 4
  %40 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %5, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %43, i32 0, i32 1
  store i32 2, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %33
  br label %46

46:                                               ; preds = %45, %26
  br label %47

47:                                               ; preds = %46, %14
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %49 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %48, i32 0, i32 3
  %50 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %49, align 8
  %51 = icmp ne i32 (i32, %struct.ieee80211_security*)* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %54 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %53, i32 0, i32 3
  %55 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %54, align 8
  %56 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %55(i32 %58, %struct.ieee80211_security* %5)
  br label %60

60:                                               ; preds = %52, %47
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
