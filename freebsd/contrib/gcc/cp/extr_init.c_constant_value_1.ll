; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_constant_value_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_constant_value_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@CONSTRUCTOR = common dso_local global i64 0, align 8
@STRING_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @constant_value_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @constant_value_1(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %100, %2
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @TREE_CODE(i64 %8)
  %10 = load i64, i64* @CONST_DECL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %34, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @DECL_INTEGRAL_CONSTANT_VAR_P(i64 %16)
  br label %31

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @VAR_DECL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @TREE_TYPE(i64 %24)
  %26 = call i64 @CP_TYPE_CONST_NON_VOLATILE_P(i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %28, %15
  %32 = phi i32 [ %17, %15 ], [ %30, %28 ]
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %7
  %35 = phi i1 [ true, %7 ], [ %33, %31 ]
  br i1 %35, label %36, label %103

36:                                               ; preds = %34
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @DECL_CLASS_SCOPE_P(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @DECL_CONTEXT(i64 %41)
  %43 = call i64 @CLASSTYPE_TEMPLATE_INFO(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @DECL_CONTEXT(i64 %46)
  %48 = call i32 @CLASSTYPE_TI_ARGS(i32 %47)
  %49 = call i64 @uses_template_parms(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i32, i32* @processing_template_decl, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @processing_template_decl, align 4
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @DECL_INITIAL(i64 %54)
  %56 = call i64 @fold_non_dependent_expr(i64 %55)
  store i64 %56, i64* %6, align 8
  %57 = load i32, i32* @processing_template_decl, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* @processing_template_decl, align 4
  br label %64

59:                                               ; preds = %45, %40, %36
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @mark_used(i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @DECL_INITIAL(i64 %62)
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %59, %51
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @error_mark_node, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* %4, align 8
  store i64 %69, i64* %3, align 8
  br label %105

70:                                               ; preds = %64
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %70
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @TREE_TYPE(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @TREE_TYPE(i64 %81)
  %83 = call i32 @INTEGRAL_OR_ENUMERATION_TYPE_P(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %100, label %99

85:                                               ; preds = %77
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @TREE_CONSTANT(i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @TREE_CODE(i64 %90)
  %92 = load i64, i64* @CONSTRUCTOR, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @TREE_CODE(i64 %95)
  %97 = load i64, i64* @STRING_CST, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %89, %85, %80, %73, %70
  br label %103

100:                                              ; preds = %94, %80
  %101 = load i64, i64* %6, align 8
  %102 = call i64 @unshare_expr(i64 %101)
  store i64 %102, i64* %4, align 8
  br label %7

103:                                              ; preds = %99, %34
  %104 = load i64, i64* %4, align 8
  store i64 %104, i64* %3, align 8
  br label %105

105:                                              ; preds = %103, %68
  %106 = load i64, i64* %3, align 8
  ret i64 %106
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @DECL_INTEGRAL_CONSTANT_VAR_P(i64) #1

declare dso_local i64 @CP_TYPE_CONST_NON_VOLATILE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @DECL_CLASS_SCOPE_P(i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INFO(i32) #1

declare dso_local i32 @DECL_CONTEXT(i64) #1

declare dso_local i64 @uses_template_parms(i32) #1

declare dso_local i32 @CLASSTYPE_TI_ARGS(i32) #1

declare dso_local i64 @fold_non_dependent_expr(i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i32 @mark_used(i64) #1

declare dso_local i32 @INTEGRAL_OR_ENUMERATION_TYPE_P(i32) #1

declare dso_local i32 @TREE_CONSTANT(i64) #1

declare dso_local i64 @unshare_expr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
