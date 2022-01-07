; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_vht.c_ieee80211_sta_cur_vht_bw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_vht.c_ieee80211_sta_cur_vht_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.TYPE_12__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_40 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_20 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_160 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_80 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_sta_cur_vht_bw(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %6 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %7 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %6, i32 0, i32 2
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  store %struct.ieee80211_sub_if_data* %8, %struct.ieee80211_sub_if_data** %3, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %1
  %21 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @IEEE80211_STA_RX_BW_40, align 4
  br label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @IEEE80211_STA_RX_BW_20, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %5, align 4
  br label %80

35:                                               ; preds = %1
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %42 [
    i32 131, label %44
    i32 132, label %44
    i32 130, label %44
    i32 133, label %59
    i32 128, label %68
    i32 129, label %77
  ]

42:                                               ; preds = %35
  %43 = call i32 @WARN_ON_ONCE(i32 1)
  br label %44

44:                                               ; preds = %35, %35, %35, %42
  %45 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @IEEE80211_STA_RX_BW_40, align 4
  br label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @IEEE80211_STA_RX_BW_20, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %5, align 4
  br label %79

59:                                               ; preds = %35
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @IEEE80211_STA_RX_BW_160, align 4
  store i32 %66, i32* %5, align 4
  br label %79

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %35, %67
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @IEEE80211_STA_RX_BW_160, align 4
  store i32 %75, i32* %5, align 4
  br label %79

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %35, %76
  %78 = load i32, i32* @IEEE80211_STA_RX_BW_80, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %74, %65, %57
  br label %80

80:                                               ; preds = %79, %33
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %83 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ugt i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %88 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
