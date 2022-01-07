; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_tx_rate_control = type { %struct.TYPE_7__*, i64, %struct.ieee80211_supported_band*, %struct.sk_buff* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.rc_pid_sta_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)* @rate_control_pid_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_pid_get_rate(i8* %0, %struct.ieee80211_sta* %1, i8* %2, %struct.ieee80211_tx_rate_control* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_tx_rate_control*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.rc_pid_sta_info*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ieee80211_tx_rate_control* %3, %struct.ieee80211_tx_rate_control** %8, align 8
  %14 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %9, align 8
  %17 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %17, i32 0, i32 2
  %19 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %18, align 8
  store %struct.ieee80211_supported_band* %19, %struct.ieee80211_supported_band** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %20)
  store %struct.ieee80211_tx_info* %21, %struct.ieee80211_tx_info** %11, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.rc_pid_sta_info*
  store %struct.rc_pid_sta_info* %23, %struct.rc_pid_sta_info** %12, align 8
  %24 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %4
  %29 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 %34, i32* %40, align 4
  br label %54

41:                                               ; preds = %4
  %42 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %41, %28
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %58 = call i64 @rate_control_send_low(%struct.ieee80211_sta* %55, i8* %56, %struct.ieee80211_tx_rate_control* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %83

61:                                               ; preds = %54
  %62 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %12, align 8
  %63 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %67 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %65, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %72 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %70, %61
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %76, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %60
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @rate_control_send_low(%struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
