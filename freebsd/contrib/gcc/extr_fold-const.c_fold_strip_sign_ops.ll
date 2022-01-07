; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_strip_sign_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_strip_sign_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fold_strip_sign_ops(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  switch i32 %7, label %68 [
    i32 131, label %8
    i32 129, label %8
    i32 130, label %21
    i32 128, label %21
  ]

8:                                                ; preds = %1, %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_OPERAND(i32 %9, i32 0)
  %11 = call i32 @fold_strip_sign_ops(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  br label %19

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @TREE_OPERAND(i32 %17, i32 0)
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %15, %14 ], [ %18, %16 ]
  store i32 %20, i32* %2, align 4
  br label %71

21:                                               ; preds = %1, %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @TREE_TYPE(i32 %22)
  %24 = call i32 @TYPE_MODE(i32 %23)
  %25 = call i32 @HONOR_SIGN_DEPENDENT_ROUNDING(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @NULL_TREE, align 4
  store i32 %28, i32* %2, align 4
  br label %71

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @TREE_OPERAND(i32 %30, i32 0)
  %32 = call i32 @fold_strip_sign_ops(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @TREE_OPERAND(i32 %33, i32 1)
  %35 = call i32 @fold_strip_sign_ops(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @NULL_TREE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @NULL_TREE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39, %29
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @TREE_CODE(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @TREE_TYPE(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  br label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @TREE_OPERAND(i32 %53, i32 0)
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %54, %52 ]
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  br label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @TREE_OPERAND(i32 %62, i32 1)
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i32 [ %60, %59 ], [ %63, %61 ]
  %66 = call i32 @fold_build2(i32 %45, i32 %47, i32 %56, i32 %65)
  store i32 %66, i32* %2, align 4
  br label %71

67:                                               ; preds = %39
  br label %69

68:                                               ; preds = %1
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* @NULL_TREE, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %64, %27, %19
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @HONOR_SIGN_DEPENDENT_ROUNDING(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
