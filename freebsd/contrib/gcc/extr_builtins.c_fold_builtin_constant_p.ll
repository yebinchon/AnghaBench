; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_constant_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_constant_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONSTRUCTOR = common dso_local global i64 0, align 8
@integer_one_node = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@STRING_CST = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@cfun = common dso_local global i64 0, align 8
@folding_initializer = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @fold_builtin_constant_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_constant_p(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %81

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @TREE_VALUE(i64 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @STRIP_NOPS(i64 %11)
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @CONSTANT_CLASS_P(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %8
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = load i64, i64* @CONSTRUCTOR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @TREE_CONSTANT(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %8
  %26 = load i64, i64* @integer_one_node, align 8
  store i64 %26, i64* %2, align 8
  br label %81

27:                                               ; preds = %21, %16
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @ADDR_EXPR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @TREE_OPERAND(i64 %33, i32 0)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @TREE_CODE(i64 %35)
  %37 = load i64, i64* @STRING_CST, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @TREE_CODE(i64 %40)
  %42 = load i64, i64* @ARRAY_REF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @TREE_OPERAND(i64 %45, i32 1)
  %47 = call i64 @integer_zerop(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @TREE_OPERAND(i64 %50, i32 0)
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @STRING_CST, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %32
  %56 = load i64, i64* @integer_one_node, align 8
  store i64 %56, i64* %2, align 8
  br label %81

57:                                               ; preds = %49, %44, %39
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i64, i64* %3, align 8
  %60 = call i64 @TREE_SIDE_EFFECTS(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @TREE_TYPE(i64 %63)
  %65 = call i64 @AGGREGATE_TYPE_P(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @TREE_TYPE(i64 %68)
  %70 = call i64 @POINTER_TYPE_P(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* @cfun, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* @folding_initializer, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75, %72, %67, %62, %58
  %79 = load i64, i64* @integer_zero_node, align 8
  store i64 %79, i64* %2, align 8
  br label %81

80:                                               ; preds = %75
  store i64 0, i64* %2, align 8
  br label %81

81:                                               ; preds = %80, %78, %55, %25, %7
  %82 = load i64, i64* %2, align 8
  ret i64 %82
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @CONSTANT_CLASS_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_CONSTANT(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
