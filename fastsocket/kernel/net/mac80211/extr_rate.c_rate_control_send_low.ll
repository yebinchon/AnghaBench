; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_send_low.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_send_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_tx_rate_control = type { %struct.TYPE_6__*, i64, i32, %struct.ieee80211_supported_band*, i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.ieee80211_supported_band = type { i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rate_control_send_low(%struct.ieee80211_sta* %0, i8* %1, %struct.ieee80211_tx_rate_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_tx_rate_control*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ieee80211_tx_rate_control* %2, %struct.ieee80211_tx_rate_control** %7, align 8
  %11 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32 %13)
  store %struct.ieee80211_tx_info* %14, %struct.ieee80211_tx_info** %8, align 8
  %15 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %15, i32 0, i32 3
  %17 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %16, align 8
  store %struct.ieee80211_supported_band* %17, %struct.ieee80211_supported_band** %9, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %19 = icmp ne %struct.ieee80211_sta* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %7, align 8
  %25 = call i64 @rc_no_data_or_no_ack_use_min(%struct.ieee80211_tx_rate_control* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %79

27:                                               ; preds = %23, %20, %3
  %28 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %33 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %34 = call i32 @__rate_control_send_low(i32 %30, %struct.ieee80211_supported_band* %31, %struct.ieee80211_sta* %32, %struct.ieee80211_tx_info* %33)
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %36 = icmp ne %struct.ieee80211_sta* %35, null
  br i1 %36, label %78, label %37

37:                                               ; preds = %27
  %38 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %49 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %57, i32* %63, align 4
  store i32 1, i32* %4, align 4
  br label %80

64:                                               ; preds = %42
  %65 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %77 = call i32 @rc_send_low_broadcast(i32* %70, i32 %75, %struct.ieee80211_supported_band* %76)
  br label %78

78:                                               ; preds = %64, %37, %27
  store i32 1, i32* %4, align 4
  br label %80

79:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %78, %55
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32) #1

declare dso_local i64 @rc_no_data_or_no_ack_use_min(%struct.ieee80211_tx_rate_control*) #1

declare dso_local i32 @__rate_control_send_low(i32, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @rc_send_low_broadcast(i32*, i32, %struct.ieee80211_supported_band*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
