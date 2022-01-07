; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_remain_on_channel_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_remain_on_channel_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_CMD_CANCEL_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_remain_on_channel_expired(%struct.wireless_dev* %0, i32 %1, %struct.ieee80211_channel* %2, i32 %3) #0 {
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 0
  %13 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  store %struct.wiphy* %13, %struct.wiphy** %9, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %15 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %14)
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %10, align 8
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %19 = call i32 @trace_cfg80211_ready_on_channel_expired(%struct.wireless_dev* %16, i32 %17, %struct.ieee80211_channel* %18)
  %20 = load i32, i32* @NL80211_CMD_CANCEL_REMAIN_ON_CHANNEL, align 4
  %21 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @nl80211_send_remain_on_chan_event(i32 %20, %struct.cfg80211_registered_device* %21, %struct.wireless_dev* %22, i32 %23, %struct.ieee80211_channel* %24, i32 0, i32 %25)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_ready_on_channel_expired(%struct.wireless_dev*, i32, %struct.ieee80211_channel*) #1

declare dso_local i32 @nl80211_send_remain_on_chan_event(i32, %struct.cfg80211_registered_device*, %struct.wireless_dev*, i32, %struct.ieee80211_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
