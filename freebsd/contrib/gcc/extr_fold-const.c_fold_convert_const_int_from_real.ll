; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_convert_const_int_from_real.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_convert_const_int_from_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64)* @fold_convert_const_int_from_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_convert_const_int_from_real(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @TREE_REAL_CST(i64 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %32 [
    i32 128, label %20
    i32 131, label %23
    i32 130, label %26
    i32 129, label %29
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @VOIDmode, align 4
  %22 = call i32 @real_trunc(i32* %11, i32 %21, i32* %12)
  br label %34

23:                                               ; preds = %3
  %24 = load i32, i32* @VOIDmode, align 4
  %25 = call i32 @real_ceil(i32* %11, i32 %24, i32* %12)
  br label %34

26:                                               ; preds = %3
  %27 = load i32, i32* @VOIDmode, align 4
  %28 = call i32 @real_floor(i32* %11, i32 %27, i32* %12)
  br label %34

29:                                               ; preds = %3
  %30 = load i32, i32* @VOIDmode, align 4
  %31 = call i32 @real_round(i32* %11, i32 %30, i32* %12)
  br label %34

32:                                               ; preds = %3
  %33 = call i32 (...) @gcc_unreachable()
  br label %34

34:                                               ; preds = %32, %29, %26, %23, %20
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @REAL_VALUE_ISNAN(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @TYPE_MIN_VALUE(i64 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i32, i32* @NULL_TREE, align 4
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @real_value_from_int_cst(i32 %45, i64 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i64 @REAL_VALUES_LESS(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  %53 = load i64, i64* %13, align 8
  %54 = call i64 @TREE_INT_CST_HIGH(i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i64 @TREE_INT_CST_LOW(i64 %55)
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %52, %42
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @TYPE_MAX_VALUE(i64 %62)
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %15, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load i32, i32* @NULL_TREE, align 4
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @real_value_from_int_cst(i32 %67, i64 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @REAL_VALUES_LESS(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  store i32 1, i32* %7, align 4
  %75 = load i64, i64* %15, align 8
  %76 = call i64 @TREE_INT_CST_HIGH(i64 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i64 @TREE_INT_CST_LOW(i64 %77)
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %74, %66
  br label %80

80:                                               ; preds = %79, %61
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @REAL_VALUE_TO_INT(i64* %10, i64* %9, i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @build_int_cst_wide(i64 %88, i64 %89, i64 %90)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @TREE_OVERFLOW(i64 %94)
  %96 = or i32 %93, %95
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %97)
  %99 = call i64 @force_fit_type(i64 %92, i32 -1, i32 %96, i32 %98)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  ret i64 %100
}

declare dso_local i32 @TREE_REAL_CST(i64) #1

declare dso_local i32 @real_trunc(i32*, i32, i32*) #1

declare dso_local i32 @real_ceil(i32*, i32, i32*) #1

declare dso_local i32 @real_floor(i32*, i32, i32*) #1

declare dso_local i32 @real_round(i32*, i32, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @REAL_VALUE_ISNAN(i32) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i32 @real_value_from_int_cst(i32, i64) #1

declare dso_local i64 @REAL_VALUES_LESS(i32, i32) #1

declare dso_local i64 @TREE_INT_CST_HIGH(i64) #1

declare dso_local i64 @TREE_INT_CST_LOW(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i32 @REAL_VALUE_TO_INT(i64*, i64*, i32) #1

declare dso_local i64 @build_int_cst_wide(i64, i64, i64) #1

declare dso_local i64 @force_fit_type(i64, i32, i32, i32) #1

declare dso_local i32 @TREE_OVERFLOW(i64) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
