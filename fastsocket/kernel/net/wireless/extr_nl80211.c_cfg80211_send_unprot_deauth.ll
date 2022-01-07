; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_send_unprot_deauth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_send_unprot_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_CMD_UNPROT_DEAUTHENTICATE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_send_unprot_deauth(%struct.net_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  store %struct.wireless_dev* %12, %struct.wireless_dev** %7, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 0
  %15 = load %struct.wiphy*, %struct.wiphy** %14, align 8
  store %struct.wiphy* %15, %struct.wiphy** %8, align 8
  %16 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %17 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %16)
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @trace_cfg80211_send_unprot_deauth(%struct.net_device* %18)
  %20 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @NL80211_CMD_UNPROT_DEAUTHENTICATE, align 4
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i32 @nl80211_send_mlme_event(%struct.cfg80211_registered_device* %20, %struct.net_device* %21, i32* %22, i64 %23, i32 %24, i32 %25)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_send_unprot_deauth(%struct.net_device*) #1

declare dso_local i32 @nl80211_send_mlme_event(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
