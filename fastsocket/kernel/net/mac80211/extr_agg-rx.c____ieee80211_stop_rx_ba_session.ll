; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-rx.c____ieee80211_stop_rx_ba_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_agg-rx.c____ieee80211_stop_rx_ba_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, %struct.ieee80211_local* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.ieee80211_local = type { i32 }
%struct.tid_ampdu_rx = type { i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Rx BA session stop requested for %pM tid %u %s reason: %d\0A\00", align 1
@WLAN_BACK_RECIPIENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"recipient\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"inititator\00", align 1
@IEEE80211_AMPDU_RX_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"HW problem - can not stop rx aggregation for %pM tid %d\0A\00", align 1
@ieee80211_free_tid_rx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @___ieee80211_stop_rx_ba_session(%struct.sta_info* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.tid_ampdu_rx*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 3
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %11, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = call i32 @lockdep_is_held(i32* %29)
  %31 = call %struct.tid_ampdu_rx* @rcu_dereference_protected(i32 %26, i32 %30)
  store %struct.tid_ampdu_rx* %31, %struct.tid_ampdu_rx** %12, align 8
  %32 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %12, align 8
  %33 = icmp ne %struct.tid_ampdu_rx* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %5
  br label %107

35:                                               ; preds = %5
  %36 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %37 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @RCU_INIT_POINTER(i32 %42, i32* null)
  %44 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %48 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @WLAN_BACK_RECIPIENT, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @ht_dbg(i32 %46, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %50, i64 %51, i8* %56, i32 %58)
  %60 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %61 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IEEE80211_AMPDU_RX_STOP, align 4
  %65 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %66 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %65, i32 0, i32 0
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @drv_ampdu_action(%struct.ieee80211_local* %60, i32 %63, i32 %64, %struct.TYPE_4__* %66, i64 %67, i32* null, i32 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %35
  %71 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %72 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %75 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @sdata_info(i32 %73, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %77, i64 %78)
  br label %80

80:                                               ; preds = %70, %35
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @WLAN_BACK_RECIPIENT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %89 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %92 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @WLAN_BACK_RECIPIENT, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @ieee80211_send_delba(i32 %90, i32 %94, i64 %95, i64 %96, i64 %97)
  br label %99

99:                                               ; preds = %87, %84, %80
  %100 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %12, align 8
  %101 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %100, i32 0, i32 1
  %102 = call i32 @del_timer_sync(i32* %101)
  %103 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %12, align 8
  %104 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %103, i32 0, i32 0
  %105 = load i32, i32* @ieee80211_free_tid_rx, align 4
  %106 = call i32 @call_rcu(i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %99, %34
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.tid_ampdu_rx* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @ht_dbg(i32, i8*, i32, i64, i8*, i32) #1

declare dso_local i64 @drv_ampdu_action(%struct.ieee80211_local*, i32, i32, %struct.TYPE_4__*, i64, i32*, i32) #1

declare dso_local i32 @sdata_info(i32, i8*, i32, i64) #1

declare dso_local i32 @ieee80211_send_delba(i32, i32, i64, i64, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
