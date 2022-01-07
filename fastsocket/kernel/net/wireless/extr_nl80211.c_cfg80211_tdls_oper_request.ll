; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_tdls_oper_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_tdls_oper_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_TDLS_OPER = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_TDLS_OPERATION = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_REASON_CODE = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_tdls_oper_request(%struct.net_device* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @trace_cfg80211_tdls_oper_request(i32 %25, %struct.net_device* %26, i32* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.sk_buff* @nlmsg_new(i32 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %13, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %5
  br label %108

37:                                               ; preds = %5
  %38 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %39 = load i32, i32* @NL80211_CMD_TDLS_OPER, align 4
  %40 = call i8* @nl80211hdr_put(%struct.sk_buff* %38, i32 0, i32 0, i32 0, i32 %39)
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %45 = call i32 @nlmsg_free(%struct.sk_buff* %44)
  br label %108

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %48 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %49 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %50 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %84, label %54

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %56 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @nla_put_u32(%struct.sk_buff* %55, i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %64 = load i32, i32* @NL80211_ATTR_TDLS_OPERATION, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @nla_put_u8(%struct.sk_buff* %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %62
  %69 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %70 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @nla_put(%struct.sk_buff* %69, i32 %70, i32 %71, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %80 = load i32, i32* @NL80211_ATTR_REASON_CODE, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @nla_put_u16(%struct.sk_buff* %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %68, %62, %54, %46
  br label %102

85:                                               ; preds = %78, %75
  %86 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 @genlmsg_end(%struct.sk_buff* %86, i8* %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %93 = call i32 @nlmsg_free(%struct.sk_buff* %92)
  br label %108

94:                                               ; preds = %85
  %95 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %96 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %95, i32 0, i32 0
  %97 = call i32 @wiphy_net(i32* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @genlmsg_multicast_netns(i32 %97, %struct.sk_buff* %98, i32 0, i32 %99, i32 %100)
  br label %108

102:                                              ; preds = %84
  %103 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 @genlmsg_cancel(%struct.sk_buff* %103, i8* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %107 = call i32 @nlmsg_free(%struct.sk_buff* %106)
  br label %108

108:                                              ; preds = %102, %94, %91, %43, %36
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @trace_cfg80211_tdls_oper_request(i32, %struct.net_device*, i32*, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

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
