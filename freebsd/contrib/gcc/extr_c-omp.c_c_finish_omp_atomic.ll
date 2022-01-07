; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-omp.c_c_finish_omp_atomic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-omp.c_c_finish_omp_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"invalid expression type for %<#pragma omp atomic%>\00", align 1
@ADDR_EXPR = common dso_local global i64 0, align 8
@SAVE_EXPR = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@TARGET_EXPR = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i64 0, align 8
@OMP_ATOMIC = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @c_finish_omp_atomic(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @error_mark_node, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @error_mark_node, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i64, i64* @error_mark_node, align 8
  store i64 %20, i64* %4, align 8
  br label %101

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @TREE_TYPE(i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @INTEGRAL_TYPE_P(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @POINTER_TYPE_P(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @SCALAR_FLOAT_TYPE_P(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* @error_mark_node, align 8
  store i64 %37, i64* %4, align 8
  br label %101

38:                                               ; preds = %31, %27, %21
  %39 = load i64, i64* @ADDR_EXPR, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @build_unary_op(i64 %39, i64 %40, i32 0)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @error_mark_node, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @error_mark_node, align 8
  store i64 %46, i64* %4, align 8
  br label %101

47:                                               ; preds = %38
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @save_expr(i64 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @SAVE_EXPR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @TREE_CODE(i64 %55)
  %57 = load i64, i64* @ADDR_EXPR, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @TREE_OPERAND(i64 %60, i32 0)
  %62 = call i64 @TREE_CODE(i64 %61)
  %63 = load i64, i64* @VAR_DECL, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59, %54
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @TREE_TYPE(i64 %66)
  %68 = call i64 @create_tmp_var_raw(i64 %67, i32* null)
  store i64 %68, i64* %11, align 8
  %69 = load i32, i32* @TARGET_EXPR, align 4
  %70 = load i64, i64* %10, align 8
  %71 = call i64 @TREE_TYPE(i64 %70)
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @build4(i32 %69, i64 %71, i64 %72, i64 %73, i32* null, i32* null)
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %65, %59, %47
  %76 = load i64, i64* %10, align 8
  %77 = call i64 @build_indirect_ref(i64 %76, i32* null)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @build_modify_expr(i64 %78, i32 %79, i64 %80)
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @error_mark_node, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i64, i64* @error_mark_node, align 8
  store i64 %86, i64* %4, align 8
  br label %101

87:                                               ; preds = %75
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @TREE_CODE(i64 %88)
  %90 = load i64, i64* @MODIFY_EXPR, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @gcc_assert(i32 %92)
  %94 = load i64, i64* %8, align 8
  %95 = call i64 @TREE_OPERAND(i64 %94, i32 1)
  store i64 %95, i64* %7, align 8
  %96 = load i32, i32* @OMP_ATOMIC, align 4
  %97 = load i32, i32* @void_type_node, align 4
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i64 @build2(i32 %96, i32 %97, i64 %98, i64 %99)
  store i64 %100, i64* %4, align 8
  br label %101

101:                                              ; preds = %87, %85, %45, %35, %19
  %102 = load i64, i64* %4, align 8
  ret i64 %102
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i32 @POINTER_TYPE_P(i64) #1

declare dso_local i32 @SCALAR_FLOAT_TYPE_P(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @build_unary_op(i64, i64, i32) #1

declare dso_local i64 @save_expr(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @create_tmp_var_raw(i64, i32*) #1

declare dso_local i64 @build4(i32, i64, i64, i64, i32*, i32*) #1

declare dso_local i64 @build_indirect_ref(i64, i32*) #1

declare dso_local i64 @build_modify_expr(i64, i32, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
