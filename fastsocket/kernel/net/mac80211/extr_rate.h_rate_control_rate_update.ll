; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.h_rate_control_rate_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.h_rate_control_rate_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.rate_control_ref* }
%struct.rate_control_ref = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, i32)* }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.sta_info = type { %struct.ieee80211_sta, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_supported_band*, %struct.sta_info*, i32)* @rate_control_rate_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_rate_update(%struct.ieee80211_local* %0, %struct.ieee80211_supported_band* %1, %struct.sta_info* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rate_control_ref*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i8*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store %struct.sta_info* %2, %struct.sta_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 0
  %14 = load %struct.rate_control_ref*, %struct.rate_control_ref** %13, align 8
  store %struct.rate_control_ref* %14, %struct.rate_control_ref** %9, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 0
  store %struct.ieee80211_sta* %16, %struct.ieee80211_sta** %10, align 8
  %17 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  %20 = load %struct.rate_control_ref*, %struct.rate_control_ref** %9, align 8
  %21 = icmp ne %struct.rate_control_ref* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %4
  %23 = load %struct.rate_control_ref*, %struct.rate_control_ref** %9, align 8
  %24 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, i32)*, i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, i32)** %26, align 8
  %28 = icmp ne i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, i32)* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.rate_control_ref*, %struct.rate_control_ref** %9, align 8
  %31 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, i32)*, i32 (i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, i32)** %33, align 8
  %35 = load %struct.rate_control_ref*, %struct.rate_control_ref** %9, align 8
  %36 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 %34(i32 %37, %struct.ieee80211_supported_band* %38, %struct.ieee80211_sta* %39, i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %29, %22, %4
  %44 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %45 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 0
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @drv_sta_rc_update(%struct.ieee80211_local* %44, i32 %47, %struct.ieee80211_sta* %49, i32 %50)
  ret void
}

declare dso_local i32 @drv_sta_rc_update(%struct.ieee80211_local*, i32, %struct.ieee80211_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
