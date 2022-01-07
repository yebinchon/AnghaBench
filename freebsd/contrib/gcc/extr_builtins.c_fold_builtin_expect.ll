; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_expect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_EXPR = common dso_local global i64 0, align 8
@COMPONENT_REF = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @fold_builtin_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_expect(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %52

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @TREE_VALUE(i64 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @TREE_INVARIANT(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i64 0, i64* %2, align 8
  br label %52

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @STRIP_NOPS(i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i64, i64* @ADDR_EXPR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @TREE_OPERAND(i64 %26, i32 0)
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @COMPONENT_REF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @ARRAY_REF, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ true, %28 ], [ %37, %33 ]
  br i1 %39, label %25, label %40

40:                                               ; preds = %38
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @DECL_P(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @DECL_WEAK(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i64 0, i64* %2, align 8
  br label %52

49:                                               ; preds = %44, %40
  br label %50

50:                                               ; preds = %49, %16
  %51 = load i64, i64* %4, align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %50, %48, %15, %8
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @TREE_INVARIANT(i64) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @DECL_WEAK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
