; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_mps_set_sta_peer_pm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_mps_set_sta_peer_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_QOS_CTL_MESH_PS_LEVEL = common dso_local global i32 0, align 4
@NL80211_MESH_POWER_DEEP_SLEEP = common dso_local global i32 0, align 4
@NL80211_MESH_POWER_LIGHT_SLEEP = common dso_local global i32 0, align 4
@NL80211_MESH_POWER_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"STA %pM enters mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, %struct.ieee80211_hdr*)* @mps_set_sta_peer_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_set_sta_peer_pm(%struct.sta_info* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %4, align 8
  %7 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %8 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %7)
  store i32* %8, i32** %6, align 8
  %9 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ieee80211_has_pm(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IEEE80211_QOS_CTL_MESH_PS_LEVEL, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @NL80211_MESH_POWER_DEEP_SLEEP, align 4
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %14
  %25 = load i32, i32* @NL80211_MESH_POWER_LIGHT_SLEEP, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %22
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @NL80211_MESH_POWER_ACTIVE, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %51

36:                                               ; preds = %29
  %37 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @mps_dbg(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %48 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %50 = call i32 @ieee80211_mps_sta_status_update(%struct.sta_info* %49)
  br label %51

51:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i64 @ieee80211_has_pm(i32) #1

declare dso_local i32 @mps_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_mps_sta_status_update(%struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
