; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_sched_scan_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_driver-ops.h_drv_sched_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_sched_scan_ies*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32 }
%struct.ieee80211_sched_scan_ies = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_sched_scan_ies*)* @drv_sched_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_sched_scan_start(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.cfg80211_sched_scan_request* %2, %struct.ieee80211_sched_scan_ies* %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %8 = alloca %struct.ieee80211_sched_scan_ies*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.cfg80211_sched_scan_request* %2, %struct.cfg80211_sched_scan_request** %7, align 8
  store %struct.ieee80211_sched_scan_ies* %3, %struct.ieee80211_sched_scan_ies** %8, align 8
  %10 = call i32 (...) @might_sleep()
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %12 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %11)
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %15 = call i32 @trace_drv_sched_scan_start(%struct.ieee80211_local* %13, %struct.ieee80211_sub_if_data* %14)
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*, i32*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_sched_scan_ies*)*, i32 (i32*, i32*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_sched_scan_ies*)** %19, align 8
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 0
  %25 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %26 = load %struct.ieee80211_sched_scan_ies*, %struct.ieee80211_sched_scan_ies** %8, align 8
  %27 = call i32 %20(i32* %22, i32* %24, %struct.cfg80211_sched_scan_request* %25, %struct.ieee80211_sched_scan_ies* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @trace_drv_return_int(%struct.ieee80211_local* %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_sched_scan_start(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_return_int(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
