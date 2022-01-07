; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_uses_template_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_uses_template_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i32 0, align 4
@TREE_VEC = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@TEMPLATE_PARM_INDEX = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8
@BASELINK = common dso_local global i64 0, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uses_template_parms(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @processing_template_decl, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, i32* @processing_template_decl, align 4
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i64, i64* %2, align 8
  %11 = call i64 @TYPE_P(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @dependent_type_p(i64 %14)
  store i32 %15, i32* %3, align 4
  br label %104

16:                                               ; preds = %9
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @TREE_VEC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @any_dependent_template_arguments_p(i64 %22)
  store i32 %23, i32* %3, align 4
  br label %103

24:                                               ; preds = %16
  %25 = load i64, i64* %2, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @TREE_LIST, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i64, i64* %2, align 8
  %31 = call i64 @TREE_VALUE(i64 %30)
  %32 = call i32 @uses_template_parms(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %2, align 8
  %36 = call i64 @TREE_CHAIN(i64 %35)
  %37 = call i32 @uses_template_parms(i64 %36)
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ true, %29 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %102

42:                                               ; preds = %24
  %43 = load i64, i64* %2, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @TYPE_DECL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i64, i64* %2, align 8
  %49 = call i64 @TREE_TYPE(i64 %48)
  %50 = call i32 @dependent_type_p(i64 %49)
  store i32 %50, i32* %3, align 4
  br label %101

51:                                               ; preds = %42
  %52 = load i64, i64* %2, align 8
  %53 = call i64 @DECL_P(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %83, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %2, align 8
  %57 = call i64 @EXPR_P(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %2, align 8
  %61 = call i64 @TREE_CODE(i64 %60)
  %62 = load i64, i64* @TEMPLATE_PARM_INDEX, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %83, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %2, align 8
  %66 = call i64 @TREE_CODE(i64 %65)
  %67 = load i64, i64* @OVERLOAD, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %83, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %2, align 8
  %71 = call i64 @TREE_CODE(i64 %70)
  %72 = load i64, i64* @BASELINK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %69
  %75 = load i64, i64* %2, align 8
  %76 = call i64 @TREE_CODE(i64 %75)
  %77 = load i64, i64* @IDENTIFIER_NODE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i64, i64* %2, align 8
  %81 = call i64 @CONSTANT_CLASS_P(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %79, %74, %69, %64, %59, %55, %51
  %84 = load i64, i64* %2, align 8
  %85 = call i64 @type_dependent_expression_p(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %2, align 8
  %89 = call i64 @value_dependent_expression_p(i64 %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i1 [ true, %83 ], [ %90, %87 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %3, align 4
  br label %100

94:                                               ; preds = %79
  %95 = load i64, i64* %2, align 8
  %96 = load i64, i64* @error_mark_node, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @gcc_assert(i32 %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %94, %91
  br label %101

101:                                              ; preds = %100, %47
  br label %102

102:                                              ; preds = %101, %39
  br label %103

103:                                              ; preds = %102, %21
  br label %104

104:                                              ; preds = %103, %13
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* @processing_template_decl, align 4
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i32 @dependent_type_p(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @any_dependent_template_arguments_p(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @EXPR_P(i64) #1

declare dso_local i64 @CONSTANT_CLASS_P(i64) #1

declare dso_local i64 @type_dependent_expression_p(i64) #1

declare dso_local i64 @value_dependent_expression_p(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
