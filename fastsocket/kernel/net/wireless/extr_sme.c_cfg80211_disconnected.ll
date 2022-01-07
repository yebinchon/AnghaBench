; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_disconnected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32, i32, i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32* }

@CFG80211_SME_CONNECTED = common dso_local global i64 0, align 8
@EVENT_DISCONNECTED = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_disconnected(%struct.net_device* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  %13 = alloca %struct.cfg80211_event*, align 8
  %14 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %11, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %12, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @CFG80211_DEV_WARN_ON(i32 %27)
  %29 = load i64, i64* %9, align 8
  %30 = add i64 40, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.cfg80211_event* @kzalloc(i32 %31, i32 %32)
  store %struct.cfg80211_event* %33, %struct.cfg80211_event** %13, align 8
  %34 = load %struct.cfg80211_event*, %struct.cfg80211_event** %13, align 8
  %35 = icmp ne %struct.cfg80211_event* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %5
  br label %80

37:                                               ; preds = %5
  %38 = load i32, i32* @EVENT_DISCONNECTED, align 4
  %39 = load %struct.cfg80211_event*, %struct.cfg80211_event** %13, align 8
  %40 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cfg80211_event*, %struct.cfg80211_event** %13, align 8
  %42 = bitcast %struct.cfg80211_event* %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 40
  %44 = load %struct.cfg80211_event*, %struct.cfg80211_event** %13, align 8
  %45 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32* %43, i32** %46, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.cfg80211_event*, %struct.cfg80211_event** %13, align 8
  %49 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.cfg80211_event*, %struct.cfg80211_event** %13, align 8
  %52 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = load i32*, i32** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @memcpy(i8* %55, i32* %56, i64 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.cfg80211_event*, %struct.cfg80211_event** %13, align 8
  %61 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %64 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.cfg80211_event*, %struct.cfg80211_event** %13, align 8
  %68 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %67, i32 0, i32 0
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 2
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  %72 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %73 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %72, i32 0, i32 1
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* @cfg80211_wq, align 4
  %77 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %78 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %77, i32 0, i32 0
  %79 = call i32 @queue_work(i32 %76, i32* %78)
  br label %80

80:                                               ; preds = %37, %36
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @CFG80211_DEV_WARN_ON(i32) #1

declare dso_local %struct.cfg80211_event* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

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
