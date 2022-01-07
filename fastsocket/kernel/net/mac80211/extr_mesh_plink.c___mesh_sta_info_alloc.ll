; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_plink.c___mesh_sta_info_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_plink.c___mesh_sta_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MESH_MAX_PLINKS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@NL80211_PLINK_LISTEN = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTHORIZED = common dso_local global i32 0, align 4
@WLAN_STA_WME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sta_info* (%struct.ieee80211_sub_if_data*, i32*)* @__mesh_sta_info_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sta_info* @__mesh_sta_info_alloc(%struct.ieee80211_sub_if_data* %0, i32* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sta_info*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MESH_MAX_PLINKS, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.sta_info* null, %struct.sta_info** %3, align 8
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data* %16, i32* %17, i32 %18)
  store %struct.sta_info* %19, %struct.sta_info** %6, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %21 = icmp ne %struct.sta_info* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store %struct.sta_info* null, %struct.sta_info** %3, align 8
  br label %40

23:                                               ; preds = %15
  %24 = load i32, i32* @NL80211_PLINK_LISTEN, align 4
  %25 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %28 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %29 = call i32 @sta_info_pre_move_state(%struct.sta_info* %27, i32 %28)
  %30 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %31 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %32 = call i32 @sta_info_pre_move_state(%struct.sta_info* %30, i32 %31)
  %33 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %34 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %35 = call i32 @sta_info_pre_move_state(%struct.sta_info* %33, i32 %34)
  %36 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %37 = load i32, i32* @WLAN_STA_WME, align 4
  %38 = call i32 @set_sta_flag(%struct.sta_info* %36, i32 %37)
  %39 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  store %struct.sta_info* %39, %struct.sta_info** %3, align 8
  br label %40

40:                                               ; preds = %23, %22, %14
  %41 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  ret %struct.sta_info* %41
}

declare dso_local %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @sta_info_pre_move_state(%struct.sta_info*, i32) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
