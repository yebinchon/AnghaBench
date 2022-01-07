; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_probe_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_probe_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_PROBE_CLIENT = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@NL80211_ATTR_ACK = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_probe_status(%struct.net_device* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  store %struct.wireless_dev* %18, %struct.wireless_dev** %11, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %20 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %12, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @trace_cfg80211_probe_status(%struct.net_device* %23, i32* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.sk_buff* @nlmsg_new(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %13, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %5
  br label %104

34:                                               ; preds = %5
  %35 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %36 = load i32, i32* @NL80211_CMD_PROBE_CLIENT, align 4
  %37 = call i8* @nl80211hdr_put(%struct.sk_buff* %35, i32 0, i32 0, i32 0, i32 %36)
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %42 = call i32 @nlmsg_free(%struct.sk_buff* %41)
  br label %104

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %45 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_u32(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %43
  %52 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %53 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @nla_put_u32(%struct.sk_buff* %52, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %51
  %60 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %61 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 @nla_put(%struct.sk_buff* %60, i32 %61, i32 %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %59
  %67 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %68 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @nla_put_u64(%struct.sk_buff* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %77 = load i32, i32* @NL80211_ATTR_ACK, align 4
  %78 = call i64 @nla_put_flag(%struct.sk_buff* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %66, %59, %51, %43
  br label %98

81:                                               ; preds = %75, %72
  %82 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 @genlmsg_end(%struct.sk_buff* %82, i8* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %89 = call i32 @nlmsg_free(%struct.sk_buff* %88)
  br label %104

90:                                               ; preds = %81
  %91 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %92 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %91, i32 0, i32 0
  %93 = call i32 @wiphy_net(i32* %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @genlmsg_multicast_netns(i32 %93, %struct.sk_buff* %94, i32 0, i32 %95, i32 %96)
  br label %104

98:                                               ; preds = %80
  %99 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = call i32 @genlmsg_cancel(%struct.sk_buff* %99, i8* %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %103 = call i32 @nlmsg_free(%struct.sk_buff* %102)
  br label %104

104:                                              ; preds = %98, %90, %87, %40, %33
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @trace_cfg80211_probe_status(%struct.net_device*, i32*, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @nla_put_u64(%struct.sk_buff*, i32, i32) #1

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
