; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c___cfg80211_stop_sched_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c___cfg80211_stop_sched_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NL80211_CMD_SCHED_SCAN_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cfg80211_stop_sched_scan(%struct.cfg80211_registered_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %9 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %8, i32 0, i32 1
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %12 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  %27 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = call i32 @rdev_sched_scan_stop(%struct.cfg80211_registered_device* %27, %struct.net_device* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = load i32, i32* @NL80211_CMD_SCHED_SCAN_STOPPED, align 4
  %39 = call i32 @nl80211_send_sched_scan(%struct.cfg80211_registered_device* %36, %struct.net_device* %37, i32 %38)
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %41 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @kfree(%struct.TYPE_2__* %42)
  %44 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %45 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %44, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %35, %32, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rdev_sched_scan_stop(%struct.cfg80211_registered_device*, %struct.net_device*) #1

declare dso_local i32 @nl80211_send_sched_scan(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
