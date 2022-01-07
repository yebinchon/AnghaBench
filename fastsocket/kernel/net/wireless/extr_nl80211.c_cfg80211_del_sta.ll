; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_del_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_del_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_DEL_STATION = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_del_sta(%struct.net_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.wiphy*, %struct.wiphy** %14, align 8
  store %struct.wiphy* %15, %struct.wiphy** %7, align 8
  %16 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %17 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %16)
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @trace_cfg80211_del_sta(%struct.net_device* %18, i32* %19)
  %21 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.sk_buff* @nlmsg_new(i32 %21, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %9, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %69

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = load i32, i32* @NL80211_CMD_DEL_STATION, align 4
  %30 = call i8* @nl80211hdr_put(%struct.sk_buff* %28, i32 0, i32 0, i32 0, i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = call i32 @nlmsg_free(%struct.sk_buff* %34)
  br label %69

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @nla_put_u32(%struct.sk_buff* %37, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %36
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @nla_put(%struct.sk_buff* %45, i32 %46, i32 %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %36
  br label %63

52:                                               ; preds = %44
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @genlmsg_end(%struct.sk_buff* %53, i8* %54)
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %57 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %56, i32 0, i32 0
  %58 = call i32 @wiphy_net(i32* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @genlmsg_multicast_netns(i32 %58, %struct.sk_buff* %59, i32 0, i32 %60, i32 %61)
  br label %69

63:                                               ; preds = %51
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @genlmsg_cancel(%struct.sk_buff* %64, i8* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = call i32 @nlmsg_free(%struct.sk_buff* %67)
  br label %69

69:                                               ; preds = %63, %52, %33, %26
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_del_sta(%struct.net_device*, i32*) #1

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
