; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_sta_tear_down_BA_sessions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_sta_tear_down_BA_sessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@WLAN_BACK_RECIPIENT = common dso_local global i32 0, align 4
@WLAN_REASON_QSTA_LEAVE_QBSS = common dso_local global i32 0, align 4
@AGG_STOP_DESTROY_STA = common dso_local global i32 0, align 4
@AGG_STOP_PEER_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_tear_down_BA_sessions(%struct.sta_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %7 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @cancel_work_sync(i32* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %34, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @__ieee80211_stop_tx_ba_session(%struct.sta_info* %15, i32 %16, i32 %17)
  %19 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @WLAN_BACK_RECIPIENT, align 4
  %22 = load i32, i32* @WLAN_REASON_QSTA_LEAVE_QBSS, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @AGG_STOP_DESTROY_STA, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @AGG_STOP_PEER_REQUEST, align 4
  %29 = icmp ne i32 %27, %28
  br label %30

30:                                               ; preds = %26, %14
  %31 = phi i1 [ false, %14 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @__ieee80211_stop_rx_ba_session(%struct.sta_info* %19, i32 %20, i32 %21, i32 %22, i32 %32)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %10

37:                                               ; preds = %10
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @__ieee80211_stop_tx_ba_session(%struct.sta_info*, i32, i32) #1

declare dso_local i32 @__ieee80211_stop_rx_ba_session(%struct.sta_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
