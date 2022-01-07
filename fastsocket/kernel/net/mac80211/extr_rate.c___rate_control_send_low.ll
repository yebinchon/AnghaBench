; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c___rate_control_send_low.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c___rate_control_send_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_supported_band = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_NO_CCK_RATE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.ieee80211_tx_info*)* @__rate_control_send_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rate_control_send_low(%struct.ieee80211_hw* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, %struct.ieee80211_tx_info* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %8, align 8
  %9 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IEEE80211_TX_CTL_NO_CCK_RATE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %14, %4
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %24 = call i32 @rate_lowest_index(%struct.ieee80211_supported_band* %22, %struct.ieee80211_sta* %23)
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %24, i32* %30, align 4
  br label %41

31:                                               ; preds = %14
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %33 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %34 = call i32 @rate_lowest_non_cck_index(%struct.ieee80211_supported_band* %32, %struct.ieee80211_sta* %33)
  %35 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %31, %21
  %42 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %49, %48
  %54 = phi i32 [ 1, %48 ], [ %52, %49 ]
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 4
  %61 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  ret void
}

declare dso_local i32 @rate_lowest_index(%struct.ieee80211_supported_band*, %struct.ieee80211_sta*) #1

declare dso_local i32 @rate_lowest_non_cck_index(%struct.ieee80211_supported_band*, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
