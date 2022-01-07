; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_lowest_non_cck_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_lowest_non_cck_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_sta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_supported_band*, %struct.ieee80211_sta*)* @rate_lowest_non_cck_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_lowest_non_cck_index(%struct.ieee80211_supported_band* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_supported_band*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_rate*, align 8
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %52, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %8
  %15 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %17, i64 %19
  store %struct.ieee80211_rate* %20, %struct.ieee80211_rate** %7, align 8
  %21 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %40, label %25

25:                                               ; preds = %14
  %26 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 20
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 55
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 110
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30, %25, %14
  br label %52

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %43 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @rate_supported(%struct.ieee80211_sta* %42, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %8

55:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @rate_supported(%struct.ieee80211_sta*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
