; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_apply_htcap_overrides.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_ht.c_ieee80211_apply_htcap_overrides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_sta_ht_cap = type { i64, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64* }

@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_FACTOR = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_DENSITY = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_apply_htcap_overrides(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sta_ht_cap* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %4, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to i64*
  store i64* %17, i64** %5, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to i64*
  store i64* %24, i64** %6, align 8
  %25 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %149

30:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %68, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %31
  %36 = load i64*, i64** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = xor i64 %41, -1
  %43 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = and i64 %50, %42
  store i64 %51, i64* %49, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64*, i64** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = and i64 %52, %57
  %59 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %58
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %35
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %31

71:                                               ; preds = %31
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %73 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %74 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %75 = call i32 @__check_htcap_disable(%struct.ieee80211_sub_if_data* %72, %struct.ieee80211_sta_ht_cap* %73, i32 %74)
  %76 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %77 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %78 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %79 = call i32 @__check_htcap_disable(%struct.ieee80211_sub_if_data* %76, %struct.ieee80211_sta_ht_cap* %77, i32 %78)
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %81 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %82 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %83 = call i32 @__check_htcap_disable(%struct.ieee80211_sub_if_data* %80, %struct.ieee80211_sta_ht_cap* %81, i32 %82)
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %85 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %86 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %87 = call i32 @__check_htcap_disable(%struct.ieee80211_sub_if_data* %84, %struct.ieee80211_sta_ht_cap* %85, i32 %86)
  %88 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_FACTOR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %71
  %98 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_FACTOR, align 4
  %105 = and i32 %103, %104
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %9, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %109 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %97
  %113 = load i64, i64* %9, align 8
  %114 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %112, %97
  br label %117

117:                                              ; preds = %116, %71
  %118 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %119 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %149

127:                                              ; preds = %117
  %128 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT, align 4
  %137 = ashr i32 %135, %136
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %10, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %141 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %127
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %147 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %144, %127
  br label %149

149:                                              ; preds = %29, %148, %117
  ret void
}

declare dso_local i32 @__check_htcap_disable(%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta_ht_cap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
