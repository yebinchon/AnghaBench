; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_HTProc.c_HTFilterMCSRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_HTProc.c_HTFilterMCSRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32*, i32, i64 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTFilterMCSRate(%struct.ieee80211_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %29, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp sle i32 %9, 15
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %18, %23
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %11
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @HT_PickMCSRate(%struct.ieee80211_device* %33, i32* %34)
  %36 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %36, i32 0, i32 2
  %38 = load i64 (i32)*, i64 (i32)** %37, align 8
  %39 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 %38(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %32
  store i32 2, i32* %7, align 4
  br label %48

48:                                               ; preds = %56, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp sle i32 %49, 15
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %48

59:                                               ; preds = %48
  ret i32 1
}

declare dso_local i32 @HT_PickMCSRate(%struct.ieee80211_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
