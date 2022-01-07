; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_plink.c___mesh_plink_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_plink.c___mesh_plink_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i64, %struct.ieee80211_sub_if_data* }
%struct.ieee80211_sub_if_data = type { i32 }

@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@NL80211_PLINK_BLOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sta_info*)* @__mesh_plink_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mesh_plink_deactivate(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %6 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %5, i32 0, i32 1
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_sub_if_data* %7, %struct.ieee80211_sub_if_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %15 = call i32 @mesh_plink_dec_estab_count(%struct.ieee80211_sub_if_data* %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i64, i64* @NL80211_PLINK_BLOCKED, align 8
  %18 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %21 = call i32 @mesh_path_flush_by_nexthop(%struct.sta_info* %20)
  %22 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %23 = call i32 @ieee80211_mps_sta_status_update(%struct.sta_info* %22)
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %25 = call i32 @ieee80211_mps_local_status_update(%struct.ieee80211_sub_if_data* %24)
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @mesh_plink_dec_estab_count(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mesh_path_flush_by_nexthop(%struct.sta_info*) #1

declare dso_local i32 @ieee80211_mps_sta_status_update(%struct.sta_info*) #1

declare dso_local i32 @ieee80211_mps_local_status_update(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
