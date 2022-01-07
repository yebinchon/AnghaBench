; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_conn_failed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_conn_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@NL80211_CMD_CONN_FAILED = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_CONN_FAILED_REASON = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_conn_failed(%struct.net_device* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.wiphy*, %struct.wiphy** %16, align 8
  store %struct.wiphy* %17, %struct.wiphy** %9, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %19 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %18)
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %10, align 8
  %20 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.sk_buff* @nlmsg_new(i32 %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %11, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %74

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %28 = load i32, i32* @NL80211_CMD_CONN_FAILED, align 4
  %29 = call i8* @nl80211hdr_put(%struct.sk_buff* %27, i32 0, i32 0, i32 0, i32 %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %34 = call i32 @nlmsg_free(%struct.sk_buff* %33)
  br label %74

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %37 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @nla_put_u32(%struct.sk_buff* %36, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %45 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @nla_put(%struct.sk_buff* %44, i32 %45, i32 %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = load i32, i32* @NL80211_ATTR_CONN_FAILED_REASON, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %43, %35
  br label %68

57:                                               ; preds = %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @genlmsg_end(%struct.sk_buff* %58, i8* %59)
  %61 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %62 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %61, i32 0, i32 0
  %63 = call i32 @wiphy_net(i32* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @genlmsg_multicast_netns(i32 %63, %struct.sk_buff* %64, i32 0, i32 %65, i32 %66)
  br label %74

68:                                               ; preds = %56
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @genlmsg_cancel(%struct.sk_buff* %69, i8* %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = call i32 @nlmsg_free(%struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %68, %57, %32, %25
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

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
