; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_rts_duration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_rts_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_info = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_local = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@IEEE80211_SDATA_OPERATING_GMODE = common dso_local global i32 0, align 4
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_rts_duration(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_info* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca %struct.ieee80211_rate*, align 8
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %8, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %16)
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %9, align 8
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %22, align 8
  %24 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %23, i64 %26
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %27, align 8
  store %struct.ieee80211_supported_band* %28, %struct.ieee80211_supported_band** %15, align 8
  store i32 0, i32* %12, align 4
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %30 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %29, i32 0, i32 1
  %31 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %30, align 8
  %32 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %31, i64 %35
  store %struct.ieee80211_rate* %36, %struct.ieee80211_rate** %10, align 8
  store i32 0, i32* %13, align 4
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %38 = icmp ne %struct.ieee80211_vif* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %4
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %41 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %40)
  store %struct.ieee80211_sub_if_data* %41, %struct.ieee80211_sub_if_data** %11, align 8
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IEEE80211_SDATA_OPERATING_GMODE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %53, %39
  br label %60

60:                                               ; preds = %59, %4
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %65 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @ieee80211_frame_duration(i32 %63, i32 10, i32 %66, i32 %67, i32 %68)
  store i64 %69, i64* %14, align 8
  %70 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %71 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %76 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i64 @ieee80211_frame_duration(i32 %72, i32 %74, i32 %77, i32 %78, i32 %79)
  %81 = load i64, i64* %14, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %14, align 8
  %83 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %84 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %87 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i64 @ieee80211_frame_duration(i32 %85, i32 10, i32 %88, i32 %89, i32 %90)
  %92 = load i64, i64* %14, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %14, align 8
  %95 = call i32 @cpu_to_le16(i64 %94)
  ret i32 %95
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i64 @ieee80211_frame_duration(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
