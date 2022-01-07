; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c___nl80211_unexpected_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c___nl80211_unexpected_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*, i32)* @__nl80211_unexpected_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nl80211_unexpected_frame(%struct.net_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  store %struct.wireless_dev* %18, %struct.wireless_dev** %10, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %20 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %11, align 8
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ACCESS_ONCE(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %91

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.sk_buff* @nlmsg_new(i32 100, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %12, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %91

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @nl80211hdr_put(%struct.sk_buff* %37, i32 0, i32 0, i32 0, i32 %38)
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %44 = call i32 @nlmsg_free(%struct.sk_buff* %43)
  store i32 1, i32* %5, align 4
  br label %91

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %47 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %45
  %54 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %55 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @nla_put_u32(%struct.sk_buff* %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %63 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i64 @nla_put(%struct.sk_buff* %62, i32 %63, i32 %64, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61, %53, %45
  br label %85

69:                                               ; preds = %61
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @genlmsg_end(%struct.sk_buff* %70, i8* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %77 = call i32 @nlmsg_free(%struct.sk_buff* %76)
  store i32 1, i32* %5, align 4
  br label %91

78:                                               ; preds = %69
  %79 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %80 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %79, i32 0, i32 0
  %81 = call i32 @wiphy_net(i32* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @genlmsg_unicast(i32 %81, %struct.sk_buff* %82, i32 %83)
  store i32 1, i32* %5, align 4
  br label %91

85:                                               ; preds = %68
  %86 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @genlmsg_cancel(%struct.sk_buff* %86, i8* %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %90 = call i32 @nlmsg_free(%struct.sk_buff* %89)
  store i32 1, i32* %5, align 4
  br label %91

91:                                               ; preds = %85, %78, %75, %42, %35, %29
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
