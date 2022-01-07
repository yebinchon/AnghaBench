; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_agg_tx_operational.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-tx.c_ieee80211_agg_tx_operational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tid_ampdu_tx = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Aggregation is on for %pM tid %d\0A\00", align 1
@IEEE80211_AMPDU_TX_OPERATIONAL = common dso_local global i32 0, align 4
@HT_AGG_STATE_OPERATIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.sta_info*, i32)* @ieee80211_agg_tx_operational to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_agg_tx_operational(%struct.ieee80211_local* %0, %struct.sta_info* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tid_ampdu_tx*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info* %12, i32 %13)
  store %struct.tid_ampdu_tx* %14, %struct.tid_ampdu_tx** %7, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ht_dbg(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %25 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_AMPDU_TX_OPERATIONAL, align 4
  %29 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 2
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %7, align 8
  %33 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @drv_ampdu_action(%struct.ieee80211_local* %24, i32 %27, i32 %28, %struct.TYPE_4__* %30, i32 %31, i32* null, i32 %34)
  %36 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %37 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_bh(i32* %37)
  %39 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ieee80211_agg_splice_packets(i32 %41, %struct.tid_ampdu_tx* %42, i32 %43)
  %45 = load i32, i32* @HT_AGG_STATE_OPERATIONAL, align 4
  %46 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %7, align 8
  %47 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %46, i32 0, i32 0
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ieee80211_agg_splice_finish(i32 %51, i32 %52)
  %54 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference_protected_tid_tx(%struct.sta_info*, i32) #1

declare dso_local i32 @ht_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @drv_ampdu_action(%struct.ieee80211_local*, i32, i32, %struct.TYPE_4__*, i32, i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ieee80211_agg_splice_packets(i32, %struct.tid_ampdu_tx*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_agg_splice_finish(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
