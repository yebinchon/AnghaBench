; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_pmksa_candidate_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_pmksa_candidate_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_PMKSA_CANDIDATE = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_PMKSA_CANDIDATE = common dso_local global i32 0, align 4
@NL80211_PMKSA_CANDIDATE_INDEX = common dso_local global i32 0, align 4
@NL80211_PMKSA_CANDIDATE_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_PMKSA_CANDIDATE_PREAUTH = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i32, i32)* @nl80211_pmksa_candidate_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_pmksa_candidate_notify(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call %struct.sk_buff* @nlmsg_new(i32 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %13, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %97

22:                                               ; preds = %6
  %23 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %24 = load i32, i32* @NL80211_CMD_PMKSA_CANDIDATE, align 4
  %25 = call i8* @nl80211hdr_put(%struct.sk_buff* %23, i32 0, i32 0, i32 0, i32 %24)
  store i8* %25, i8** %15, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %30 = call i32 @nlmsg_free(%struct.sk_buff* %29)
  br label %97

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %33 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %35 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %41 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nla_put_u32(%struct.sk_buff* %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %31
  br label %91

48:                                               ; preds = %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %50 = load i32, i32* @NL80211_ATTR_PMKSA_CANDIDATE, align 4
  %51 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %49, i32 %50)
  store %struct.nlattr* %51, %struct.nlattr** %14, align 8
  %52 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %91

55:                                               ; preds = %48
  %56 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %57 = load i32, i32* @NL80211_PMKSA_CANDIDATE_INDEX, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @nla_put_u32(%struct.sk_buff* %56, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %55
  %62 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %63 = load i32, i32* @NL80211_PMKSA_CANDIDATE_BSSID, align 4
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = call i64 @nla_put(%struct.sk_buff* %62, i32 %63, i32 %64, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %73 = load i32, i32* @NL80211_PMKSA_CANDIDATE_PREAUTH, align 4
  %74 = call i64 @nla_put_flag(%struct.sk_buff* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %61, %55
  br label %91

77:                                               ; preds = %71, %68
  %78 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %79 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %80 = call i32 @nla_nest_end(%struct.sk_buff* %78, %struct.nlattr* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = call i32 @genlmsg_end(%struct.sk_buff* %81, i8* %82)
  %84 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %85 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %84, i32 0, i32 1
  %86 = call i32 @wiphy_net(i32* %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @genlmsg_multicast_netns(i32 %86, %struct.sk_buff* %87, i32 0, i32 %88, i32 %89)
  br label %97

91:                                               ; preds = %76, %54, %47
  %92 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @genlmsg_cancel(%struct.sk_buff* %92, i8* %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %96 = call i32 @nlmsg_free(%struct.sk_buff* %95)
  br label %97

97:                                               ; preds = %91, %77, %28, %21
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

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
