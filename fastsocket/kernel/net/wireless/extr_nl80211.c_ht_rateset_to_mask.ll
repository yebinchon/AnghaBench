; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_ht_rateset_to_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_ht_rateset_to_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_supported_band*, i64*, i64, i64*)* @ht_rateset_to_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht_rateset_to_mask(%struct.ieee80211_supported_band* %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64*, i64** %9, align 8
  %16 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %17 = call i32 @memset(i64* %15, i32 0, i32 %16)
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %66, %4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = udiv i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = urem i64 %32, 8
  %34 = call i32 @BIT(i64 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %22
  store i32 0, i32* %5, align 4
  br label %70

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = or i64 %62, %57
  store i64 %63, i64* %61, align 8
  br label %65

64:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %70

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %18

69:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %64, %41
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
