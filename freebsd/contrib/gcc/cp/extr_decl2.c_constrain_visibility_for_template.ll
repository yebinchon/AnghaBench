; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_constrain_visibility_for_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_constrain_visibility_for_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_EXPR = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@VISIBILITY_ANON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @constrain_visibility_for_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constrain_visibility_for_template(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @INNERMOST_TEMPLATE_ARGS(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @TREE_VEC_LENGTH(i32 %11)
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %76, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %79

16:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @TREE_VEC_ELT(i32 %17, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @TYPE_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @type_visibility(i32 %25)
  store i32 %26, i32* %7, align 4
  br label %68

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @TREE_TYPE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @TREE_TYPE(i32 %32)
  %34 = call i64 @POINTER_TYPE_P(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @STRIP_NOPS(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @TREE_CODE(i32 %39)
  %41 = load i64, i64* @ADDR_EXPR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @TREE_OPERAND(i32 %44, i32 0)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @TREE_CODE(i32 %47)
  %49 = load i64, i64* @VAR_DECL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @TREE_CODE(i32 %52)
  %54 = load i64, i64* @FUNCTION_DECL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @TREE_PUBLIC(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @VISIBILITY_ANON, align 4
  store i32 %61, i32* %7, align 4
  br label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @DECL_VISIBILITY(i32 %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %60
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %31, %27
  br label %68

68:                                               ; preds = %67, %24
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @constrain_visibility(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %6, align 4
  br label %13

79:                                               ; preds = %13
  ret void
}

declare dso_local i32 @INNERMOST_TEMPLATE_ARGS(i32) #1

declare dso_local i32 @TREE_VEC_LENGTH(i32) #1

declare dso_local i32 @TREE_VEC_ELT(i32, i32) #1

declare dso_local i64 @TYPE_P(i32) #1

declare dso_local i32 @type_visibility(i32) #1

declare dso_local i64 @TREE_TYPE(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_PUBLIC(i32) #1

declare dso_local i32 @DECL_VISIBILITY(i32) #1

declare dso_local i32 @constrain_visibility(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
