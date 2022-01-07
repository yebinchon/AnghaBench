; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_rdev-ops.h_rdev_tdls_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_rdev-ops.h_rdev_tdls_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.net_device*, i32*, i32, i32, i32, i32*, i64)* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i32, i32, i32, i32*, i64)* @rdev_tdls_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdev_tdls_mgmt(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, i64 %7) #0 {
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i64 %7, i64* %16, align 8
  %18 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %19 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32*, i32** %15, align 8
  %26 = load i64, i64* %16, align 8
  %27 = call i32 @trace_rdev_tdls_mgmt(i32* %19, %struct.net_device* %20, i32* %21, i32 %22, i32 %23, i32 %24, i32* %25, i64 %26)
  %28 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %29 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32*, %struct.net_device*, i32*, i32, i32, i32, i32*, i64)*, i32 (i32*, %struct.net_device*, i32*, i32, i32, i32, i32*, i64)** %31, align 8
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 0
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32*, i32** %15, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call i32 %32(i32* %34, %struct.net_device* %35, i32* %36, i32 %37, i32 %38, i32 %39, i32* %40, i64 %41)
  store i32 %42, i32* %17, align 4
  %43 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %44 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %43, i32 0, i32 0
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @trace_rdev_return_int(i32* %44, i32 %45)
  %47 = load i32, i32* %17, align 4
  ret i32 %47
}

declare dso_local i32 @trace_rdev_tdls_mgmt(i32*, %struct.net_device*, i32*, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @trace_rdev_return_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
