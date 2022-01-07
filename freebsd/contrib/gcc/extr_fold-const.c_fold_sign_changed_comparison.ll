; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_sign_changed_comparison.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_sign_changed_comparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@NE_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@HAVE_canonicalize_funcptr_for_compare = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @fold_sign_changed_comparison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_sign_changed_comparison(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @NOP_EXPR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @CONVERT_EXPR, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @NULL_TREE, align 4
  store i32 %24, i32* %5, align 4
  br label %106

25:                                               ; preds = %18, %4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @TREE_TYPE(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @TREE_OPERAND(i32 %28, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @TREE_TYPE(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @TYPE_PRECISION(i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = call i64 @TYPE_PRECISION(i32 %34)
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @NULL_TREE, align 4
  store i32 %38, i32* %5, align 4
  br label %106

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @TREE_CODE(i32 %40)
  %42 = load i64, i64* @INTEGER_CST, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @TREE_CODE(i32 %45)
  %47 = load i64, i64* @NOP_EXPR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @TREE_CODE(i32 %50)
  %52 = load i64, i64* @CONVERT_EXPR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @TREE_OPERAND(i32 %55, i32 0)
  %57 = call i32 @TREE_TYPE(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %62, label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* @NULL_TREE, align 4
  store i32 %61, i32* %5, align 4
  br label %106

62:                                               ; preds = %54, %39
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @TYPE_UNSIGNED(i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = call i64 @TYPE_UNSIGNED(i32 %65)
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @NE_EXPR, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @EQ_EXPR, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @NULL_TREE, align 4
  store i32 %77, i32* %5, align 4
  br label %106

78:                                               ; preds = %72, %68, %62
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @TREE_CODE(i32 %79)
  %81 = load i64, i64* @INTEGER_CST, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @TREE_INT_CST_LOW(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @TREE_INT_CST_HIGH(i32 %87)
  %89 = call i32 @build_int_cst_wide(i32 %84, i32 %86, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @TREE_OVERFLOW(i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @TREE_CONSTANT_OVERFLOW(i32 %93)
  %95 = call i32 @force_fit_type(i32 %90, i32 0, i32 %92, i32 %94)
  store i32 %95, i32* %9, align 4
  br label %100

96:                                               ; preds = %78
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @fold_convert(i32 %97, i32 %98)
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %96, %83
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @fold_build2(i32 %101, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %100, %76, %60, %37, %23
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i64 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @build_int_cst_wide(i32, i32, i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i32) #1

declare dso_local i32 @force_fit_type(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_OVERFLOW(i32) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
