; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_build_non_dependent_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_build_non_dependent_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_EXPR = common dso_local global i64 0, align 8
@COMPONENT_REF = common dso_local global i64 0, align 8
@OFFSET_REF = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@STRING_CST = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@THROW_EXPR = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8
@COMPOUND_EXPR = common dso_local global i64 0, align 8
@unknown_type_node = common dso_local global i64 0, align 8
@NON_DEPENDENT_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_non_dependent_expr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @null_ptr_cst_p(i8* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %2, align 8
  br label %131

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @TREE_CODE(i8* %12)
  %14 = load i64, i64* @ADDR_EXPR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @TREE_OPERAND(i8* %17, i32 0)
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @TREE_CODE(i8* %20)
  %22 = load i64, i64* @COMPONENT_REF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @TREE_OPERAND(i8* %25, i32 1)
  store i8* %26, i8** %4, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @is_overloaded_fn(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @TREE_CODE(i8* %32)
  %34 = load i64, i64* @OFFSET_REF, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %27
  %37 = load i8*, i8** %3, align 8
  store i8* %37, i8** %2, align 8
  br label %131

38:                                               ; preds = %31
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @TREE_CODE(i8* %39)
  %41 = load i64, i64* @VAR_DECL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  store i8* %44, i8** %2, align 8
  br label %131

45:                                               ; preds = %38
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @TREE_CODE(i8* %46)
  %48 = load i64, i64* @STRING_CST, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i8*, i8** %3, align 8
  store i8* %51, i8** %2, align 8
  br label %131

52:                                               ; preds = %45
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @TREE_CODE(i8* %53)
  %55 = load i64, i64* @INTEGER_CST, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %3, align 8
  %59 = call i64 @TREE_CODE(i8* %58)
  %60 = load i64, i64* @REAL_CST, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57, %52
  %63 = load i8*, i8** %3, align 8
  store i8* %63, i8** %2, align 8
  br label %131

64:                                               ; preds = %57
  %65 = load i8*, i8** %3, align 8
  %66 = call i64 @TREE_CODE(i8* %65)
  %67 = load i64, i64* @THROW_EXPR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  store i8* %70, i8** %2, align 8
  br label %131

71:                                               ; preds = %64
  %72 = load i8*, i8** %3, align 8
  %73 = call i64 @TREE_CODE(i8* %72)
  %74 = load i64, i64* @COND_EXPR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load i64, i64* @COND_EXPR, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @TREE_TYPE(i8* %78)
  %80 = load i8*, i8** %3, align 8
  %81 = call i8* @TREE_OPERAND(i8* %80, i32 0)
  %82 = load i8*, i8** %3, align 8
  %83 = call i8* @TREE_OPERAND(i8* %82, i32 1)
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i8*, i8** %3, align 8
  %87 = call i8* @TREE_OPERAND(i8* %86, i32 1)
  %88 = call i8* @build_non_dependent_expr(i8* %87)
  br label %93

89:                                               ; preds = %76
  %90 = load i8*, i8** %3, align 8
  %91 = call i8* @TREE_OPERAND(i8* %90, i32 0)
  %92 = call i8* @build_non_dependent_expr(i8* %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i8* [ %88, %85 ], [ %92, %89 ]
  %95 = load i8*, i8** %3, align 8
  %96 = call i8* @TREE_OPERAND(i8* %95, i32 2)
  %97 = call i8* @build_non_dependent_expr(i8* %96)
  %98 = call i8* @build3(i64 %77, i64 %79, i8* %81, i8* %94, i8* %97)
  store i8* %98, i8** %2, align 8
  br label %131

99:                                               ; preds = %71
  %100 = load i8*, i8** %3, align 8
  %101 = call i64 @TREE_CODE(i8* %100)
  %102 = load i64, i64* @COMPOUND_EXPR, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %99
  %105 = load i8*, i8** %3, align 8
  %106 = call i32 @COMPOUND_EXPR_OVERLOADED(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* @COMPOUND_EXPR, align 8
  %110 = load i8*, i8** %3, align 8
  %111 = call i64 @TREE_TYPE(i8* %110)
  %112 = load i8*, i8** %3, align 8
  %113 = call i8* @TREE_OPERAND(i8* %112, i32 0)
  %114 = load i8*, i8** %3, align 8
  %115 = call i8* @TREE_OPERAND(i8* %114, i32 1)
  %116 = call i8* @build_non_dependent_expr(i8* %115)
  %117 = call i8* @build2(i64 %109, i64 %111, i8* %113, i8* %116)
  store i8* %117, i8** %2, align 8
  br label %131

118:                                              ; preds = %104, %99
  %119 = load i8*, i8** %3, align 8
  %120 = call i64 @TREE_TYPE(i8* %119)
  %121 = load i64, i64* @unknown_type_node, align 8
  %122 = icmp ne i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @gcc_assert(i32 %123)
  %125 = load i32, i32* @NON_DEPENDENT_EXPR, align 4
  %126 = load i8*, i8** %3, align 8
  %127 = call i64 @TREE_TYPE(i8* %126)
  %128 = call i32 @non_reference(i64 %127)
  %129 = load i8*, i8** %3, align 8
  %130 = call i8* @build1(i32 %125, i32 %128, i8* %129)
  store i8* %130, i8** %2, align 8
  br label %131

131:                                              ; preds = %118, %108, %93, %69, %62, %50, %43, %36, %8
  %132 = load i8*, i8** %2, align 8
  ret i8* %132
}

declare dso_local i64 @null_ptr_cst_p(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i64 @is_overloaded_fn(i8*) #1

declare dso_local i8* @build3(i64, i64, i8*, i8*, i8*) #1

declare dso_local i64 @TREE_TYPE(i8*) #1

declare dso_local i32 @COMPOUND_EXPR_OVERLOADED(i8*) #1

declare dso_local i8* @build2(i64, i64, i8*, i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8* @build1(i32, i32, i8*) #1

declare dso_local i32 @non_reference(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
