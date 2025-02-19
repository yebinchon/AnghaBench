; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_ibss_bssid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_ibss_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_JOIN_IBSS = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_send_ibss_bssid(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.sk_buff* @nlmsg_new(i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %67

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = load i32, i32* @NL80211_CMD_JOIN_IBSS, align 4
  %20 = call i8* @nl80211hdr_put(%struct.sk_buff* %18, i32 0, i32 0, i32 0, i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = call i32 @nlmsg_free(%struct.sk_buff* %24)
  br label %67

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %29 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %30 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @nla_put_u32(%struct.sk_buff* %27, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @nla_put_u32(%struct.sk_buff* %35, i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @nla_put(%struct.sk_buff* %43, i32 %44, i32 %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %34, %26
  br label %61

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @genlmsg_end(%struct.sk_buff* %51, i8* %52)
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %55 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %54, i32 0, i32 0
  %56 = call i32 @wiphy_net(i32* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @genlmsg_multicast_netns(i32 %56, %struct.sk_buff* %57, i32 0, i32 %58, i32 %59)
  br label %67

61:                                               ; preds = %49
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @genlmsg_cancel(%struct.sk_buff* %62, i8* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = call i32 @nlmsg_free(%struct.sk_buff* %65)
  br label %67

67:                                               ; preds = %61, %50, %23, %16
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
