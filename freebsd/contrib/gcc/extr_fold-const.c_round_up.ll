; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_round_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_round_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@CEIL_DIV_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @round_up(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @NULL_TREE, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %3, align 8
  br label %81

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @INTEGER_CST, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @TREE_TYPE(i64 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @build_int_cst(i32 %24, i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @TREE_TYPE(i64 %27)
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @multiple_of_p(i32 %28, i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %3, align 8
  br label %81

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 0, %39
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @TREE_TYPE(i64 %44)
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i64 @build_int_cst(i32 %45, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i32, i32* @PLUS_EXPR, align 4
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @size_binop(i32 %49, i64 %50, i64 %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @TREE_TYPE(i64 %53)
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i64 @build_int_cst(i32 %54, i32 %56)
  store i64 %57, i64* %7, align 8
  %58 = load i32, i32* @BIT_AND_EXPR, align 4
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @size_binop(i32 %58, i64 %59, i64 %60)
  store i64 %61, i64* %4, align 8
  br label %79

62:                                               ; preds = %36
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @TREE_TYPE(i64 %66)
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @build_int_cst(i32 %67, i32 %68)
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* @CEIL_DIV_EXPR, align 4
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @size_binop(i32 %71, i64 %72, i64 %73)
  store i64 %74, i64* %4, align 8
  %75 = load i32, i32* @MULT_EXPR, align 4
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @size_binop(i32 %75, i64 %76, i64 %77)
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %70, %43
  %80 = load i64, i64* %4, align 8
  store i64 %80, i64* %3, align 8
  br label %81

81:                                               ; preds = %79, %33, %15
  %82 = load i64, i64* %3, align 8
  ret i64 %82
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @multiple_of_p(i32, i64, i64) #1

declare dso_local i64 @size_binop(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
