; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_new_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_new_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.station_info = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_new_sta(%struct.net_device* %0, i32* %1, %struct.station_info* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.station_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.station_info* %2, %struct.station_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.wiphy*, %struct.wiphy** %15, align 8
  store %struct.wiphy* %16, %struct.wiphy** %9, align 8
  %17 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %18 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %17)
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.station_info*, %struct.station_info** %7, align 8
  %22 = call i32 @trace_cfg80211_new_sta(%struct.net_device* %19, i32* %20, %struct.station_info* %21)
  %23 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.sk_buff* @nlmsg_new(i32 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %48

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.station_info*, %struct.station_info** %7, align 8
  %35 = call i64 @nl80211_send_station(%struct.sk_buff* %30, i32 0, i32 0, i32 0, %struct.cfg80211_registered_device* %31, %struct.net_device* %32, i32* %33, %struct.station_info* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = call i32 @nlmsg_free(%struct.sk_buff* %38)
  br label %48

40:                                               ; preds = %29
  %41 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %42 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %41, i32 0, i32 0
  %43 = call i32 @wiphy_net(i32* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @genlmsg_multicast_netns(i32 %43, %struct.sk_buff* %44, i32 0, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %37, %28
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_new_sta(%struct.net_device*, i32*, %struct.station_info*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i64 @nl80211_send_station(%struct.sk_buff*, i32, i32, i32, %struct.cfg80211_registered_device*, %struct.net_device*, i32*, %struct.station_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
