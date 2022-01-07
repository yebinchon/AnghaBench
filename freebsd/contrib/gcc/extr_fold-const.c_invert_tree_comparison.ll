; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_invert_tree_comparison.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_invert_tree_comparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_trapping_math = common dso_local global i64 0, align 8
@ERROR_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @invert_tree_comparison(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i64, i64* @flag_trapping_math, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @ERROR_MARK, align 4
  store i32 %12, i32* %3, align 4
  br label %47

13:                                               ; preds = %8, %2
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %45 [
    i32 141, label %15
    i32 135, label %16
    i32 139, label %17
    i32 140, label %22
    i32 136, label %27
    i32 138, label %32
    i32 137, label %37
    i32 133, label %38
    i32 131, label %39
    i32 132, label %40
    i32 129, label %41
    i32 130, label %42
    i32 134, label %43
    i32 128, label %44
  ]

15:                                               ; preds = %13
  store i32 135, i32* %3, align 4
  br label %47

16:                                               ; preds = %13
  store i32 141, i32* %3, align 4
  br label %47

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 130, i32 138
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 129, i32 136
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 132, i32 140
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %13
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 131, i32 139
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %13
  store i32 133, i32* %3, align 4
  br label %47

38:                                               ; preds = %13
  store i32 137, i32* %3, align 4
  br label %47

39:                                               ; preds = %13
  store i32 138, i32* %3, align 4
  br label %47

40:                                               ; preds = %13
  store i32 136, i32* %3, align 4
  br label %47

41:                                               ; preds = %13
  store i32 140, i32* %3, align 4
  br label %47

42:                                               ; preds = %13
  store i32 139, i32* %3, align 4
  br label %47

43:                                               ; preds = %13
  store i32 128, i32* %3, align 4
  br label %47

44:                                               ; preds = %13
  store i32 134, i32* %3, align 4
  br label %47

45:                                               ; preds = %13
  %46 = call i32 (...) @gcc_unreachable()
  br label %47

47:                                               ; preds = %11, %15, %16, %17, %22, %27, %32, %37, %38, %39, %40, %41, %42, %43, %44, %45
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
