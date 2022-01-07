; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_wiphy_netns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_wiphy_netns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.cfg80211_registered_device** }
%struct.cfg80211_registered_device = type { i32 }
%struct.net = type { i32 }

@NL80211_ATTR_PID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_wiphy_netns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_wiphy_netns(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 1
  %12 = load %struct.cfg80211_registered_device**, %struct.cfg80211_registered_device*** %11, align 8
  %13 = getelementptr inbounds %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, i64 0
  %14 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  store %struct.cfg80211_registered_device* %14, %struct.cfg80211_registered_device** %6, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @NL80211_ATTR_PID, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @NL80211_ATTR_PID, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nla_get_u32(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.net* @get_net_ns_by_pid(i32 %33)
  store %struct.net* %34, %struct.net** %7, align 8
  %35 = load %struct.net*, %struct.net** %7, align 8
  %36 = call i64 @IS_ERR(%struct.net* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.net*, %struct.net** %7, align 8
  %40 = call i32 @PTR_ERR(%struct.net* %39)
  store i32 %40, i32* %3, align 4
  br label %56

41:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  %42 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %43 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %42, i32 0, i32 0
  %44 = call i32 @wiphy_net(i32* %43)
  %45 = load %struct.net*, %struct.net** %7, align 8
  %46 = call i32 @net_eq(i32 %44, %struct.net* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %50 = load %struct.net*, %struct.net** %7, align 8
  %51 = call i32 @cfg80211_switch_netns(%struct.cfg80211_registered_device* %49, %struct.net* %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.net*, %struct.net** %7, align 8
  %54 = call i32 @put_net(%struct.net* %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %38, %22
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local %struct.net* @get_net_ns_by_pid(i32) #1

declare dso_local i64 @IS_ERR(%struct.net*) #1

declare dso_local i32 @PTR_ERR(%struct.net*) #1

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @wiphy_net(i32*) #1

declare dso_local i32 @cfg80211_switch_netns(%struct.cfg80211_registered_device*, %struct.net*) #1

declare dso_local i32 @put_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
