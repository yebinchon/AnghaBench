; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mesh.c_cfg80211_join_mesh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mesh.c_cfg80211_join_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.mesh_setup = type { i32 }
%struct.mesh_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_join_mesh(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.mesh_setup* %2, %struct.mesh_config* %3) #0 {
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mesh_setup*, align 8
  %8 = alloca %struct.mesh_config*, align 8
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.mesh_setup* %2, %struct.mesh_setup** %7, align 8
  store %struct.mesh_config* %3, %struct.mesh_config** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  store %struct.wireless_dev* %13, %struct.wireless_dev** %9, align 8
  %14 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %15 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %18 = call i32 @wdev_lock(%struct.wireless_dev* %17)
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = load %struct.mesh_setup*, %struct.mesh_setup** %7, align 8
  %22 = load %struct.mesh_config*, %struct.mesh_config** %8, align 8
  %23 = call i32 @__cfg80211_join_mesh(%struct.cfg80211_registered_device* %19, %struct.net_device* %20, %struct.mesh_setup* %21, %struct.mesh_config* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %25 = call i32 @wdev_unlock(%struct.wireless_dev* %24)
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %10, align 4
  ret i32 %29
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @__cfg80211_join_mesh(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.mesh_setup*, %struct.mesh_config*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
