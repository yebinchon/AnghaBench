; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_cqm_pktloss_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_cqm_pktloss_notify.c"
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
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM_PKT_LOSS_EVENT = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_cqm_pktloss_notify(%struct.net_device* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca %struct.wiphy*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %9, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 0
  %20 = load %struct.wiphy*, %struct.wiphy** %19, align 8
  store %struct.wiphy* %20, %struct.wiphy** %10, align 8
  %21 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %11, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @trace_cfg80211_cqm_pktloss_notify(%struct.net_device* %23, i32* %24, i32 %25)
  %27 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.sk_buff* @nlmsg_new(i32 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %12, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  br label %100

33:                                               ; preds = %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %35 = load i32, i32* @NL80211_CMD_NOTIFY_CQM, align 4
  %36 = call i8* @nl80211hdr_put(%struct.sk_buff* %34, i32 0, i32 0, i32 0, i32 %35)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %41 = call i32 @nlmsg_free(%struct.sk_buff* %40)
  br label %100

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %44 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %46 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @nla_put_u32(%struct.sk_buff* %43, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i64 @nla_put(%struct.sk_buff* %59, i32 %60, i32 %61, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %50, %42
  br label %94

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %68 = load i32, i32* @NL80211_ATTR_CQM, align 4
  %69 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %67, i32 %68)
  store %struct.nlattr* %69, %struct.nlattr** %13, align 8
  %70 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %94

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %75 = load i32, i32* @NL80211_ATTR_CQM_PKT_LOSS_EVENT, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @nla_put_u32(%struct.sk_buff* %74, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %94

80:                                               ; preds = %73
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %83 = call i32 @nla_nest_end(%struct.sk_buff* %81, %struct.nlattr* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @genlmsg_end(%struct.sk_buff* %84, i8* %85)
  %87 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %88 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %87, i32 0, i32 0
  %89 = call i32 @wiphy_net(i32* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @genlmsg_multicast_netns(i32 %89, %struct.sk_buff* %90, i32 0, i32 %91, i32 %92)
  br label %100

94:                                               ; preds = %79, %72, %65
  %95 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 @genlmsg_cancel(%struct.sk_buff* %95, i8* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %99 = call i32 @nlmsg_free(%struct.sk_buff* %98)
  br label %100

100:                                              ; preds = %94, %80, %39, %32
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_cqm_pktloss_notify(%struct.net_device*, i32*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

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
