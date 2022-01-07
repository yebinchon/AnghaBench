; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_expand_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_expand_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32)* }

@VAR_DECL = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@CONST_DECL = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@LABEL_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @DECL_EXTERNAL(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %94

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @TREE_STATIC(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @DECL_ORIGIN(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @TREE_STATIC(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @TREE_ASM_WRITTEN(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %94, label %26

22:                                               ; preds = %14
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @DECL_RTL_SET_P(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %94, label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @VAR_DECL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @DECL_HAS_VALUE_EXPR_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %93

36:                                               ; preds = %31, %26
  %37 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %38 = load i32, i32* %2, align 4
  %39 = call i64 %37(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %92

42:                                               ; preds = %36
  %43 = load i32, i32* %2, align 4
  %44 = call i64 @TREE_CODE(i32 %43)
  %45 = load i64, i64* @VAR_DECL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* %2, align 4
  %49 = call i64 @TREE_STATIC(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @expand_decl(i32 %52)
  br label %91

54:                                               ; preds = %47, %42
  %55 = load i32, i32* %2, align 4
  %56 = call i64 @TREE_CODE(i32 %55)
  %57 = load i64, i64* @VAR_DECL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* %2, align 4
  %61 = call i64 @TREE_STATIC(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @rest_of_decl_compilation(i32 %64, i32 0, i32 0)
  br label %90

66:                                               ; preds = %59, %54
  %67 = load i32, i32* %2, align 4
  %68 = call i64 @TREE_CODE(i32 %67)
  %69 = load i64, i64* @TYPE_DECL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %86, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %2, align 4
  %73 = call i64 @TREE_CODE(i32 %72)
  %74 = load i64, i64* @CONST_DECL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %2, align 4
  %78 = call i64 @TREE_CODE(i32 %77)
  %79 = load i64, i64* @FUNCTION_DECL, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %2, align 4
  %83 = call i64 @TREE_CODE(i32 %82)
  %84 = load i64, i64* @LABEL_DECL, align 8
  %85 = icmp eq i64 %83, %84
  br label %86

86:                                               ; preds = %81, %76, %71, %66
  %87 = phi i1 [ true, %76 ], [ true, %71 ], [ true, %66 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @gcc_assert(i32 %88)
  br label %90

90:                                               ; preds = %86, %63
  br label %91

91:                                               ; preds = %90, %51
  br label %92

92:                                               ; preds = %91, %41
  br label %93

93:                                               ; preds = %92, %35
  br label %94

94:                                               ; preds = %6, %93, %22, %18
  ret void
}

declare dso_local i64 @DECL_EXTERNAL(i32) #1

declare dso_local i64 @TREE_STATIC(i32) #1

declare dso_local i32 @DECL_ORIGIN(i32) #1

declare dso_local i32 @TREE_ASM_WRITTEN(i32) #1

declare dso_local i32 @DECL_RTL_SET_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_HAS_VALUE_EXPR_P(i32) #1

declare dso_local i32 @expand_decl(i32) #1

declare dso_local i32 @rest_of_decl_compilation(i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
