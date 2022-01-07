; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_scan_state_send_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_scan_state_send_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_11__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@IEEE80211_TX_INTFL_OFFCHAN_TX_OK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_CCK_RATE = common dso_local global i32 0, align 4
@IEEE80211_CHANNEL_TIME = common dso_local global i64 0, align 8
@SCAN_DECISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, i64*)* @ieee80211_scan_state_send_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_scan_state_send_probe(%struct.ieee80211_local* %0, i64* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @IEEE80211_TX_INTFL_OFFCHAN_TX_OK, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @IEEE80211_TX_CTL_NO_CCK_RATE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 3
  %34 = call i32 @lockdep_is_held(i32* %33)
  %35 = call %struct.ieee80211_sub_if_data* @rcu_dereference_protected(i32 %31, i32 %34)
  store %struct.ieee80211_sub_if_data* %35, %struct.ieee80211_sub_if_data** %6, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %93, %28
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %36
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %72 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = call i32 @ieee80211_send_probe_req(%struct.ieee80211_sub_if_data* %45, i32* null, i32 %55, i32 %65, i32 %70, i32 %75, i32 %84, i32 0, i32 %85, %struct.TYPE_12__* %91, i32 1)
  br label %93

93:                                               ; preds = %44
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %36

96:                                               ; preds = %36
  %97 = load i64, i64* @IEEE80211_CHANNEL_TIME, align 8
  %98 = load i64*, i64** %4, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i32, i32* @SCAN_DECISION, align 4
  %100 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %101 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @ieee80211_send_probe_req(%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
