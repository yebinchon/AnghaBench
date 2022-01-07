; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_tan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_tan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@flag_unsafe_math_optimizations = common dso_local global i64 0, align 8
@BUILT_IN_ATAN = common dso_local global i32 0, align 4
@BUILT_IN_ATANF = common dso_local global i32 0, align 4
@BUILT_IN_ATANL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fold_builtin_tan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_tan(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @TREE_VALUE(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @REAL_TYPE, align 4
  %10 = load i32, i32* @VOID_TYPE, align 4
  %11 = call i32 @validate_arglist(i32 %8, i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @NULL_TREE, align 4
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @real_zerop(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @builtin_mathfn_code(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @BUILT_IN_ATAN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @BUILT_IN_ATANF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @BUILT_IN_ATANL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %30, %26
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @TREE_OPERAND(i32 %39, i32 1)
  %41 = call i32 @TREE_VALUE(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %34, %21
  %43 = load i32, i32* @NULL_TREE, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %38, %19, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @validate_arglist(i32, i32, i32) #1

declare dso_local i64 @real_zerop(i32) #1

declare dso_local i32 @builtin_mathfn_code(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
