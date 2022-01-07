; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_scan_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_scan_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.wireless_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cfg80211_registered_device*, %struct.wireless_dev*, i32, i32, i32, i32)* @nl80211_send_scan_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_scan_msg(%struct.sk_buff* %0, %struct.cfg80211_registered_device* %1, %struct.wireless_dev* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.cfg80211_registered_device* %1, %struct.cfg80211_registered_device** %10, align 8
  store %struct.wireless_dev* %2, %struct.wireless_dev** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %15, align 4
  %22 = call i8* @nl80211hdr_put(%struct.sk_buff* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %70

26:                                               ; preds = %7
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %29 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %30 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @nla_put_u32(%struct.sk_buff* %27, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %26
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %36 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @nla_put_u32(%struct.sk_buff* %40, i32 %41, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %39, %34
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %53 = call i32 @wdev_id(%struct.wireless_dev* %52)
  %54 = call i64 @nla_put_u64(%struct.sk_buff* %50, i32 %51, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %39, %26
  br label %64

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %60 = call i32 @nl80211_add_scan_req(%struct.sk_buff* %58, %struct.cfg80211_registered_device* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = call i32 @genlmsg_end(%struct.sk_buff* %61, i8* %62)
  store i32 %63, i32* %8, align 4
  br label %70

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 @genlmsg_cancel(%struct.sk_buff* %65, i8* %66)
  %68 = load i32, i32* @EMSGSIZE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %64, %57, %25
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i32 @nl80211_add_scan_req(%struct.sk_buff*, %struct.cfg80211_registered_device*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
