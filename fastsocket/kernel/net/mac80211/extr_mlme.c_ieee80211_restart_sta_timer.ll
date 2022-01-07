; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_restart_sta_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mlme.c_ieee80211_restart_sta_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_9__*, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_HW_CONNECTION_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @ieee80211_restart_sta_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_restart_sta_timer(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %4 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %12 = call i32 @__ieee80211_stop_poll(%struct.ieee80211_sub_if_data* %11)
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IEEE80211_HW_CONNECTION_MONITOR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %10
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @ieee80211_queue_work(%struct.TYPE_10__* %27, i32* %31)
  br label %33

33:                                               ; preds = %23, %10
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 0
  %40 = call i32 @ieee80211_queue_work(%struct.TYPE_10__* %37, i32* %39)
  br label %41

41:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @__ieee80211_stop_poll(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_queue_work(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
