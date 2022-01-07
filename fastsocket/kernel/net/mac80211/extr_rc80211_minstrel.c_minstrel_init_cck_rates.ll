; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_init_cck_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_init_cck_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32, i32 }

@minstrel_init_cck_rates.bitrates = internal constant [4 x i32] [i32 10, i32 20, i32 55, i32 110], align 16
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*)* @minstrel_init_cck_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_init_cck_rates(%struct.minstrel_priv* %0) #0 {
  %2 = alloca %struct.minstrel_priv*, align 8
  %3 = alloca %struct.ieee80211_supported_band*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_rate*, align 8
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %2, align 8
  %7 = load %struct.minstrel_priv*, %struct.minstrel_priv** %2, align 8
  %8 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %12, align 8
  %14 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %15 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, i64 %14
  %16 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  store %struct.ieee80211_supported_band* %16, %struct.ieee80211_supported_band** %3, align 8
  %17 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %18 = icmp ne %struct.ieee80211_supported_band* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %71

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %68, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %28, i32 0, i32 1
  %30 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %30, i64 %32
  store %struct.ieee80211_rate* %33, %struct.ieee80211_rate** %6, align 8
  %34 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %68

41:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @minstrel_init_cck_rates.bitrates, i64 0, i64 0))
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* @minstrel_init_cck_rates.bitrates, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %64

56:                                               ; preds = %46
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.minstrel_priv*, %struct.minstrel_priv** %2, align 8
  %59 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  br label %67

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %42

67:                                               ; preds = %56, %42
  br label %68

68:                                               ; preds = %67, %40
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %21

71:                                               ; preds = %19, %21
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
