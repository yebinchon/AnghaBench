; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_strcpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_strcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32)* @expand_builtin_strcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_strcpy(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %7, align 8
  %12 = load i32, i32* @POINTER_TYPE, align 4
  %13 = load i32, i32* @POINTER_TYPE, align 4
  %14 = load i32, i32* @VOID_TYPE, align 4
  %15 = call i64 @validate_arglist(i64 %11, i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @fold_builtin_strcpy(i64 %18, i64 %19, i32 0)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %29, %23
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @COMPOUND_EXPR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @TREE_OPERAND(i64 %30, i32 0)
  %32 = load i32, i32* @const0_rtx, align 4
  %33 = load i32, i32* @VOIDmode, align 4
  %34 = load i32, i32* @EXPAND_NORMAL, align 4
  %35 = call i32 @expand_expr(i64 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @TREE_OPERAND(i64 %36, i32 1)
  store i64 %37, i64* %10, align 8
  br label %24

38:                                               ; preds = %24
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @EXPAND_NORMAL, align 4
  %43 = call i32 @expand_expr(i64 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %53

44:                                               ; preds = %17
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @TREE_VALUE(i64 %45)
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @TREE_CHAIN(i64 %47)
  %49 = call i32 @TREE_VALUE(i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @expand_movstr(i32 %46, i32 %49, i32 %50, i32 0)
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %44, %38
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @validate_arglist(i64, i32, i32, i32) #1

declare dso_local i64 @fold_builtin_strcpy(i64, i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @expand_expr(i64, i32, i32, i32) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @expand_movstr(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
