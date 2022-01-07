; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sysfs.c_wiphy_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sysfs.c_wiphy_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @wiphy_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiphy_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.cfg80211_registered_device* @dev_to_rdev(%struct.device* %5)
  store %struct.cfg80211_registered_device* %6, %struct.cfg80211_registered_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %8 = call i64 (...) @get_seconds()
  %9 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = call i32 @cfg80211_bss_age(%struct.cfg80211_registered_device* %7, i64 %12)
  %14 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %15 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = call i32 (...) @rtnl_lock()
  %22 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %23 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %29 = call i32 @rdev_resume(%struct.cfg80211_registered_device* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = call i32 (...) @rtnl_unlock()
  br label %32

32:                                               ; preds = %30, %1
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.cfg80211_registered_device* @dev_to_rdev(%struct.device*) #1

declare dso_local i32 @cfg80211_bss_age(%struct.cfg80211_registered_device*, i64) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rdev_resume(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
