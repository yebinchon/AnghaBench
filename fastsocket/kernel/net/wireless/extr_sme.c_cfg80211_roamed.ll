; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_roamed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_roamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32, i32, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_bss = type { i32 }

@CFG80211_SME_CONNECTED = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_roamed(%struct.net_device* %0, %struct.ieee80211_channel* %1, i32* %2, i32* %3, i64 %4, i32* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.wireless_dev*, align 8
  %18 = alloca %struct.cfg80211_bss*, align 8
  store %struct.net_device* %0, %struct.net_device** %9, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %19 = load %struct.net_device*, %struct.net_device** %9, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %20, align 8
  store %struct.wireless_dev* %21, %struct.wireless_dev** %17, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @CFG80211_DEV_WARN_ON(i32 %27)
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %35 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %38 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %41 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %42 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %31, %struct.ieee80211_channel* %32, i32* %33, i32 %36, i32 %39, i32 %40, i32 %41)
  store %struct.cfg80211_bss* %42, %struct.cfg80211_bss** %18, align 8
  %43 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %18, align 8
  %44 = icmp ne %struct.cfg80211_bss* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %8
  br label %59

50:                                               ; preds = %8
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %18, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @cfg80211_roamed_bss(%struct.net_device* %51, %struct.cfg80211_bss* %52, i32* %53, i64 %54, i32* %55, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %49
  ret void
}

declare dso_local i32 @CFG80211_DEV_WARN_ON(i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, %struct.ieee80211_channel*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_roamed_bss(%struct.net_device*, %struct.cfg80211_bss*, i32*, i64, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
