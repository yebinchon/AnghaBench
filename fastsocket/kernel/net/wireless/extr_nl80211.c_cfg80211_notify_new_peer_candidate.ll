; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_notify_new_peer_candidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_notify_new_peer_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_NEW_PEER_CANDIDATE = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_ATTR_IE = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_notify_new_peer_candidate(%struct.net_device* %0, i64* %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %11, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %12, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %104

31:                                               ; preds = %5
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = call i32 @trace_cfg80211_notify_new_peer_candidate(%struct.net_device* %32, i64* %33)
  %35 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.sk_buff* @nlmsg_new(i32 %35, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %13, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %104

41:                                               ; preds = %31
  %42 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %43 = load i32, i32* @NL80211_CMD_NEW_PEER_CANDIDATE, align 4
  %44 = call i8* @nl80211hdr_put(%struct.sk_buff* %42, i32 0, i32 0, i32 0, i32 %43)
  store i8* %44, i8** %14, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %49 = call i32 @nlmsg_free(%struct.sk_buff* %48)
  br label %104

50:                                               ; preds = %41
  %51 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %52 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %53 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %54 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %60 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @nla_put_u32(%struct.sk_buff* %59, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %68 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %69 = load i64, i64* @ETH_ALEN, align 8
  %70 = load i64*, i64** %7, align 8
  %71 = call i64 @nla_put(%struct.sk_buff* %67, i32 %68, i64 %69, i64* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i64*, i64** %8, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %81 = load i32, i32* @NL80211_ATTR_IE, align 4
  %82 = load i64, i64* %9, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = call i64 @nla_put(%struct.sk_buff* %80, i32 %81, i64 %82, i64* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79, %66, %58, %50
  br label %98

87:                                               ; preds = %79, %76, %73
  %88 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = call i32 @genlmsg_end(%struct.sk_buff* %88, i8* %89)
  %91 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %92 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %91, i32 0, i32 0
  %93 = call i32 @wiphy_net(i32* %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @genlmsg_multicast_netns(i32 %93, %struct.sk_buff* %94, i32 0, i32 %95, i32 %96)
  br label %104

98:                                               ; preds = %86
  %99 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = call i32 @genlmsg_cancel(%struct.sk_buff* %99, i8* %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %103 = call i32 @nlmsg_free(%struct.sk_buff* %102)
  br label %104

104:                                              ; preds = %98, %87, %47, %40, %30
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @trace_cfg80211_notify_new_peer_candidate(%struct.net_device*, i64*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i64*) #1

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
