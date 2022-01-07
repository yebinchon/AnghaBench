; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_notify_dev_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_notify_dev_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nl80211_config_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_notify_dev_rename(%struct.cfg80211_registered_device* %0) #0 {
  %2 = alloca %struct.cfg80211_registered_device*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %2, align 8
  %4 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.sk_buff* @nlmsg_new(i32 %4, i32 %5)
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call i64 @nl80211_send_wiphy(%struct.cfg80211_registered_device* %11, %struct.sk_buff* %12, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @nlmsg_free(%struct.sk_buff* %16)
  br label %26

18:                                               ; preds = %10
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 0
  %21 = call i32 @wiphy_net(i32* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_config_mcgrp, i32 0, i32 0), align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @genlmsg_multicast_netns(i32 %21, %struct.sk_buff* %22, i32 0, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %15, %9
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i64 @nl80211_send_wiphy(%struct.cfg80211_registered_device*, %struct.sk_buff*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
