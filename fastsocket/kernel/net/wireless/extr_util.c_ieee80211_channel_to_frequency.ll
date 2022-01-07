; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_ieee80211_channel_to_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_ieee80211_channel_to_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_channel_to_frequency(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %46 [
    i32 130, label %11
    i32 129, label %24
    i32 128, label %38
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 14
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 2484, i32* %3, align 4
  br label %48

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 14
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 5
  %21 = add nsw i32 2407, %20
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  br label %47

24:                                               ; preds = %9
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 182
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 196
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 %31, 5
  %33 = add nsw i32 4000, %32
  store i32 %33, i32* %3, align 4
  br label %48

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %35, 5
  %37 = add nsw i32 5000, %36
  store i32 %37, i32* %3, align 4
  br label %48

38:                                               ; preds = %9
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 5
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %42, 2160
  %44 = add nsw i32 56160, %43
  store i32 %44, i32* %3, align 4
  br label %48

45:                                               ; preds = %38
  br label %47

46:                                               ; preds = %9
  br label %47

47:                                               ; preds = %46, %45, %23
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %41, %34, %30, %18, %14, %8
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
