; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_scan_state_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_scan.c_ieee80211_scan_state_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i64, i8*, %struct.TYPE_2__*, %struct.ieee80211_channel* }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_channel** }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@SCAN_DECISION = common dso_local global i8* null, align 8
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@IEEE80211_PASSIVE_CHANNEL_TIME = common dso_local global i64 0, align 8
@IEEE80211_PROBE_DELAY = common dso_local global i64 0, align 8
@SCAN_SEND_PROBE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, i64*)* @ieee80211_scan_state_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_scan_state_set_channel(%struct.ieee80211_local* %0, i64* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %10, align 8
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, i64 %14
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  store %struct.ieee80211_channel* %16, %struct.ieee80211_channel** %6, align 8
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 3
  store %struct.ieee80211_channel* %17, %struct.ieee80211_channel** %19, align 8
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %21 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %22 = call i64 @ieee80211_hw_config(%struct.ieee80211_local* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i8*, i8** @SCAN_DECISION, align 8
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  br label %62

36:                                               ; preds = %25
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43, %36
  %51 = load i64, i64* @IEEE80211_PASSIVE_CHANNEL_TIME, align 8
  %52 = load i64*, i64** %4, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i8*, i8** @SCAN_DECISION, align 8
  %54 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %62

56:                                               ; preds = %43
  %57 = load i64, i64* @IEEE80211_PROBE_DELAY, align 8
  %58 = load i64*, i64** %4, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i8*, i8** @SCAN_SEND_PROBE, align 8
  %60 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %61 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %56, %50, %32
  ret void
}

declare dso_local i64 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
