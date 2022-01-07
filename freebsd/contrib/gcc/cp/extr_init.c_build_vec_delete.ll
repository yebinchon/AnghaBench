; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_build_vec_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_build_vec_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i32 0, align 4
@sizetype = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"type to vector delete is neither pointer or array type\00", align 1
@COMPOUND_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_vec_delete(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* @NULL_TREE, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @TREE_TYPE(i64 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @POINTER_TYPE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @TREE_SIDE_EFFECTS(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @get_target_expr(i64 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @TARGET_EXPR_SLOT(i64 %28)
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @TREE_TYPE(i64 %31)
  %33 = call i64 @strip_array_types(i64 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i32, i32* @MINUS_EXPR, align 4
  %35 = load i32, i32* @sizetype, align 4
  %36 = call i64 @build_pointer_type(i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @sizetype, align 4
  %39 = call i64 @TYPE_SIZE_UNIT(i32 %38)
  %40 = call i64 @build2(i32 %34, i64 %36, i64 %37, i64 %39)
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @build_indirect_ref(i64 %41, i32* null)
  store i64 %42, i64* %7, align 8
  br label %74

43:                                               ; preds = %4
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @ARRAY_TYPE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @array_type_nelts_total(i64 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @strip_array_types(i64 %51)
  store i64 %52, i64* %10, align 8
  %53 = load i32, i32* @ADDR_EXPR, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @build_unary_op(i32 %53, i64 %54, i32 1)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @TREE_SIDE_EFFECTS(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @get_target_expr(i64 %60)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i64 @TARGET_EXPR_SLOT(i64 %62)
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %59, %48
  br label %73

65:                                               ; preds = %43
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @error_mark_node, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i64, i64* @error_mark_node, align 8
  store i64 %72, i64* %5, align 8
  br label %92

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %30
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @build_vec_delete_1(i64 %75, i64 %76, i64 %77, i32 %78, i32 %79)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i32, i32* @COMPOUND_EXPR, align 4
  %85 = load i64, i64* %11, align 8
  %86 = call i64 @TREE_TYPE(i64 %85)
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @build2(i32 %84, i64 %86, i64 %87, i64 %88)
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %83, %74
  %91 = load i64, i64* %11, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %90, %71
  %93 = load i64, i64* %5, align 8
  ret i64 %93
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @get_target_expr(i64) #1

declare dso_local i64 @TARGET_EXPR_SLOT(i64) #1

declare dso_local i64 @strip_array_types(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @build_pointer_type(i32) #1

declare dso_local i64 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i64 @build_indirect_ref(i64, i32*) #1

declare dso_local i64 @array_type_nelts_total(i64) #1

declare dso_local i64 @build_unary_op(i32, i64, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @build_vec_delete_1(i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
