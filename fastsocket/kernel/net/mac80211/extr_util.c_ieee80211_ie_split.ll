; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_ie_split.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_util.c_ieee80211_ie_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ieee80211_ie_split(i64* %0, i64 %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %10, align 8
  store i64 %12, i64* %11, align 8
  br label %13

13:                                               ; preds = %28, %5
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load i64*, i64** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @ieee80211_id_in_list(i64* %18, i32 %19, i64 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %17, %13
  %27 = phi i1 [ false, %13 ], [ %25, %17 ]
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %30, 1
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 2, %33
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %11, align 8
  br label %13

37:                                               ; preds = %26
  %38 = load i64, i64* %11, align 8
  ret i64 %38
}

declare dso_local i64 @ieee80211_id_in_list(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
