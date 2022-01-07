; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_mlme_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c_cfg80211_mlme_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mlme_auth(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.ieee80211_channel* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32* %7, i32 %8, i32* %9, i32 %10, i32 %11, i32* %12, i32 %13) #0 {
  %15 = alloca %struct.cfg80211_registered_device*, align 8
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca %struct.ieee80211_channel*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %15, align 8
  store %struct.net_device* %1, %struct.net_device** %16, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %17, align 8
  store i32 %3, i32* %18, align 4
  store i32* %4, i32** %19, align 8
  store i32* %5, i32** %20, align 8
  store i32 %6, i32* %21, align 4
  store i32* %7, i32** %22, align 8
  store i32 %8, i32* %23, align 4
  store i32* %9, i32** %24, align 8
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32* %12, i32** %27, align 8
  store i32 %13, i32* %28, align 4
  %30 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %15, align 8
  %31 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.net_device*, %struct.net_device** %16, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wdev_lock(i32 %35)
  %37 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %15, align 8
  %38 = load %struct.net_device*, %struct.net_device** %16, align 8
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %40 = load i32, i32* %18, align 4
  %41 = load i32*, i32** %19, align 8
  %42 = load i32*, i32** %20, align 8
  %43 = load i32, i32* %21, align 4
  %44 = load i32*, i32** %22, align 8
  %45 = load i32, i32* %23, align 4
  %46 = load i32*, i32** %24, align 8
  %47 = load i32, i32* %25, align 4
  %48 = load i32, i32* %26, align 4
  %49 = load i32*, i32** %27, align 8
  %50 = load i32, i32* %28, align 4
  %51 = call i32 @__cfg80211_mlme_auth(%struct.cfg80211_registered_device* %37, %struct.net_device* %38, %struct.ieee80211_channel* %39, i32 %40, i32* %41, i32* %42, i32 %43, i32* %44, i32 %45, i32* %46, i32 %47, i32 %48, i32* %49, i32 %50)
  store i32 %51, i32* %29, align 4
  %52 = load %struct.net_device*, %struct.net_device** %16, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @wdev_unlock(i32 %54)
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %15, align 8
  %57 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %29, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wdev_lock(i32) #1

declare dso_local i32 @__cfg80211_mlme_auth(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.ieee80211_channel*, i32, i32*, i32*, i32, i32*, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @wdev_unlock(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
