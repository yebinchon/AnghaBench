; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_stop_p2p_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_stop_p2p_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.wireless_dev** }
%struct.wireless_dev = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i64, i32, i32, %struct.TYPE_2__* }

@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_stop_p2p_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_stop_p2p_device(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 0
  %10 = load %struct.wireless_dev**, %struct.wireless_dev*** %9, align 8
  %11 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %10, i64 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %13 = bitcast %struct.wireless_dev* %12 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %13, %struct.cfg80211_registered_device** %6, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev**, %struct.wireless_dev*** %15, align 8
  %17 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %16, i64 1
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  store %struct.wireless_dev* %18, %struct.wireless_dev** %7, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %20 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %54

27:                                               ; preds = %2
  %28 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %29 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %54

37:                                               ; preds = %27
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %42 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %41, i32 0, i32 2
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %45 = bitcast %struct.cfg80211_registered_device* %44 to %struct.wireless_dev*
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %47 = call i32 @cfg80211_stop_p2p_device(%struct.wireless_dev* %45, %struct.wireless_dev* %46)
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 2
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %52 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %37, %34, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_stop_p2p_device(%struct.wireless_dev*, %struct.wireless_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
