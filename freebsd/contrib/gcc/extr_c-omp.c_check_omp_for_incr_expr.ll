; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-omp.c_check_omp_for_incr_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-omp.c_check_omp_for_incr_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @check_omp_for_incr_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_omp_for_incr_expr(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @TREE_TYPE(i64 %7)
  %9 = call i32 @INTEGRAL_TYPE_P(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @TREE_TYPE(i64 %12)
  %14 = call i64 @TYPE_PRECISION(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @TREE_TYPE(i64 %15)
  %17 = call i64 @TYPE_PRECISION(i32 %16)
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11, %2
  %20 = load i64, i64* @error_mark_node, align 8
  store i64 %20, i64* %3, align 8
  br label %96

21:                                               ; preds = %11
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @TREE_TYPE(i64 %26)
  %28 = call i64 @build_int_cst(i32 %27, i32 0)
  store i64 %28, i64* %3, align 8
  br label %96

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @TREE_CODE(i64 %30)
  switch i32 %31, label %93 [
    i32 129, label %32
    i32 130, label %46
    i32 128, label %62
  ]

32:                                               ; preds = %29
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @TREE_OPERAND(i64 %33, i32 0)
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @check_omp_for_incr_expr(i64 %34, i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @error_mark_node, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @TREE_TYPE(i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @fold_convert(i32 %42, i64 %43)
  store i64 %44, i64* %3, align 8
  br label %96

45:                                               ; preds = %32
  br label %94

46:                                               ; preds = %29
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @TREE_OPERAND(i64 %47, i32 0)
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @check_omp_for_incr_expr(i64 %48, i64 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @error_mark_node, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @TREE_TYPE(i64 %55)
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @TREE_OPERAND(i64 %58, i32 1)
  %60 = call i64 @fold_build2(i32 130, i32 %56, i64 %57, i64 %59)
  store i64 %60, i64* %3, align 8
  br label %96

61:                                               ; preds = %46
  br label %94

62:                                               ; preds = %29
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @TREE_OPERAND(i64 %63, i32 0)
  %65 = load i64, i64* %5, align 8
  %66 = call i64 @check_omp_for_incr_expr(i64 %64, i64 %65)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @error_mark_node, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @TREE_TYPE(i64 %71)
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i64 @TREE_OPERAND(i64 %74, i32 1)
  %76 = call i64 @fold_build2(i32 128, i32 %72, i64 %73, i64 %75)
  store i64 %76, i64* %3, align 8
  br label %96

77:                                               ; preds = %62
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @TREE_OPERAND(i64 %78, i32 1)
  %80 = load i64, i64* %5, align 8
  %81 = call i64 @check_omp_for_incr_expr(i64 %79, i64 %80)
  store i64 %81, i64* %6, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @error_mark_node, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @TREE_TYPE(i64 %86)
  %88 = load i64, i64* %4, align 8
  %89 = call i64 @TREE_OPERAND(i64 %88, i32 0)
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @fold_build2(i32 128, i32 %87, i64 %89, i64 %90)
  store i64 %91, i64* %3, align 8
  br label %96

92:                                               ; preds = %77
  br label %94

93:                                               ; preds = %29
  br label %94

94:                                               ; preds = %93, %92, %61, %45
  %95 = load i64, i64* @error_mark_node, align 8
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %94, %85, %70, %54, %40, %25, %19
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local i32 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @fold_convert(i32, i64) #1

declare dso_local i64 @fold_build2(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
