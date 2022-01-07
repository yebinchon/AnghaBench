; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_gtk_rekey_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_gtk_rekey_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_gtk_rekey_notify(%struct.net_device* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca %struct.wiphy*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %14, %struct.wireless_dev** %9, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load %struct.wiphy*, %struct.wiphy** %16, align 8
  store %struct.wiphy* %17, %struct.wiphy** %10, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %19 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %18)
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %11, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @trace_cfg80211_gtk_rekey_notify(%struct.net_device* %20, i32* %21)
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @nl80211_gtk_rekey_notify(%struct.cfg80211_registered_device* %23, %struct.net_device* %24, i32* %25, i32* %26, i32 %27)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_gtk_rekey_notify(%struct.net_device*, i32*) #1

declare dso_local i32 @nl80211_gtk_rekey_notify(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
