; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c_cfg80211_find_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c_cfg80211_find_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cfg80211_find_ie(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %19, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %14, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i1 [ false, %8 ], [ %16, %11 ]
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 2
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 2
  %30 = load i32*, i32** %6, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %6, align 8
  br label %8

33:                                               ; preds = %17
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32* null, i32** %4, align 8
  br label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 2, %41
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32* null, i32** %4, align 8
  br label %47

45:                                               ; preds = %37
  %46 = load i32*, i32** %6, align 8
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %45, %44, %36
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
