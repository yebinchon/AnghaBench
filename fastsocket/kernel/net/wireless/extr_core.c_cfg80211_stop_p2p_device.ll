; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_cfg80211_stop_p2p_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_core.c_cfg80211_stop_p2p_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32 }

@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_stop_p2p_device(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %3, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %4, align 8
  %6 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %7 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %6, i32 0, i32 4
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %9, i32 0, i32 3
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %13 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %68

27:                                               ; preds = %21
  %28 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %30 = call i32 @rdev_stop_p2p_device(%struct.cfg80211_registered_device* %28, %struct.wireless_dev* %29)
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %32 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %38 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %27
  %42 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %43 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %45, align 8
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %48 = icmp eq %struct.wireless_dev* %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %41
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %51 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %50, i32 0, i32 1
  %52 = call i32 @work_busy(i32* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON(i32 %56)
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %59 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @___cfg80211_scan_done(%struct.cfg80211_registered_device* %62, i32 %66)
  br label %68

68:                                               ; preds = %20, %26, %49, %41, %27
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rdev_stop_p2p_device(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @work_busy(i32*) #1

declare dso_local i32 @___cfg80211_scan_done(%struct.cfg80211_registered_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
