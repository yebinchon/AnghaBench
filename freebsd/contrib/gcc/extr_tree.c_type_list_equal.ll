; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_type_list_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_type_list_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @type_list_equal(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %47, %2
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %52

18:                                               ; preds = %16
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @TREE_VALUE(i64 %19)
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @TREE_VALUE(i64 %21)
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %45, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @TREE_PURPOSE(i64 %25)
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @TREE_PURPOSE(i64 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @TREE_PURPOSE(i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @TREE_PURPOSE(i64 %33)
  %35 = call i32 @simple_cst_equal(i64 %32, i64 %34)
  %36 = icmp eq i32 1, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @TREE_PURPOSE(i64 %38)
  %40 = call i64 @TREE_TYPE(i64 %39)
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @TREE_PURPOSE(i64 %41)
  %43 = call i64 @TREE_TYPE(i64 %42)
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %37, %30, %18
  store i32 0, i32* %3, align 4
  br label %57

46:                                               ; preds = %37, %24
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @TREE_CHAIN(i64 %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @TREE_CHAIN(i64 %50)
  store i64 %51, i64* %7, align 8
  br label %10

52:                                               ; preds = %16
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %45
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i32 @simple_cst_equal(i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
