; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_frame_duration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_frame_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_frame_duration(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15, %5
  store i32 16, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 16
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %21, 4
  store i32 %22, i32* %11, align 4
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, 4
  %25 = mul i64 8, %24
  %26 = add i64 16, %25
  %27 = add i64 %26, 6
  %28 = mul i64 %27, 10
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 4, %30
  %32 = call i32 @DIV_ROUND_UP(i32 %29, i32 %31)
  %33 = mul nsw i32 4, %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %52

36:                                               ; preds = %15
  store i32 10, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 96, i32 192
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 4
  %45 = mul i64 8, %44
  %46 = mul i64 %45, 10
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @DIV_ROUND_UP(i32 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %36, %18
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
