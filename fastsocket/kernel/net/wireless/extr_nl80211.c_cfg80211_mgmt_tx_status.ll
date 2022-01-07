; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_mgmt_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_mgmt_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { %struct.net_device*, %struct.wiphy* }
%struct.net_device = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_FRAME_TX_STATUS = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_FRAME = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@NL80211_ATTR_ACK = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_mgmt_tx_status(%struct.wireless_dev* %0, i32 %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wiphy*, align 8
  %14 = alloca %struct.cfg80211_registered_device*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i8*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 1
  %20 = load %struct.wiphy*, %struct.wiphy** %19, align 8
  store %struct.wiphy* %20, %struct.wiphy** %13, align 8
  %21 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %14, align 8
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %15, align 8
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @trace_cfg80211_mgmt_tx_status(%struct.wireless_dev* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call %struct.sk_buff* @nlmsg_new(i32 %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %16, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %6
  br label %110

36:                                               ; preds = %6
  %37 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %38 = load i32, i32* @NL80211_CMD_FRAME_TX_STATUS, align 4
  %39 = call i8* @nl80211hdr_put(%struct.sk_buff* %37, i32 0, i32 0, i32 0, i32 %38)
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %44 = call i32 @nlmsg_free(%struct.sk_buff* %43)
  br label %110

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %47 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %14, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %92, label %53

53:                                               ; preds = %45
  %54 = load %struct.net_device*, %struct.net_device** %15, align 8
  %55 = icmp ne %struct.net_device* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %58 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %59 = load %struct.net_device*, %struct.net_device** %15, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @nla_put_u32(%struct.sk_buff* %57, i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %56, %53
  %65 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %66 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %67 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %68 = call i32 @wdev_id(%struct.wireless_dev* %67)
  %69 = call i64 @nla_put_u64(%struct.sk_buff* %65, i32 %66, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %92, label %71

71:                                               ; preds = %64
  %72 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %73 = load i32, i32* @NL80211_ATTR_FRAME, align 4
  %74 = load i64, i64* %10, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i64 @nla_put(%struct.sk_buff* %72, i32 %73, i64 %74, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %71
  %79 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %80 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @nla_put_u64(%struct.sk_buff* %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %89 = load i32, i32* @NL80211_ATTR_ACK, align 4
  %90 = call i64 @nla_put_flag(%struct.sk_buff* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %78, %71, %64, %56, %45
  br label %104

93:                                               ; preds = %87, %84
  %94 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @genlmsg_end(%struct.sk_buff* %94, i8* %95)
  %97 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %14, align 8
  %98 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %97, i32 0, i32 0
  %99 = call i32 @wiphy_net(i32* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @genlmsg_multicast_netns(i32 %99, %struct.sk_buff* %100, i32 0, i32 %101, i32 %102)
  br label %110

104:                                              ; preds = %92
  %105 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %106 = load i8*, i8** %17, align 8
  %107 = call i32 @genlmsg_cancel(%struct.sk_buff* %105, i8* %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %109 = call i32 @nlmsg_free(%struct.sk_buff* %108)
  br label %110

110:                                              ; preds = %104, %93, %42, %35
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_mgmt_tx_status(%struct.wireless_dev*, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

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
