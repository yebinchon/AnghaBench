; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_pmksa_candidate_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_pmksa_candidate_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_pmksa_candidate_notify(%struct.net_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca %struct.wiphy*, align 8
  %13 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %11, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 0
  %19 = load %struct.wiphy*, %struct.wiphy** %18, align 8
  store %struct.wiphy* %19, %struct.wiphy** %12, align 8
  %20 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %13, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @trace_cfg80211_pmksa_candidate_notify(%struct.net_device* %22, i32 %23, i32* %24, i32 %25)
  %27 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @nl80211_pmksa_candidate_notify(%struct.cfg80211_registered_device* %27, %struct.net_device* %28, i32 %29, i32* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_pmksa_candidate_notify(%struct.net_device*, i32, i32*, i32) #1

declare dso_local i32 @nl80211_pmksa_candidate_notify(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
