; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sysfs.c_wiphy_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sysfs.c_wiphy_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cfg80211_registered_device = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @wiphy_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiphy_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.cfg80211_registered_device* @dev_to_rdev(%struct.device* %7)
  store %struct.cfg80211_registered_device* %8, %struct.cfg80211_registered_device** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 (...) @get_seconds()
  %10 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %11 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = call i32 (...) @rtnl_lock()
  %13 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %14 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %2
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %25 = call i32 @cfg80211_leave_all(%struct.cfg80211_registered_device* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %28 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %36 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @rdev_suspend(%struct.cfg80211_registered_device* %34, i32* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %26
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %44 = call i32 @cfg80211_leave_all(%struct.cfg80211_registered_device* %43)
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %46 = call i32 @rdev_suspend(%struct.cfg80211_registered_device* %45, i32* null)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %39
  br label %48

48:                                               ; preds = %47, %2
  %49 = call i32 (...) @rtnl_unlock()
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.cfg80211_registered_device* @dev_to_rdev(%struct.device*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @cfg80211_leave_all(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @rdev_suspend(%struct.cfg80211_registered_device*, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
