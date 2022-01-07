; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_mps_set_sta_nonpeer_pm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_ps.c_mps_set_sta_nonpeer_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@NL80211_MESH_POWER_DEEP_SLEEP = common dso_local global i32 0, align 4
@NL80211_MESH_POWER_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"STA %pM sets non-peer mode to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, %struct.ieee80211_hdr*)* @mps_set_sta_nonpeer_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_set_sta_nonpeer_pm(%struct.sta_info* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %4, align 8
  %6 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @ieee80211_has_pm(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @NL80211_MESH_POWER_DEEP_SLEEP, align 4
  store i32 %12, i32* %5, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @NL80211_MESH_POWER_ACTIVE, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %37

22:                                               ; preds = %15
  %23 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mps_dbg(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %36 = call i32 @ieee80211_mps_sta_status_update(%struct.sta_info* %35)
  br label %37

37:                                               ; preds = %22, %21
  ret void
}

declare dso_local i64 @ieee80211_has_pm(i32) #1

declare dso_local i32 @mps_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_mps_sta_status_update(%struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
