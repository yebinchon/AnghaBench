; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_connect_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_connect_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_CONNECT = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_ATTR_STATUS_CODE = common dso_local global i32 0, align 4
@NL80211_ATTR_REQ_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_RESP_IE = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_send_connect_result(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2, i32* %3, i64 %4, i32* %5, i64 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %10, align 8
  store %struct.net_device* %1, %struct.net_device** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %22 = load i32, i32* %18, align 4
  %23 = call %struct.sk_buff* @nlmsg_new(i32 %21, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %19, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %9
  br label %106

27:                                               ; preds = %9
  %28 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %29 = load i32, i32* @NL80211_CMD_CONNECT, align 4
  %30 = call i8* @nl80211hdr_put(%struct.sk_buff* %28, i32 0, i32 0, i32 0, i32 %29)
  store i8* %30, i8** %20, align 8
  %31 = load i8*, i8** %20, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %35 = call i32 @nlmsg_free(%struct.sk_buff* %34)
  br label %106

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %38 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %39 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %40 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @nla_put_u32(%struct.sk_buff* %37, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %88, label %44

44:                                               ; preds = %36
  %45 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %46 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %47 = load %struct.net_device*, %struct.net_device** %11, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %45, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %88, label %52

52:                                               ; preds = %44
  %53 = load i32*, i32** %12, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %57 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %58 = load i64, i64* @ETH_ALEN, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call i64 @nla_put(%struct.sk_buff* %56, i32 %57, i64 %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %55, %52
  %63 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %64 = load i32, i32* @NL80211_ATTR_STATUS_CODE, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call i64 @nla_put_u16(%struct.sk_buff* %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %62
  %69 = load i32*, i32** %13, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %73 = load i32, i32* @NL80211_ATTR_REQ_IE, align 4
  %74 = load i64, i64* %14, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = call i64 @nla_put(%struct.sk_buff* %72, i32 %73, i64 %74, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %71, %68
  %79 = load i32*, i32** %15, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %83 = load i32, i32* @NL80211_ATTR_RESP_IE, align 4
  %84 = load i64, i64* %16, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i64 @nla_put(%struct.sk_buff* %82, i32 %83, i64 %84, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81, %71, %62, %55, %44, %36
  br label %100

89:                                               ; preds = %81, %78
  %90 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %91 = load i8*, i8** %20, align 8
  %92 = call i32 @genlmsg_end(%struct.sk_buff* %90, i8* %91)
  %93 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %94 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %93, i32 0, i32 0
  %95 = call i32 @wiphy_net(i32* %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @genlmsg_multicast_netns(i32 %95, %struct.sk_buff* %96, i32 0, i32 %97, i32 %98)
  br label %106

100:                                              ; preds = %88
  %101 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %102 = load i8*, i8** %20, align 8
  %103 = call i32 @genlmsg_cancel(%struct.sk_buff* %101, i8* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %105 = call i32 @nlmsg_free(%struct.sk_buff* %104)
  br label %106

106:                                              ; preds = %100, %89, %33, %26
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

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
