; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cinit.c_zfChNumToFreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cinit.c_zfChNumToFreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_CH_G_14 = common dso_local global i32 0, align 4
@ZM_CH_G_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfChNumToFreq(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 65535, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 14
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 2, i32* %6, align 4
  br label %15

14:                                               ; preds = %10
  store i32 1, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 184
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 196
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 5
  %28 = add nsw i32 4000, %27
  store i32 %28, i32* %7, align 4
  br label %33

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %30, 5
  %32 = add nsw i32 5000, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %46

34:                                               ; preds = %16
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 14
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @ZM_CH_G_14, align 4
  store i32 %38, i32* %7, align 4
  br label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @ZM_CH_G_1, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = mul nsw i32 %42, 5
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %39, %37
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
