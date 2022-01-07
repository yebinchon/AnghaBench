; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_compcode_to_comparison.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_compcode_to_comparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LT_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@LE_EXPR = common dso_local global i32 0, align 4
@GT_EXPR = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@ORDERED_EXPR = common dso_local global i32 0, align 4
@UNORDERED_EXPR = common dso_local global i32 0, align 4
@UNLT_EXPR = common dso_local global i32 0, align 4
@UNEQ_EXPR = common dso_local global i32 0, align 4
@UNLE_EXPR = common dso_local global i32 0, align 4
@UNGT_EXPR = common dso_local global i32 0, align 4
@LTGT_EXPR = common dso_local global i32 0, align 4
@UNGE_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @compcode_to_comparison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compcode_to_comparison(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %33 [
    i32 137, label %5
    i32 141, label %7
    i32 138, label %9
    i32 139, label %11
    i32 135, label %13
    i32 140, label %15
    i32 134, label %17
    i32 128, label %19
    i32 129, label %21
    i32 133, label %23
    i32 130, label %25
    i32 131, label %27
    i32 136, label %29
    i32 132, label %31
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @LT_EXPR, align 4
  store i32 %6, i32* %2, align 4
  br label %35

7:                                                ; preds = %1
  %8 = load i32, i32* @EQ_EXPR, align 4
  store i32 %8, i32* %2, align 4
  br label %35

9:                                                ; preds = %1
  %10 = load i32, i32* @LE_EXPR, align 4
  store i32 %10, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load i32, i32* @GT_EXPR, align 4
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load i32, i32* @NE_EXPR, align 4
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load i32, i32* @GE_EXPR, align 4
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load i32, i32* @ORDERED_EXPR, align 4
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load i32, i32* @UNORDERED_EXPR, align 4
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load i32, i32* @UNLT_EXPR, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load i32, i32* @UNEQ_EXPR, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* @UNLE_EXPR, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load i32, i32* @UNGT_EXPR, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load i32, i32* @LTGT_EXPR, align 4
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @UNGE_EXPR, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %1
  %34 = call i32 (...) @gcc_unreachable()
  br label %35

35:                                               ; preds = %5, %7, %9, %11, %13, %15, %17, %19, %21, %23, %25, %27, %29, %31, %33
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
