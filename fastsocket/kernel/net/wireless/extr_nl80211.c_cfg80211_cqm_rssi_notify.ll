; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_cqm_rssi_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_cqm_rssi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_NOTIFY_CQM = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM_RSSI_THRESHOLD_EVENT = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_cqm_rssi_notify(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  store %struct.wireless_dev* %15, %struct.wireless_dev** %7, align 8
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 0
  %18 = load %struct.wiphy*, %struct.wiphy** %17, align 8
  store %struct.wiphy* %18, %struct.wiphy** %8, align 8
  %19 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %9, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @trace_cfg80211_cqm_rssi_notify(%struct.net_device* %21, i32 %22)
  %24 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.sk_buff* @nlmsg_new(i32 %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %90

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = load i32, i32* @NL80211_CMD_NOTIFY_CQM, align 4
  %33 = call i8* @nl80211hdr_put(%struct.sk_buff* %31, i32 0, i32 0, i32 0, i32 %32)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = call i32 @nlmsg_free(%struct.sk_buff* %37)
  br label %90

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %42 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %43 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nla_put_u32(%struct.sk_buff* %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47, %39
  br label %84

56:                                               ; preds = %47
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = load i32, i32* @NL80211_ATTR_CQM, align 4
  %59 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %57, i32 %58)
  store %struct.nlattr* %59, %struct.nlattr** %11, align 8
  %60 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %84

63:                                               ; preds = %56
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = load i32, i32* @NL80211_ATTR_CQM_RSSI_THRESHOLD_EVENT, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @nla_put_u32(%struct.sk_buff* %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %84

70:                                               ; preds = %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %73 = call i32 @nla_nest_end(%struct.sk_buff* %71, %struct.nlattr* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @genlmsg_end(%struct.sk_buff* %74, i8* %75)
  %77 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %78 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %77, i32 0, i32 1
  %79 = call i32 @wiphy_net(i32* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @genlmsg_multicast_netns(i32 %79, %struct.sk_buff* %80, i32 0, i32 %81, i32 %82)
  br label %90

84:                                               ; preds = %69, %62, %55
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @genlmsg_cancel(%struct.sk_buff* %85, i8* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = call i32 @nlmsg_free(%struct.sk_buff* %88)
  br label %90

90:                                               ; preds = %84, %70, %36, %29
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_cqm_rssi_notify(%struct.net_device*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

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
