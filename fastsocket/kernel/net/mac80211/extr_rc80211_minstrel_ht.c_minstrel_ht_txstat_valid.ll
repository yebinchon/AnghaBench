; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_txstat_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_txstat_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { i64* }
%struct.ieee80211_tx_rate = type { i64, i32, i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.minstrel_priv*, %struct.ieee80211_tx_rate*)* @minstrel_ht_txstat_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_ht_txstat_valid(%struct.minstrel_priv* %0, %struct.ieee80211_tx_rate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.minstrel_priv*, align 8
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %4, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %5, align 8
  %6 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %68

17:                                               ; preds = %11
  %18 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %68

25:                                               ; preds = %17
  %26 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %30 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %65, label %35

35:                                               ; preds = %25
  %36 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %40 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %65, label %45

45:                                               ; preds = %35
  %46 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %50 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %48, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %45
  %56 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %60 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %58, %63
  br label %65

65:                                               ; preds = %55, %45, %35, %25
  %66 = phi i1 [ true, %45 ], [ true, %35 ], [ true, %25 ], [ %64, %55 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %24, %16, %10
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
