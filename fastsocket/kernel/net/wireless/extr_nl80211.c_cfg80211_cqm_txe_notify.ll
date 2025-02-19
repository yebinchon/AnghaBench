; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_cqm_txe_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_cqm_txe_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@NL80211_CMD_NOTIFY_CQM = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM_TXE_PKTS = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM_TXE_RATE = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM_TXE_INTVL = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_cqm_txe_notify(%struct.net_device* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wireless_dev*, align 8
  %14 = alloca %struct.wiphy*, align 8
  %15 = alloca %struct.cfg80211_registered_device*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %20, align 8
  store %struct.wireless_dev* %21, %struct.wireless_dev** %13, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load %struct.wiphy*, %struct.wiphy** %23, align 8
  store %struct.wiphy* %24, %struct.wiphy** %14, align 8
  %25 = load %struct.wiphy*, %struct.wiphy** %14, align 8
  %26 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %25)
  store %struct.cfg80211_registered_device* %26, %struct.cfg80211_registered_device** %15, align 8
  %27 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.sk_buff* @nlmsg_new(i32 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %16, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %6
  br label %114

33:                                               ; preds = %6
  %34 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %35 = load i32, i32* @NL80211_CMD_NOTIFY_CQM, align 4
  %36 = call i8* @nl80211hdr_put(%struct.sk_buff* %34, i32 0, i32 0, i32 0, i32 %35)
  store i8* %36, i8** %18, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %41 = call i32 @nlmsg_free(%struct.sk_buff* %40)
  br label %114

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %44 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %15, align 8
  %46 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @nla_put_u32(%struct.sk_buff* %43, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %52 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %60 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @nla_put(%struct.sk_buff* %59, i32 %60, i32 %61, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %50, %42
  br label %108

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %68 = load i32, i32* @NL80211_ATTR_CQM, align 4
  %69 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %67, i32 %68)
  store %struct.nlattr* %69, %struct.nlattr** %17, align 8
  %70 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %108

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %75 = load i32, i32* @NL80211_ATTR_CQM_TXE_PKTS, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @nla_put_u32(%struct.sk_buff* %74, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %108

80:                                               ; preds = %73
  %81 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %82 = load i32, i32* @NL80211_ATTR_CQM_TXE_RATE, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @nla_put_u32(%struct.sk_buff* %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %108

87:                                               ; preds = %80
  %88 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %89 = load i32, i32* @NL80211_ATTR_CQM_TXE_INTVL, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @nla_put_u32(%struct.sk_buff* %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %108

94:                                               ; preds = %87
  %95 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %96 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %97 = call i32 @nla_nest_end(%struct.sk_buff* %95, %struct.nlattr* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %99 = load i8*, i8** %18, align 8
  %100 = call i32 @genlmsg_end(%struct.sk_buff* %98, i8* %99)
  %101 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %15, align 8
  %102 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %101, i32 0, i32 0
  %103 = call i32 @wiphy_net(i32* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @genlmsg_multicast_netns(i32 %103, %struct.sk_buff* %104, i32 0, i32 %105, i32 %106)
  br label %114

108:                                              ; preds = %93, %86, %79, %72, %65
  %109 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %110 = load i8*, i8** %18, align 8
  %111 = call i32 @genlmsg_cancel(%struct.sk_buff* %109, i8* %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %113 = call i32 @nlmsg_free(%struct.sk_buff* %112)
  br label %114

114:                                              ; preds = %108, %94, %39, %32
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

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
