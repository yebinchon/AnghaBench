; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_cck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_cck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.minstrel_ht_sta = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_supported_band = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_HW_SUPPORTS_HT_CCK_RATES = common dso_local global i32 0, align 4
@IEEE80211_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*)* @minstrel_ht_update_cck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_update_cck(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1, %struct.ieee80211_supported_band* %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.minstrel_priv*, align 8
  %6 = alloca %struct.minstrel_ht_sta*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %5, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %6, align 8
  store %struct.ieee80211_supported_band* %2, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %10 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %11 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %88

16:                                               ; preds = %4
  %17 = load %struct.minstrel_priv*, %struct.minstrel_priv** %5, align 8
  %18 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_HW_SUPPORTS_HT_CCK_RATES, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %88

26:                                               ; preds = %16
  %27 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %28 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %30 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %75, %26
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %36 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.minstrel_priv*, %struct.minstrel_priv** %5, align 8
  %40 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rate_supported(%struct.ieee80211_sta* %35, i64 %38, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %34
  br label %75

49:                                               ; preds = %34
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %53 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IEEE80211_RATE_SHORT_PREAMBLE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %49
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @BIT(i32 %68)
  %70 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %71 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %67, %49
  br label %75

75:                                               ; preds = %74, %48
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %31

78:                                               ; preds = %31
  %79 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %80 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %6, align 8
  %83 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i64, i64* @MINSTREL_CCK_GROUP, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %78, %25, %15
  ret void
}

declare dso_local i32 @rate_supported(%struct.ieee80211_sta*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
