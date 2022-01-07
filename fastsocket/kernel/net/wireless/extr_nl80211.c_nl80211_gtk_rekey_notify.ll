; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_gtk_rekey_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_gtk_rekey_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_SET_REKEY_OFFLOAD = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_REKEY_DATA = common dso_local global i32 0, align 4
@NL80211_REKEY_DATA_REPLAY_CTR = common dso_local global i32 0, align 4
@NL80211_REPLAY_CTR_LEN = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i32*, i32)* @nl80211_gtk_rekey_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_gtk_rekey_notify(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.sk_buff* @nlmsg_new(i32 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %11, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %88

20:                                               ; preds = %5
  %21 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %22 = load i32, i32* @NL80211_CMD_SET_REKEY_OFFLOAD, align 4
  %23 = call i8* @nl80211hdr_put(%struct.sk_buff* %21, i32 0, i32 0, i32 0, i32 %22)
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %28 = call i32 @nlmsg_free(%struct.sk_buff* %27)
  br label %88

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %32 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %33 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nla_put_u32(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @nla_put_u32(%struct.sk_buff* %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @nla_put(%struct.sk_buff* %46, i32 %47, i32 %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45, %37, %29
  br label %82

53:                                               ; preds = %45
  %54 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %55 = load i32, i32* @NL80211_ATTR_REKEY_DATA, align 4
  %56 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %54, i32 %55)
  store %struct.nlattr* %56, %struct.nlattr** %12, align 8
  %57 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %82

60:                                               ; preds = %53
  %61 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %62 = load i32, i32* @NL80211_REKEY_DATA_REPLAY_CTR, align 4
  %63 = load i32, i32* @NL80211_REPLAY_CTR_LEN, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @nla_put(%struct.sk_buff* %61, i32 %62, i32 %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %82

68:                                               ; preds = %60
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %71 = call i32 @nla_nest_end(%struct.sk_buff* %69, %struct.nlattr* %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @genlmsg_end(%struct.sk_buff* %72, i8* %73)
  %75 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %76 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %75, i32 0, i32 0
  %77 = call i32 @wiphy_net(i32* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @genlmsg_multicast_netns(i32 %77, %struct.sk_buff* %78, i32 0, i32 %79, i32 %80)
  br label %88

82:                                               ; preds = %67, %59, %52
  %83 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @genlmsg_cancel(%struct.sk_buff* %83, i8* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %87 = call i32 @nlmsg_free(%struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %82, %68, %26, %19
  ret void
}

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
