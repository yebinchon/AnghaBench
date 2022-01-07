; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_unassign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_chan.c_ieee80211_unassign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_4__ }
%struct.ieee80211_local = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_chanctx = type { i64 }

@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@BSS_CHANGED_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_chanctx*)* @ieee80211_unassign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_unassign_vif_chanctx(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_chanctx* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.ieee80211_chanctx* %1, %struct.ieee80211_chanctx** %4, align 8
  %6 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %6, i32 0, i32 0
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  store %struct.ieee80211_local* %8, %struct.ieee80211_local** %5, align 8
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rcu_assign_pointer(i32 %19, i32* null)
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %40 = load i32, i32* @BSS_CHANGED_IDLE, align 4
  %41 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %31, %2
  %43 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %45 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %46 = call i32 @drv_unassign_vif_chanctx(%struct.ieee80211_local* %43, %struct.ieee80211_sub_if_data* %44, %struct.ieee80211_chanctx* %45)
  %47 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %42
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 0
  %54 = load %struct.ieee80211_local*, %struct.ieee80211_local** %53, align 8
  %55 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %56 = call i32 @ieee80211_recalc_chanctx_chantype(%struct.ieee80211_local* %54, %struct.ieee80211_chanctx* %55)
  %57 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %58 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %59 = call i32 @ieee80211_recalc_smps_chanctx(%struct.ieee80211_local* %57, %struct.ieee80211_chanctx* %58)
  %60 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %61 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %62 = call i32 @ieee80211_recalc_radar_chanctx(%struct.ieee80211_local* %60, %struct.ieee80211_chanctx* %61)
  br label %63

63:                                               ; preds = %51, %42
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @drv_unassign_vif_chanctx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_recalc_chanctx_chantype(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_recalc_smps_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_recalc_radar_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
