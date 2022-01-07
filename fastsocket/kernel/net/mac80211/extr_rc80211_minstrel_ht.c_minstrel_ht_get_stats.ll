; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_rate_stats = type { i32 }
%struct.minstrel_priv = type { i32* }
%struct.minstrel_ht_sta = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.minstrel_rate_stats* }
%struct.ieee80211_tx_rate = type { i32, i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.minstrel_rate_stats* (%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_tx_rate*)* @minstrel_ht_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.minstrel_rate_stats* @minstrel_ht_get_stats(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1, %struct.ieee80211_tx_rate* %2) #0 {
  %4 = alloca %struct.minstrel_priv*, align 8
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca %struct.ieee80211_tx_rate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %4, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %5, align 8
  store %struct.ieee80211_tx_rate* %2, %struct.ieee80211_tx_rate** %6, align 8
  %9 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %17 = call i32 @minstrel_ht_get_group_idx(%struct.ieee80211_tx_rate* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MCS_GROUP_RATES, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %8, align 4
  br label %66

23:                                               ; preds = %3
  %24 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %46, %23
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %28 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %37 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %35, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %49

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %25

49:                                               ; preds = %44, %25
  %50 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %51 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %49
  br label %66

66:                                               ; preds = %65, %15
  %67 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %68 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %74, i64 %76
  ret %struct.minstrel_rate_stats* %77
}

declare dso_local i32 @minstrel_ht_get_group_idx(%struct.ieee80211_tx_rate*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
