; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_decl_linkage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_decl_linkage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lk_none = common dso_local global i32 0, align 4
@lk_external = common dso_local global i32 0, align 4
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@CONST_DECL = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@lk_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decl_linkage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @DECL_NAME(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @lk_none, align 4
  store i32 %8, i32* %2, align 4
  br label %76

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @TREE_PUBLIC(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @lk_external, align 4
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @NAMESPACE_DECL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @lk_external, align 4
  store i32 %21, i32* %2, align 4
  br label %76

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @TREE_CODE(i32 %23)
  %25 = load i64, i64* @CONST_DECL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @TREE_TYPE(i32 %28)
  %30 = call i32 @TYPE_NAME(i32 %29)
  %31 = call i32 @decl_linkage(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %76

32:                                               ; preds = %22
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @TREE_CODE(i32 %33)
  %35 = load i64, i64* @TYPE_DECL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @DECL_LANG_SPECIFIC(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @DECL_COMDAT(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @lk_external, align 4
  store i32 %46, i32* %2, align 4
  br label %76

47:                                               ; preds = %41, %37, %32
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @decl_function_context(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @lk_none, align 4
  store i32 %52, i32* %2, align 4
  br label %76

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = call i64 @TREE_CODE(i32 %54)
  %56 = load i64, i64* @TYPE_DECL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @TREE_CODE(i32 %59)
  %61 = load i64, i64* @VAR_DECL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @TREE_CODE(i32 %64)
  %66 = load i64, i64* @FUNCTION_DECL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @DECL_THIS_STATIC(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68, %53
  %73 = load i32, i32* @lk_external, align 4
  store i32 %73, i32* %2, align 4
  br label %76

74:                                               ; preds = %68, %63
  %75 = load i32, i32* @lk_internal, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %72, %51, %45, %27, %20, %13, %7
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i64 @TREE_PUBLIC(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_NAME(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @DECL_LANG_SPECIFIC(i32) #1

declare dso_local i64 @DECL_COMDAT(i32) #1

declare dso_local i64 @decl_function_context(i32) #1

declare dso_local i32 @DECL_THIS_STATIC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
