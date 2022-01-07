; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_mlme_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_mlme_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_FRAME = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i64, i32, i32)* @nl80211_send_mlme_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_send_mlme_event(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call %struct.sk_buff* @nlmsg_new(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %13, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %71

21:                                               ; preds = %6
  %22 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i8* @nl80211hdr_put(%struct.sk_buff* %22, i32 0, i32 0, i32 0, i32 %23)
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %29 = call i32 @nlmsg_free(%struct.sk_buff* %28)
  br label %71

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %32 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nla_put_u32(%struct.sk_buff* %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %40 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nla_put_u32(%struct.sk_buff* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %48 = load i32, i32* @NL80211_ATTR_FRAME, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 @nla_put(%struct.sk_buff* %47, i32 %48, i64 %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %38, %30
  br label %65

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @genlmsg_end(%struct.sk_buff* %55, i8* %56)
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %59 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %58, i32 0, i32 0
  %60 = call i32 @wiphy_net(i32* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @genlmsg_multicast_netns(i32 %60, %struct.sk_buff* %61, i32 0, i32 %62, i32 %63)
  br label %71

65:                                               ; preds = %53
  %66 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @genlmsg_cancel(%struct.sk_buff* %66, i8* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %70 = call i32 @nlmsg_free(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %65, %54, %27, %20
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
