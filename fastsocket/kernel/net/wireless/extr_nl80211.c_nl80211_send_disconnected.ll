; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_disconnected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NL80211_CMD_DISCONNECT = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_REASON_CODE = common dso_local global i32 0, align 4
@NL80211_ATTR_DISCONNECTED_BY_AP = common dso_local global i32 0, align 4
@NL80211_ATTR_IE = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_send_disconnected(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i64 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sk_buff* @nlmsg_new(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %13, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %94

21:                                               ; preds = %6
  %22 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %23 = load i32, i32* @NL80211_CMD_DISCONNECT, align 4
  %24 = call i8* @nl80211hdr_put(%struct.sk_buff* %22, i32 0, i32 0, i32 0, i32 %23)
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %29 = call i32 @nlmsg_free(%struct.sk_buff* %28)
  br label %94

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %32 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nla_put_u32(%struct.sk_buff* %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %76, label %38

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %40 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nla_put_u32(%struct.sk_buff* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %54 = load i32, i32* @NL80211_ATTR_REASON_CODE, align 4
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @nla_put_u16(%struct.sk_buff* %53, i32 %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %52, %49, %46
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %63 = load i32, i32* @NL80211_ATTR_DISCONNECTED_BY_AP, align 4
  %64 = call i64 @nla_put_flag(%struct.sk_buff* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %61, %58
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %71 = load i32, i32* @NL80211_ATTR_IE, align 4
  %72 = load i64, i64* %11, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i64 @nla_put(%struct.sk_buff* %70, i32 %71, i64 %72, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69, %61, %52, %38, %30
  br label %88

77:                                               ; preds = %69, %66
  %78 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @genlmsg_end(%struct.sk_buff* %78, i8* %79)
  %81 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %82 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %81, i32 0, i32 0
  %83 = call i32 @wiphy_net(i32* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32 @genlmsg_multicast_netns(i32 %83, %struct.sk_buff* %84, i32 0, i32 %85, i32 %86)
  br label %94

88:                                               ; preds = %76
  %89 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 @genlmsg_cancel(%struct.sk_buff* %89, i8* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %93 = call i32 @nlmsg_free(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %88, %77, %27, %20
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

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
