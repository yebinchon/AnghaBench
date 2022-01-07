; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_rdev-ops.h_rdev_flush_pmksa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_rdev-ops.h_rdev_flush_pmksa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.net_device*)* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*)* @rdev_flush_pmksa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdev_flush_pmksa(%struct.cfg80211_registered_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %7 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call i32 @trace_rdev_flush_pmksa(i32* %7, %struct.net_device* %8)
  %10 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %11 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32*, %struct.net_device*)*, i32 (i32*, %struct.net_device*)** %13, align 8
  %15 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %16 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32 %14(i32* %16, %struct.net_device* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @trace_rdev_return_int(i32* %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @trace_rdev_flush_pmksa(i32*, %struct.net_device*) #1

declare dso_local i32 @trace_rdev_return_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
