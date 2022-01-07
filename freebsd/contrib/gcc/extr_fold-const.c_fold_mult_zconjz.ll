; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_mult_zconjz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_mult_zconjz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPLEX_EXPR = common dso_local global i64 0, align 8
@COMPLEX_CST = common dso_local global i64 0, align 8
@REALPART_EXPR = common dso_local global i32 0, align 4
@IMAGPART_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fold_mult_zconjz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_mult_zconjz(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_TYPE(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @COMPLEX_EXPR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TREE_OPERAND(i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @TREE_OPERAND(i32 %18, i32 1)
  store i32 %19, i32* %7, align 4
  br label %42

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @COMPLEX_CST, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TREE_REALPART(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @TREE_IMAGPART(i32 %28)
  store i32 %29, i32* %7, align 4
  br label %41

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @save_expr(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @REALPART_EXPR, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @fold_build1(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @IMAGPART_EXPR, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @fold_build1(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %30, %25
  br label %42

42:                                               ; preds = %41, %15
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @save_expr(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @save_expr(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i64, i64* @PLUS_EXPR, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* @MULT_EXPR, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @fold_build2(i64 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i64, i64* @MULT_EXPR, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @fold_build2(i64 %54, i32 %55, i32 %56, i32 %57)
  %59 = call i32 @fold_build2(i64 %47, i32 %48, i32 %53, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i64, i64* @COMPLEX_EXPR, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @integer_zero_node, align 4
  %65 = call i32 @fold_convert(i32 %63, i32 %64)
  %66 = call i32 @fold_build2(i64 %60, i32 %61, i32 %62, i32 %65)
  ret i32 %66
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_REALPART(i32) #1

declare dso_local i32 @TREE_IMAGPART(i32) #1

declare dso_local i32 @save_expr(i32) #1

declare dso_local i32 @fold_build1(i32, i32, i32) #1

declare dso_local i32 @fold_build2(i64, i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
