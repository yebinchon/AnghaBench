; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_HTProc.c_HT_PickMCSRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_HTProc.c_HT_PickMCSRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }

@IEEE80211_DL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"pOperateMCS can't be null in HT_PickMCSRate()\0A\00", align 1
@RATE_ADPT_1SS_MASK = common dso_local global i32 0, align 4
@RATE_ADPT_2SS_MASK = common dso_local global i32 0, align 4
@RATE_ADPT_MCS32_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HT_PickMCSRate(%struct.ieee80211_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @IEEE80211_DL_ERR, align 4
  %11 = call i32 @IEEE80211_DEBUG(i32 %10, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %47

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %45 [
    i32 132, label %16
    i32 131, label %16
    i32 130, label %16
    i32 129, label %29
    i32 128, label %29
  ]

16:                                               ; preds = %12, %12, %12
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %25, %16
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 15
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %17

28:                                               ; preds = %17
  br label %46

29:                                               ; preds = %12, %12
  %30 = load i32, i32* @RATE_ADPT_1SS_MASK, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @RATE_ADPT_2SS_MASK, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @RATE_ADPT_MCS32_MASK, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %46

45:                                               ; preds = %12
  br label %46

46:                                               ; preds = %45, %29, %28
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %9
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
