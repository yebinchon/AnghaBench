; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_rateset_to_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_rateset_to_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_supported_band*, i64*, i64)* @rateset_to_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rateset_to_mask(%struct.ieee80211_supported_band* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_rate*, align 8
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %60, %3
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %13
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %21, 127
  %23 = mul i64 %22, 5
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %49, %17
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %32, i32 0, i32 1
  %34 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %34, i64 %36
  store %struct.ieee80211_rate* %37, %struct.ieee80211_rate** %12, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %40 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %52

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %25

52:                                               ; preds = %43, %25
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %65

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %13

63:                                               ; preds = %13
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
