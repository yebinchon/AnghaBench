; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ibss.c_cfg80211_ibss_joined.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ibss.c_cfg80211_ibss_joined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32, i32, i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CFG80211_SME_CONNECTING = common dso_local global i64 0, align 8
@EVENT_IBSS_JOINED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_ibss_joined(%struct.net_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.cfg80211_event*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  store %struct.wireless_dev* %13, %struct.wireless_dev** %7, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %16)
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @trace_cfg80211_ibss_joined(%struct.net_device* %18, i32* %19)
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CFG80211_SME_CONNECTING, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @CFG80211_DEV_WARN_ON(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.cfg80211_event* @kzalloc(i32 12, i32 %28)
  store %struct.cfg80211_event* %29, %struct.cfg80211_event** %9, align 8
  %30 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %31 = icmp ne %struct.cfg80211_event* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  br label %61

33:                                               ; preds = %3
  %34 = load i32, i32* @EVENT_IBSS_JOINED, align 4
  %35 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %36 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %38 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32 %40, i32* %41, i32 %42)
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %45 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.cfg80211_event*, %struct.cfg80211_event** %9, align 8
  %49 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %48, i32 0, i32 0
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %51 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %50, i32 0, i32 2
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 1
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* @cfg80211_wq, align 4
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %59 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %58, i32 0, i32 0
  %60 = call i32 @queue_work(i32 %57, i32* %59)
  br label %61

61:                                               ; preds = %33, %32
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @trace_cfg80211_ibss_joined(%struct.net_device*, i32*) #1

declare dso_local i32 @CFG80211_DEV_WARN_ON(i32) #1

declare dso_local %struct.cfg80211_event* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
