; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cinit.c_zfChFreqToNum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cinit.c_zfChFreqToNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ZM_CH_G_14 = common dso_local global i32 0, align 4
@ZM_CH_G_1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfChFreqToNum(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32* %6, i32** %4, align 8
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, i32* @FALSE, align 4
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ZM_CH_G_14, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 14, i32* %5, align 4
  br label %43

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 4000
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @ZM_CH_G_1, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sdiv i32 %23, 5
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %42

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 5000
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, 4000
  %32 = sdiv i32 %31, 5
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  br label %41

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = sub nsw i32 %36, 5000
  %38 = sdiv i32 %37, 5
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @TRUE, align 4
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41, %20
  br label %43

43:                                               ; preds = %42, %16
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
