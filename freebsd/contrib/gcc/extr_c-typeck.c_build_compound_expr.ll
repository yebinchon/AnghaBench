; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_build_compound_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_build_compound_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warn_unused_value = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@COMPOUND_EXPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"left-hand operand of comma expression has no effect\00", align 1
@input_location = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_compound_expr(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @TREE_SIDE_EFFECTS(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %56, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @warn_unused_value, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @TREE_TYPE(i64 %13)
  %15 = call i64 @VOID_TYPE_P(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @NOP_EXPR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @CONVERT_EXPR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %17
  br label %54

28:                                               ; preds = %22, %12
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @TREE_TYPE(i64 %29)
  %31 = call i64 @VOID_TYPE_P(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @COMPOUND_EXPR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @TREE_OPERAND(i64 %39, i32 1)
  %41 = call i64 @TREE_CODE(i64 %40)
  %42 = load i64, i64* @CONVERT_EXPR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @TREE_OPERAND(i64 %45, i32 1)
  %47 = call i64 @TREE_CODE(i64 %46)
  %48 = load i64, i64* @NOP_EXPR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38
  br label %53

51:                                               ; preds = %44, %33, %28
  %52 = call i32 @warning(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %50
  br label %54

54:                                               ; preds = %53, %27
  br label %55

55:                                               ; preds = %54, %9
  br label %64

56:                                               ; preds = %2
  %57 = load i64, i64* @warn_unused_value, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i64, i64* %4, align 8
  %61 = load i32, i32* @input_location, align 4
  %62 = call i32 @warn_if_unused_value(i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @error_mark_node, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* @error_mark_node, align 8
  store i64 %69, i64* %3, align 8
  br label %77

70:                                               ; preds = %64
  %71 = load i64, i64* @COMPOUND_EXPR, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @TREE_TYPE(i64 %72)
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i64 @build2(i64 %71, i32 %73, i64 %74, i64 %75)
  store i64 %76, i64* %3, align 8
  br label %77

77:                                               ; preds = %70, %68
  %78 = load i64, i64* %3, align 8
  ret i64 %78
}

declare dso_local i32 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @VOID_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @warn_if_unused_value(i64, i32) #1

declare dso_local i64 @build2(i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
