; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_michael.c_michael_mic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_michael.c_michael_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hdr = type { i32 }
%struct.michael_mic_ctx = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @michael_mic(i32* %0, %struct.ieee80211_hdr* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.michael_mic_ctx, align 4
  store i32* %0, i32** %6, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %18 = call i32 @michael_mic_hdr(%struct.michael_mic_ctx* %15, i32* %16, %struct.ieee80211_hdr* %17)
  %19 = load i64, i64* %9, align 8
  %20 = udiv i64 %19, 4
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %9, align 8
  %22 = urem i64 %21, 4
  store i64 %22, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %23

23:                                               ; preds = %34, %5
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %12, align 8
  %30 = mul i64 %29, 4
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @get_unaligned_le32(i32* %31)
  %33 = call i32 @michael_block(%struct.michael_mic_ctx* %15, i32 %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %12, align 8
  br label %23

37:                                               ; preds = %23
  store i32 90, i32* %11, align 4
  br label %38

38:                                               ; preds = %41, %37
  %39 = load i64, i64* %14, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %42, 8
  store i32 %43, i32* %11, align 4
  %44 = load i64, i64* %14, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %14, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %13, align 8
  %48 = mul i64 %47, 4
  %49 = load i64, i64* %14, align 8
  %50 = add i64 %48, %49
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @michael_block(%struct.michael_mic_ctx* %15, i32 %56)
  %58 = call i32 @michael_block(%struct.michael_mic_ctx* %15, i32 0)
  %59 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %15, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @put_unaligned_le32(i32 %60, i32* %61)
  %63 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %15, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = call i32 @put_unaligned_le32(i32 %64, i32* %66)
  ret void
}

declare dso_local i32 @michael_mic_hdr(%struct.michael_mic_ctx*, i32*, %struct.ieee80211_hdr*) #1

declare dso_local i32 @michael_block(%struct.michael_mic_ctx*, i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
