; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_rdev-ops.h_rdev_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_rdev-ops.h_rdev_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32, i32, i32*, i64, i32, i32, i32*)* }
%struct.wireless_dev = type { i32 }
%struct.ieee80211_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32, i32, i32*, i64, i32, i32, i32*)* @rdev_mgmt_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdev_mgmt_tx(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4, i32* %5, i64 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.wireless_dev*, align 8
  %13 = alloca %struct.ieee80211_channel*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %11, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %12, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %22 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %23 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %22, i32 0, i32 0
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* %19, align 4
  %30 = call i32 @trace_rdev_mgmt_tx(i32* %23, %struct.wireless_dev* %24, %struct.ieee80211_channel* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %32 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32, i32, i32*, i64, i32, i32, i32*)*, i32 (i32*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32, i32, i32*, i64, i32, i32, i32*)** %34, align 8
  %36 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %37 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %36, i32 0, i32 0
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = load i64, i64* %17, align 8
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i32*, i32** %20, align 8
  %47 = call i32 %35(i32* %37, %struct.wireless_dev* %38, %struct.ieee80211_channel* %39, i32 %40, i32 %41, i32* %42, i64 %43, i32 %44, i32 %45, i32* %46)
  store i32 %47, i32* %21, align 4
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 0
  %50 = load i32, i32* %21, align 4
  %51 = load i32*, i32** %20, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @trace_rdev_return_int_cookie(i32* %49, i32 %50, i32 %52)
  %54 = load i32, i32* %21, align 4
  ret i32 %54
}

declare dso_local i32 @trace_rdev_mgmt_tx(i32*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32, i32, i32, i32) #1

declare dso_local i32 @trace_rdev_return_int_cookie(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
