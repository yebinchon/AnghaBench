; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_roamed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_roamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_ROAM = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_ATTR_REQ_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_RESP_IE = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_send_roamed(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2, i32* %3, i64 %4, i32* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %20 = load i32, i32* %16, align 4
  %21 = call %struct.sk_buff* @nlmsg_new(i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %17, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  br label %95

25:                                               ; preds = %8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %27 = load i32, i32* @NL80211_CMD_ROAM, align 4
  %28 = call i8* @nl80211hdr_put(%struct.sk_buff* %26, i32 0, i32 0, i32 0, i32 %27)
  store i8* %28, i8** %18, align 8
  %29 = load i8*, i8** %18, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %33 = call i32 @nlmsg_free(%struct.sk_buff* %32)
  br label %95

34:                                               ; preds = %25
  %35 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %36 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %37 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %38 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @nla_put_u32(%struct.sk_buff* %35, i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %77, label %42

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %44 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %45 = load %struct.net_device*, %struct.net_device** %10, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @nla_put_u32(%struct.sk_buff* %43, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %52 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %53 = load i64, i64* @ETH_ALEN, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i64 @nla_put(%struct.sk_buff* %51, i32 %52, i64 %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %50
  %58 = load i32*, i32** %12, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %62 = load i32, i32* @NL80211_ATTR_REQ_IE, align 4
  %63 = load i64, i64* %13, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i64 @nla_put(%struct.sk_buff* %61, i32 %62, i64 %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %60, %57
  %68 = load i32*, i32** %14, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %72 = load i32, i32* @NL80211_ATTR_RESP_IE, align 4
  %73 = load i64, i64* %15, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i64 @nla_put(%struct.sk_buff* %71, i32 %72, i64 %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %60, %50, %42, %34
  br label %89

78:                                               ; preds = %70, %67
  %79 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = call i32 @genlmsg_end(%struct.sk_buff* %79, i8* %80)
  %82 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %83 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %82, i32 0, i32 0
  %84 = call i32 @wiphy_net(i32* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @genlmsg_multicast_netns(i32 %84, %struct.sk_buff* %85, i32 0, i32 %86, i32 %87)
  br label %95

89:                                               ; preds = %77
  %90 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = call i32 @genlmsg_cancel(%struct.sk_buff* %90, i8* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %94 = call i32 @nlmsg_free(%struct.sk_buff* %93)
  br label %95

95:                                               ; preds = %89, %78, %31, %24
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32*) #1

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
