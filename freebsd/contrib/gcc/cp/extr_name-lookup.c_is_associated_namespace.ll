; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_is_associated_namespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_is_associated_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_associated_namespace(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* @NULL_TREE, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* @NULL_TREE, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %2, %51
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %52

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @NULL_TREE, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @tree_cons(i64 %17, i64 %18, i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @DECL_NAMESPACE_ASSOCIATIONS(i64 %21)
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %39, %16
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @TREE_PURPOSE(i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @purpose_member(i64 %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @TREE_PURPOSE(i64 %33)
  %35 = load i64, i64* @NULL_TREE, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @tree_cons(i64 %34, i64 %35, i64 %36)
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %32, %26
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @TREE_CHAIN(i64 %40)
  store i64 %41, i64* %8, align 8
  br label %23

42:                                               ; preds = %23
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @TREE_PURPOSE(i64 %46)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @TREE_CHAIN(i64 %48)
  store i64 %49, i64* %7, align 8
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %52

51:                                               ; preds = %45
  br label %11

52:                                               ; preds = %50, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @DECL_NAMESPACE_ASSOCIATIONS(i64) #1

declare dso_local i32 @purpose_member(i64, i64) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
