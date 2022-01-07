; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_ft_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_cfg80211_ft_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_ft_event_params = type { i64, i32, i64, i32, i64 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NL80211_CMD_FT_EVENT = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_IE_RIC = common dso_local global i32 0, align 4
@nl80211_mlme_mcgrp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_ft_event(%struct.net_device* %0, %struct.cfg80211_ft_event_params* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cfg80211_ft_event_params*, align 8
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.cfg80211_ft_event_params* %1, %struct.cfg80211_ft_event_params** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  store %struct.wiphy* %14, %struct.wiphy** %5, align 8
  %15 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %16 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %15)
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %6, align 8
  %17 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %20 = call i32 @trace_cfg80211_ft_event(%struct.wiphy* %17, %struct.net_device* %18, %struct.cfg80211_ft_event_params* %19)
  %21 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %22 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %108

26:                                               ; preds = %2
  %27 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.sk_buff* @nlmsg_new(i32 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %108

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = load i32, i32* @NL80211_CMD_FT_EVENT, align 4
  %36 = call i8* @nl80211hdr_put(%struct.sk_buff* %34, i32 0, i32 0, i32 0, i32 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i32 @nlmsg_free(%struct.sk_buff* %40)
  br label %108

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %46 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nla_put_u32(%struct.sk_buff* %43, i32 %44, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nla_put_u32(%struct.sk_buff* %49, i32 %50, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %59 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @nla_put(%struct.sk_buff* %55, i32 %56, i32 %57, i64 %60)
  %62 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %63 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %42
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = load i32, i32* @NL80211_ATTR_IE, align 4
  %69 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %70 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %73 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @nla_put(%struct.sk_buff* %67, i32 %68, i32 %71, i64 %74)
  br label %76

76:                                               ; preds = %66, %42
  %77 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %78 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = load i32, i32* @NL80211_ATTR_IE_RIC, align 4
  %84 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %85 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.cfg80211_ft_event_params*, %struct.cfg80211_ft_event_params** %4, align 8
  %88 = getelementptr inbounds %struct.cfg80211_ft_event_params, %struct.cfg80211_ft_event_params* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @nla_put(%struct.sk_buff* %82, i32 %83, i32 %86, i64 %89)
  br label %91

91:                                               ; preds = %81, %76
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @genlmsg_end(%struct.sk_buff* %92, i8* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = call i32 @nlmsg_free(%struct.sk_buff* %98)
  br label %108

100:                                              ; preds = %91
  %101 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %102 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %101, i32 0, i32 0
  %103 = call i32 @wiphy_net(i32* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nl80211_mlme_mcgrp, i32 0, i32 0), align 4
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i32 @genlmsg_multicast_netns(i32 %103, %struct.sk_buff* %104, i32 0, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %100, %97, %39, %32, %25
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_ft_event(%struct.wiphy*, %struct.net_device*, %struct.cfg80211_ft_event_params*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
