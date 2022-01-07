; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rc_pid_info = type { i32 }
%struct.rc_pid_sta_info = type { i64, i64, i32, i64, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)* @rate_control_pid_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_pid_tx_status(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.rc_pid_info*, align 8
  %12 = alloca %struct.rc_pid_sta_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ieee80211_tx_info*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.rc_pid_info*
  store %struct.rc_pid_info* %16, %struct.rc_pid_info** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.rc_pid_sta_info*
  store %struct.rc_pid_sta_info* %18, %struct.rc_pid_sta_info** %12, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %14, align 8
  %21 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %12, align 8
  %22 = icmp ne %struct.rc_pid_sta_info* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %95

24:                                               ; preds = %5
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %12, align 8
  %33 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %95

37:                                               ; preds = %24
  %38 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %12, align 8
  %39 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %37
  %49 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %12, align 8
  %50 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 2
  store i64 %52, i64* %50, align 8
  %53 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %12, align 8
  %54 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %76

57:                                               ; preds = %37
  %58 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %12, align 8
  %68 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %12, align 8
  %72 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %66, %57
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.rc_pid_info*, %struct.rc_pid_info** %11, align 8
  %78 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @msecs_to_jiffies(i32 %79)
  store i64 %80, i64* %13, align 8
  %81 = load i32, i32* @jiffies, align 4
  %82 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %12, align 8
  %83 = getelementptr inbounds %struct.rc_pid_sta_info, %struct.rc_pid_sta_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = add i64 %84, %85
  %87 = call i64 @time_after(i32 %81, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %76
  %90 = load %struct.rc_pid_info*, %struct.rc_pid_info** %11, align 8
  %91 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %92 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %93 = load %struct.rc_pid_sta_info*, %struct.rc_pid_sta_info** %12, align 8
  %94 = call i32 @rate_control_pid_sample(%struct.rc_pid_info* %90, %struct.ieee80211_supported_band* %91, %struct.ieee80211_sta* %92, %struct.rc_pid_sta_info* %93)
  br label %95

95:                                               ; preds = %23, %36, %89, %76
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @rate_control_pid_sample(%struct.rc_pid_info*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.rc_pid_sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
