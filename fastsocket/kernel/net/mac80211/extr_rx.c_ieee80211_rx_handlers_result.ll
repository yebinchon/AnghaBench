; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_rx_handlers_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rx.c_ieee80211_rx_handlers_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.TYPE_12__*, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_rx_status = type { i64, i32, i64 }

@RX_FLAG_HT = common dso_local global i32 0, align 4
@RX_FLAG_VHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rx_data*, i32)* @ieee80211_rx_handlers_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_handlers_result(%struct.ieee80211_rx_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_rate*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %107 [
    i32 130, label %9
    i32 131, label %30
    i32 129, label %73
    i32 128, label %98
  ]

9:                                                ; preds = %2
  %10 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @I802_DEBUG_INC(i32 %16)
  %18 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %9
  %23 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %9
  br label %30

30:                                               ; preds = %2, %29
  store %struct.ieee80211_rate* null, %struct.ieee80211_rate** %5, align 8
  %31 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(i32 %33)
  store %struct.ieee80211_rx_status* %34, %struct.ieee80211_rx_status** %7, align 8
  %35 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %35, i32 0, i32 3
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %41, align 8
  %43 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %42, i64 %45
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %46, align 8
  store %struct.ieee80211_supported_band* %47, %struct.ieee80211_supported_band** %6, align 8
  %48 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RX_FLAG_HT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %30
  %55 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RX_FLAG_VHT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %54
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %62, i32 0, i32 0
  %64 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %63, align 8
  %65 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %64, i64 %67
  store %struct.ieee80211_rate* %68, %struct.ieee80211_rate** %5, align 8
  br label %69

69:                                               ; preds = %61, %54, %30
  %70 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %71 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %5, align 8
  %72 = call i32 @ieee80211_rx_cooked_monitor(%struct.ieee80211_rx_data* %70, %struct.ieee80211_rate* %71)
  br label %107

73:                                               ; preds = %2
  %74 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %75 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @I802_DEBUG_INC(i32 %80)
  %82 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %83 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %82, i32 0, i32 2
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %73
  %87 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %88 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %87, i32 0, i32 2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %86, %73
  %94 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %95 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dev_kfree_skb(i32 %96)
  br label %107

98:                                               ; preds = %2
  %99 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @I802_DEBUG_INC(i32 %105)
  br label %107

107:                                              ; preds = %2, %98, %93, %69
  ret void
}

declare dso_local i32 @I802_DEBUG_INC(i32) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(i32) #1

declare dso_local i32 @ieee80211_rx_cooked_monitor(%struct.ieee80211_rx_data*, %struct.ieee80211_rate*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
