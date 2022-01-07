; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_sta.c_ieee80211_sta_debugfs_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs_sta.c_ieee80211_sta_debugfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_2__, i32, %struct.ieee80211_sub_if_data*, %struct.ieee80211_local* }
%struct.TYPE_2__ = type { i32* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_local = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_debugfs_remove(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %6 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %5, i32 0, i32 3
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  store %struct.ieee80211_local* %7, %struct.ieee80211_local** %3, align 8
  %8 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 2
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  store %struct.ieee80211_sub_if_data* %10, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %13 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 1
  %15 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @drv_sta_remove_debugfs(%struct.ieee80211_local* %11, %struct.ieee80211_sub_if_data* %12, i32* %14, i32* %18)
  %20 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @debugfs_remove_recursive(i32* %23)
  %25 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  ret void
}

declare dso_local i32 @drv_sta_remove_debugfs(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
