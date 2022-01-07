; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.rate_control_ref* }
%struct.TYPE_8__ = type { i32 }
%struct.rate_control_ref = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)* }
%struct.ieee80211_sta = type { i32 }
%struct.sta_info = type { i8*, %struct.ieee80211_sta }
%struct.ieee80211_tx_rate_control = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i64 }

@WLAN_STA_RATE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_TX_MAX_RATES = common dso_local global i32 0, align 4
@IEEE80211_HW_HAS_RATE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_RC_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rate_control_get_rate(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.ieee80211_tx_rate_control* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.ieee80211_tx_rate_control*, align 8
  %7 = alloca %struct.rate_control_ref*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.ieee80211_tx_rate_control* %2, %struct.ieee80211_tx_rate_control** %6, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.rate_control_ref*, %struct.rate_control_ref** %15, align 8
  store %struct.rate_control_ref* %16, %struct.rate_control_ref** %7, align 8
  store i8* null, i8** %8, align 8
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %9, align 8
  %17 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32 %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %10, align 8
  %21 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %22 = icmp ne %struct.sta_info* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %25 = load i32, i32* @WLAN_STA_RATE_CONTROL, align 4
  %26 = call i64 @test_sta_flag(%struct.sta_info* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 1
  store %struct.ieee80211_sta* %30, %struct.ieee80211_sta** %9, align 8
  %31 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %28, %23, %3
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 8
  %48 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %57 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %39
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %35

67:                                               ; preds = %35
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IEEE80211_HW_HAS_RATE_CONTROL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %118

78:                                               ; preds = %67
  %79 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %80 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32 (i32, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)*, i32 (i32, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)** %82, align 8
  %84 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %85 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %6, align 8
  %90 = call i32 %83(i32 %86, %struct.ieee80211_sta* %87, i8* %88, %struct.ieee80211_tx_rate_control* %89)
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IEEE80211_HW_SUPPORTS_RC_TABLE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %78
  br label %118

101:                                              ; preds = %78
  %102 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %102, i32 0, i32 0
  %104 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %105 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %109 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %113 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %115)
  %117 = call i32 @ieee80211_get_tx_rates(i32* %103, %struct.ieee80211_sta* %104, i32 %107, %struct.TYPE_11__* %111, i32 %116)
  br label %118

118:                                              ; preds = %101, %100, %77
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_get_tx_rates(i32*, %struct.ieee80211_sta*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
