; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }
%struct.minstrel_priv = type { i32 }
%struct.minstrel_sta_info = type { i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i64, i64 }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_MAX_RATES = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)* @minstrel_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_tx_status(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.minstrel_priv*, align 8
  %12 = alloca %struct.minstrel_sta_info*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca %struct.ieee80211_tx_rate*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.minstrel_priv*
  store %struct.minstrel_priv* %19, %struct.minstrel_priv** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.minstrel_sta_info*
  store %struct.minstrel_sta_info* %21, %struct.minstrel_sta_info** %12, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %22)
  store %struct.ieee80211_tx_info* %23, %struct.ieee80211_tx_info** %13, align 8
  %24 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %26, align 8
  store %struct.ieee80211_tx_rate* %27, %struct.ieee80211_tx_rate** %14, align 8
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %105, %5
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %108

41:                                               ; preds = %37
  %42 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %42, i64 %44
  %46 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %108

50:                                               ; preds = %41
  %51 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %12, align 8
  %52 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %52, i64 %54
  %56 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @rix_to_ndx(%struct.minstrel_sta_info* %51, i64 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %105

62:                                               ; preds = %50
  %63 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %63, i64 %65
  %67 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %12, align 8
  %70 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %68
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %62
  %85 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %85, i64 %88
  %90 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %84
  %94 = load i32, i32* %17, align 4
  %95 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %12, align 8
  %96 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %95, i32 0, i32 3
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %94
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %93, %84, %62
  br label %105

105:                                              ; preds = %104, %61
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %37

108:                                              ; preds = %49, %37
  %109 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %110 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load i32, i32* %15, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %12, align 8
  %120 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %118, %115, %108
  %124 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %12, align 8
  %125 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %12, align 8
  %130 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, -1
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* @jiffies, align 4
  %135 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %12, align 8
  %136 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.minstrel_priv*, %struct.minstrel_priv** %11, align 8
  %139 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @HZ, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sdiv i32 %142, 1000
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %137, %144
  %146 = call i64 @time_after(i32 %134, i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %133
  %149 = load %struct.minstrel_priv*, %struct.minstrel_priv** %11, align 8
  %150 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %12, align 8
  %151 = call i32 @minstrel_update_stats(%struct.minstrel_priv* %149, %struct.minstrel_sta_info* %150)
  br label %152

152:                                              ; preds = %148, %133
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rix_to_ndx(%struct.minstrel_sta_info*, i64) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @minstrel_update_stats(%struct.minstrel_priv*, %struct.minstrel_sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
