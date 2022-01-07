; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_ignored_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_ignored_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@integer_zero_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fold_ignored_result(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @TREE_SIDE_EFFECTS(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @integer_zero_node, align 4
  store i32 %8, i32* %2, align 4
  br label %71

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %70, %9
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TREE_CODE(i32 %11)
  %13 = call i32 @TREE_CODE_CLASS(i32 %12)
  switch i32 %13, label %68 [
    i32 128, label %14
    i32 131, label %17
    i32 130, label %17
    i32 129, label %37
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TREE_OPERAND(i32 %15, i32 0)
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %10, %10
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @TREE_OPERAND(i32 %18, i32 1)
  %20 = call i64 @TREE_SIDE_EFFECTS(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @TREE_OPERAND(i32 %23, i32 0)
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @TREE_OPERAND(i32 %26, i32 0)
  %28 = call i64 @TREE_SIDE_EFFECTS(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @TREE_OPERAND(i32 %31, i32 1)
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  br label %71

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %22
  br label %70

37:                                               ; preds = %10
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @TREE_CODE(i32 %38)
  switch i32 %39, label %65 [
    i32 133, label %40
    i32 132, label %50
  ]

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @TREE_OPERAND(i32 %41, i32 1)
  %43 = call i64 @TREE_SIDE_EFFECTS(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* %2, align 4
  br label %71

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @TREE_OPERAND(i32 %48, i32 0)
  store i32 %49, i32* %3, align 4
  br label %67

50:                                               ; preds = %37
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @TREE_OPERAND(i32 %51, i32 1)
  %53 = call i64 @TREE_SIDE_EFFECTS(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @TREE_OPERAND(i32 %56, i32 2)
  %58 = call i64 @TREE_SIDE_EFFECTS(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %3, align 4
  store i32 %61, i32* %2, align 4
  br label %71

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @TREE_OPERAND(i32 %63, i32 0)
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %37
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* %2, align 4
  br label %71

67:                                               ; preds = %62, %47
  br label %70

68:                                               ; preds = %10
  %69 = load i32, i32* %3, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %67, %36, %14
  br label %10

71:                                               ; preds = %68, %65, %60, %45, %33, %7
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @TREE_SIDE_EFFECTS(i32) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
