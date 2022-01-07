; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_group = type { i32, i32 }
%struct.minstrel_priv = type { i32* }
%struct.minstrel_ht_sta = type { i32 }
%struct.ieee80211_sta_rates = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.minstrel_rate_stats = type { i64, i32, i32, i32 }

@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_sta_rates*, i32, i32)* @minstrel_ht_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_set_rate(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1, %struct.ieee80211_sta_rates* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.minstrel_priv*, align 8
  %7 = alloca %struct.minstrel_ht_sta*, align 8
  %8 = alloca %struct.ieee80211_sta_rates*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mcs_group*, align 8
  %12 = alloca %struct.minstrel_rate_stats*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %6, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %7, align 8
  store %struct.ieee80211_sta_rates* %2, %struct.ieee80211_sta_rates** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MCS_GROUP_RATES, align 4
  %18 = sdiv i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %15, i64 %19
  store %struct.mcs_group* %20, %struct.mcs_group** %11, align 8
  %21 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %7, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %21, i32 %22)
  store %struct.minstrel_rate_stats* %23, %struct.minstrel_rate_stats** %12, align 8
  %24 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %25 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %5
  %29 = load %struct.minstrel_priv*, %struct.minstrel_priv** %6, align 8
  %30 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @minstrel_calc_retransmit(%struct.minstrel_priv* %29, %struct.minstrel_ht_sta* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %5
  %34 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %35 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @MINSTREL_FRAC(i32 20, i32 100)
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %41 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 2, i32* %51, align 4
  %52 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 2, i32* %58, align 4
  %59 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 2, i32* %65, align 4
  br label %97

66:                                               ; preds = %39
  %67 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %68 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 4
  %77 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %78 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i32 %79, i32* %86, align 4
  %87 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %12, align 8
  %88 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %89, i32* %96, align 4
  br label %97

97:                                               ; preds = %66, %44
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @MCS_GROUP_RATES, align 4
  %100 = sdiv i32 %98, %99
  %101 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = load %struct.minstrel_priv*, %struct.minstrel_priv** %6, align 8
  %105 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.minstrel_priv*, %struct.minstrel_priv** %6, align 8
  %109 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @ARRAY_SIZE(i32* %110)
  %112 = srem i32 %107, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %106, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %132

116:                                              ; preds = %97
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @MCS_GROUP_RATES, align 4
  %119 = srem i32 %117, %118
  %120 = load %struct.mcs_group*, %struct.mcs_group** %11, align 8
  %121 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load i32, i32* @MCS_GROUP_RATES, align 4
  %125 = mul nsw i32 %123, %124
  %126 = add nsw i32 %119, %125
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %128 = load %struct.mcs_group*, %struct.mcs_group** %11, align 8
  %129 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %127, %130
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %116, %103
  %133 = load i32, i32* %9, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %132
  %136 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %137 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %145 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i32 %143, i32* %150, align 4
  %151 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %152 = load i32, i32* %14, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %135, %132
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %157 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %156, i32 0, i32 0
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  store i32 %155, i32* %162, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %8, align 8
  %165 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %164, i32 0, i32 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 4
  store i32 %163, i32* %170, align 4
  ret void
}

declare dso_local %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta*, i32) #1

declare dso_local i32 @minstrel_calc_retransmit(%struct.minstrel_priv*, %struct.minstrel_ht_sta*, i32) #1

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
