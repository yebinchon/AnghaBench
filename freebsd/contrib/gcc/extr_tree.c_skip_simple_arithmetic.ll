; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_skip_simple_arithmetic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_skip_simple_arithmetic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NON_LVALUE_EXPR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skip_simple_arithmetic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %9, %1
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @TREE_OPERAND(i32 %10, i32 0)
  store i32 %11, i32* %2, align 4
  br label %4

12:                                               ; preds = %4
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %46
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @UNARY_CLASS_P(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 0)
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @BINARY_CLASS_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @TREE_OPERAND(i32 %26, i32 1)
  %28 = call i64 @TREE_INVARIANT(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @TREE_OPERAND(i32 %31, i32 0)
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @TREE_OPERAND(i32 %34, i32 0)
  %36 = call i64 @TREE_INVARIANT(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @TREE_OPERAND(i32 %39, i32 1)
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %33
  br label %47

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %30
  br label %45

44:                                               ; preds = %21
  br label %47

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %18
  br label %14

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @UNARY_CLASS_P(i32) #1

declare dso_local i64 @BINARY_CLASS_P(i32) #1

declare dso_local i64 @TREE_INVARIANT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
