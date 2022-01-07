; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_modify_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_x_modify_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@MODOP_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_x_modify_expr(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i64, i64* @processing_template_decl, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* @MODOP_EXPR, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @NULL_TREE, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* @NULL_TREE, align 4
  %22 = sext i32 %21 to i64
  %23 = call i64 (i32, i64, i64, ...) @build_min_nt(i32 %18, i64 %20, i64 %22)
  %24 = load i64, i64* %7, align 8
  %25 = call i64 (i32, i64, i64, ...) @build_min_nt(i32 %16, i64 %17, i64 %23, i64 %24)
  store i64 %25, i64* %4, align 8
  br label %111

26:                                               ; preds = %3
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @COMPONENT_REF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @TREE_OPERAND(i64 %32, i32 0)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @INDIRECT_REF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @TREE_OPERAND(i64 %39, i32 0)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @COMPONENT_REF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %38
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @TREE_OPERAND(i64 %46, i32 0)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @TREE_CODE(i64 %48)
  %50 = load i64, i64* @VAR_DECL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @COPYABLE_BYREF_LOCAL_VAR(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @save_expr(i64 %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %52, %45
  br label %66

66:                                               ; preds = %65, %38
  br label %67

67:                                               ; preds = %66, %31
  br label %68

68:                                               ; preds = %67, %26
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @NOP_EXPR, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %68
  %73 = load i32, i32* @MODIFY_EXPR, align 4
  %74 = load i32, i32* @LOOKUP_NORMAL, align 4
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @make_node(i32 %77)
  %79 = call i64 @build_new_op(i32 %73, i32 %74, i64 %75, i64 %76, i32 %78, i32* null)
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %72
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* @COMPOUND_EXPR, align 4
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @TREE_TYPE(i64 %87)
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @build2(i32 %86, i32 %88, i64 %89, i64 %90)
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %85, %82
  store i64 1, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  store i64 %93, i64* %4, align 8
  br label %111

94:                                               ; preds = %72
  br label %95

95:                                               ; preds = %94, %68
  %96 = load i64, i64* %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i64, i64* %7, align 8
  %99 = call i64 @build_modify_expr(i64 %96, i32 %97, i64 %98)
  store i64 %99, i64* %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load i32, i32* @COMPOUND_EXPR, align 4
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @TREE_TYPE(i64 %104)
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @build2(i32 %103, i32 %105, i64 %106, i64 %107)
  store i64 %108, i64* %5, align 8
  br label %109

109:                                              ; preds = %102, %95
  %110 = load i64, i64* %5, align 8
  store i64 %110, i64* %4, align 8
  br label %111

111:                                              ; preds = %109, %92, %15
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i64 @build_min_nt(i32, i64, i64, ...) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @COPYABLE_BYREF_LOCAL_VAR(i64) #1

declare dso_local i64 @save_expr(i64) #1

declare dso_local i64 @build_new_op(i32, i32, i64, i64, i32, i32*) #1

declare dso_local i32 @make_node(i32) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @build_modify_expr(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
