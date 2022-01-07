; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }

@IEEE80211_ROC_TYPE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32, i32*)* @ieee80211_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_remain_on_channel(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.ieee80211_channel* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %15 = call %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev* %14)
  store %struct.ieee80211_sub_if_data* %15, %struct.ieee80211_sub_if_data** %11, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %12, align 8
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* @IEEE80211_ROC_TYPE_NORMAL, align 4
  %28 = call i32 @ieee80211_start_roc_work(%struct.ieee80211_local* %22, %struct.ieee80211_sub_if_data* %23, %struct.ieee80211_channel* %24, i32 %25, i32* %26, i32* null, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %13, align 4
  ret i32 %32
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_start_roc_work(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_channel*, i32, i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
