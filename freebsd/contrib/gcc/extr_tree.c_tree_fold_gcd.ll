; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_tree_fold_gcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_tree_fold_gcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_CST = common dso_local global i64 0, align 8
@MULT_EXPR = common dso_local global i32 0, align 4
@FLOOR_MOD_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tree_fold_gcd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @TREE_TYPE(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @TREE_CODE(i32 %10)
  %12 = load i64, i64* @INTEGER_CST, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @INTEGER_CST, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @integer_zerop(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %3, align 4
  br label %74

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @integer_zerop(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @tree_int_cst_sgn(i32 %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* @MULT_EXPR, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @build_int_cst(i32 %41, i32 -1)
  %43 = call i32 @fold_build2(i32 %38, i32 %39, i32 %40, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %37, %33
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @tree_int_cst_sgn(i32 %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* @MULT_EXPR, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @build_int_cst(i32 %52, i32 -1)
  %54 = call i32 @fold_build2(i32 %49, i32 %50, i32 %51, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %48, %44
  br label %56

56:                                               ; preds = %55, %71
  %57 = load i32, i32* @FLOOR_MOD_EXPR, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @fold_build2(i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @TREE_INT_CST_LOW(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @TREE_INT_CST_HIGH(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %3, align 4
  br label %74

71:                                               ; preds = %65, %56
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %5, align 4
  br label %56

74:                                               ; preds = %69, %31, %25
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i32 @tree_int_cst_sgn(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
