; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.h_rate_control_rate_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.h_rate_control_rate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_9__*, i8*, %struct.ieee80211_sta, %struct.rate_control_ref* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.ieee80211_local* }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.rate_control_ref = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*)* }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@WLAN_STA_RATE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*)* @rate_control_rate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_rate_init(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.rate_control_ref*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_chanctx_conf*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %3, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 3
  %16 = load %struct.rate_control_ref*, %struct.rate_control_ref** %15, align 8
  store %struct.rate_control_ref* %16, %struct.rate_control_ref** %4, align 8
  %17 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 2
  store %struct.ieee80211_sta* %18, %struct.ieee80211_sta** %5, align 8
  %19 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load %struct.rate_control_ref*, %struct.rate_control_ref** %4, align 8
  %23 = icmp ne %struct.rate_control_ref* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %75

25:                                               ; preds = %1
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %32)
  store %struct.ieee80211_chanctx_conf* %33, %struct.ieee80211_chanctx_conf** %8, align 8
  %34 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %8, align 8
  %35 = icmp ne %struct.ieee80211_chanctx_conf* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = call i32 (...) @rcu_read_unlock()
  br label %75

42:                                               ; preds = %25
  %43 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %47, align 8
  %49 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %48, i64 %54
  %56 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %55, align 8
  store %struct.ieee80211_supported_band* %56, %struct.ieee80211_supported_band** %7, align 8
  %57 = call i32 (...) @rcu_read_unlock()
  %58 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %59 = call i32 @ieee80211_sta_set_rx_nss(%struct.sta_info* %58)
  %60 = load %struct.rate_control_ref*, %struct.rate_control_ref** %4, align 8
  %61 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*)*, i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*)** %63, align 8
  %65 = load %struct.rate_control_ref*, %struct.rate_control_ref** %4, align 8
  %66 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 %64(i32 %67, %struct.ieee80211_supported_band* %68, %struct.ieee80211_sta* %69, i8* %70)
  %72 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %73 = load i32, i32* @WLAN_STA_RATE_CONTROL, align 4
  %74 = call i32 @set_sta_flag(%struct.sta_info* %72, i32 %73)
  br label %75

75:                                               ; preds = %42, %40, %24
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_sta_set_rx_nss(%struct.sta_info*) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
