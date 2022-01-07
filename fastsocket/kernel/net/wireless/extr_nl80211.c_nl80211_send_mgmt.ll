; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.wireless_dev = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_FRAME = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i32 0, align 4
@NL80211_ATTR_RX_SIGNAL_DBM = common dso_local global i32 0, align 4
@NL80211_ATTR_FRAME = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl80211_send_mgmt(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.net_device*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %10, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %18, align 8
  %24 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %25 = load i32, i32* %17, align 4
  %26 = call %struct.sk_buff* @nlmsg_new(i32 %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %19, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %8
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %110

32:                                               ; preds = %8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %34 = load i32, i32* @NL80211_CMD_FRAME, align 4
  %35 = call i8* @nl80211hdr_put(%struct.sk_buff* %33, i32 0, i32 0, i32 0, i32 %34)
  store i8* %35, i8** %20, align 8
  %36 = load i8*, i8** %20, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %40 = call i32 @nlmsg_free(%struct.sk_buff* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %110

43:                                               ; preds = %32
  %44 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %45 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_u32(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %91, label %51

51:                                               ; preds = %43
  %52 = load %struct.net_device*, %struct.net_device** %18, align 8
  %53 = icmp ne %struct.net_device* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %56 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %57 = load %struct.net_device*, %struct.net_device** %18, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @nla_put_u32(%struct.sk_buff* %55, i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %91, label %62

62:                                               ; preds = %54, %51
  %63 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %64 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %66 = call i32 @wdev_id(%struct.wireless_dev* %65)
  %67 = call i64 @nla_put_u64(%struct.sk_buff* %63, i32 %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %62
  %70 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %71 = load i32, i32* @NL80211_ATTR_WIPHY_FREQ, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i64 @nla_put_u32(%struct.sk_buff* %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %80 = load i32, i32* @NL80211_ATTR_RX_SIGNAL_DBM, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @nla_put_u32(%struct.sk_buff* %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %78, %75
  %85 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %86 = load i32, i32* @NL80211_ATTR_FRAME, align 4
  %87 = load i64, i64* %16, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = call i64 @nla_put(%struct.sk_buff* %85, i32 %86, i64 %87, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84, %78, %69, %62, %54, %43
  br label %102

92:                                               ; preds = %84
  %93 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %94 = load i8*, i8** %20, align 8
  %95 = call i32 @genlmsg_end(%struct.sk_buff* %93, i8* %94)
  %96 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %97 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %96, i32 0, i32 1
  %98 = call i32 @wiphy_net(i32* %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @genlmsg_unicast(i32 %98, %struct.sk_buff* %99, i32 %100)
  store i32 %101, i32* %9, align 4
  br label %110

102:                                              ; preds = %91
  %103 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %104 = load i8*, i8** %20, align 8
  %105 = call i32 @genlmsg_cancel(%struct.sk_buff* %103, i8* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %107 = call i32 @nlmsg_free(%struct.sk_buff* %106)
  %108 = load i32, i32* @ENOBUFS, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %102, %92, %38, %29
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32*) #1

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
