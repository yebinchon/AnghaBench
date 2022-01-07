; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.h_rate_control_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.h_rate_control_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.rate_control_ref* }
%struct.rate_control_ref = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)* }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.sta_info = type { i8*, %struct.ieee80211_sta }
%struct.sk_buff = type { i32 }

@WLAN_STA_RATE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_supported_band*, %struct.sta_info*, %struct.sk_buff*)* @rate_control_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_tx_status(%struct.ieee80211_local* %0, %struct.ieee80211_supported_band* %1, %struct.sta_info* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.rate_control_ref*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i8*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store %struct.sta_info* %2, %struct.sta_info** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 0
  %14 = load %struct.rate_control_ref*, %struct.rate_control_ref** %13, align 8
  store %struct.rate_control_ref* %14, %struct.rate_control_ref** %9, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 1
  store %struct.ieee80211_sta* %16, %struct.ieee80211_sta** %10, align 8
  %17 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  %20 = load %struct.rate_control_ref*, %struct.rate_control_ref** %9, align 8
  %21 = icmp ne %struct.rate_control_ref* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %24 = load i32, i32* @WLAN_STA_RATE_CONTROL, align 4
  %25 = call i32 @test_sta_flag(%struct.sta_info* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %4
  br label %42

28:                                               ; preds = %22
  %29 = load %struct.rate_control_ref*, %struct.rate_control_ref** %9, align 8
  %30 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)*, i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)** %32, align 8
  %34 = load %struct.rate_control_ref*, %struct.rate_control_ref** %9, align 8
  %35 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = call i32 %33(i32 %36, %struct.ieee80211_supported_band* %37, %struct.ieee80211_sta* %38, i8* %39, %struct.sk_buff* %40)
  br label %42

42:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
