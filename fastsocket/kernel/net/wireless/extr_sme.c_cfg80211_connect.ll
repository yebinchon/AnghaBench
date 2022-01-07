; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_connect_params = type { i32 }
%struct.cfg80211_cached_keys = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_connect(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.cfg80211_connect_params* %2, %struct.cfg80211_cached_keys* %3) #0 {
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_connect_params*, align 8
  %8 = alloca %struct.cfg80211_cached_keys*, align 8
  %9 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_connect_params* %2, %struct.cfg80211_connect_params** %7, align 8
  store %struct.cfg80211_cached_keys* %3, %struct.cfg80211_cached_keys** %8, align 8
  %10 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %11 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %14 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wdev_lock(i32 %18)
  %20 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %23 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %8, align 8
  %24 = call i32 @__cfg80211_connect(%struct.cfg80211_registered_device* %20, %struct.net_device* %21, %struct.cfg80211_connect_params* %22, %struct.cfg80211_cached_keys* %23, i32* null)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wdev_unlock(i32 %27)
  %29 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %30 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %33 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wdev_lock(i32) #1

declare dso_local i32 @__cfg80211_connect(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_connect_params*, %struct.cfg80211_cached_keys*, i32*) #1

declare dso_local i32 @wdev_unlock(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
