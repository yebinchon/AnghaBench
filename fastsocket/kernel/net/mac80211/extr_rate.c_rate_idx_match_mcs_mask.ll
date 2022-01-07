; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_idx_match_mcs_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_idx_match_mcs_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_rate = type { i32 }

@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_rate*, i32*)* @rate_idx_match_mcs_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_idx_match_mcs_mask(%struct.ieee80211_tx_rate* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_tx_rate*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_tx_rate* %0, %struct.ieee80211_tx_rate** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = srem i32 %18, 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %2
  store i32 0, i32* %3, align 4
  br label %109

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %59, %27
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %55, %32
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %48, 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  store i32 1, i32* %3, align 4
  br label %109

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  br label %34

58:                                               ; preds = %34
  store i32 7, i32* %9, align 4
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %6, align 4
  br label %29

62:                                               ; preds = %29
  %63 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  %67 = sdiv i32 %66, 8
  store i32 %67, i32* %8, align 4
  %68 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  %72 = srem i32 %71, 8
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %105, %62
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %101, %78
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 8
  br i1 %82, label %83, label %104

83:                                               ; preds = %80
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @BIT(i32 %89)
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %83
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 %94, 8
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %95, %96
  %98 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  store i32 1, i32* %3, align 4
  br label %109

100:                                              ; preds = %83
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %80

104:                                              ; preds = %80
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %74

108:                                              ; preds = %74
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %93, %47, %26
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
