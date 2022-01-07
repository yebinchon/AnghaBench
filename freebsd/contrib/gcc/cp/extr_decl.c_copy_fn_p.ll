; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_copy_fn_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_copy_fn_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMPLATE_DECL = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@void_list_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_fn_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 1, i32* %6, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @DECL_FUNCTION_MEMBER_P(i64 %7)
  %9 = call i32 @gcc_assert(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @TREE_CODE(i64 %10)
  %12 = load i64, i64* @TEMPLATE_DECL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @DECL_TEMPLATE_INFO(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @DECL_TI_TEMPLATE(i64 %19)
  %21 = call i64 @DECL_MEMBER_TEMPLATE_P(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %81

24:                                               ; preds = %18, %14
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @FUNCTION_FIRST_USER_PARMTYPE(i64 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %81

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @TREE_VALUE(i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @error_mark_node, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %81

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @TYPE_MAIN_VARIANT(i64 %38)
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @DECL_CONTEXT(i64 %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %65

44:                                               ; preds = %37
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @REFERENCE_TYPE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @TREE_TYPE(i64 %50)
  %52 = call i64 @TYPE_MAIN_VARIANT(i64 %51)
  %53 = load i64, i64* %3, align 8
  %54 = call i64 @DECL_CONTEXT(i64 %53)
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @TREE_TYPE(i64 %57)
  %59 = call i64 @CP_TYPE_CONST_P(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 2, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %56
  br label %64

63:                                               ; preds = %49, %44
  store i32 0, i32* %2, align 4
  br label %81

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %43
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @TREE_CHAIN(i64 %66)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @void_list_node, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @TREE_PURPOSE(i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %81

79:                                               ; preds = %74, %70, %65
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %78, %63, %36, %29, %23
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @DECL_FUNCTION_MEMBER_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i64) #1

declare dso_local i64 @DECL_MEMBER_TEMPLATE_P(i32) #1

declare dso_local i32 @DECL_TI_TEMPLATE(i64) #1

declare dso_local i64 @FUNCTION_FIRST_USER_PARMTYPE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @CP_TYPE_CONST_P(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
