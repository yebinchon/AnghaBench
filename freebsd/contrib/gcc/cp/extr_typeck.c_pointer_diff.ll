; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_pointer_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_pointer_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ptrdiff_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@warn_pointer_arith = common dso_local global i64 0, align 8
@VOID_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"ISO C++ forbids using pointer of type %<void *%> in subtraction\00", align 1
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"ISO C++ forbids using pointer to a function in subtraction\00", align 1
@METHOD_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"ISO C++ forbids using pointer to a method in subtraction\00", align 1
@MINUS_EXPR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"invalid use of a pointer to an incomplete type in pointer arithmetic\00", align 1
@integer_one_node = common dso_local global i32 0, align 4
@EXACT_DIV_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @pointer_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pointer_diff(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @ptrdiff_type_node, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @TREE_TYPE(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @NULL_TREE, align 4
  %16 = call i32 @complete_type_or_else(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @error_mark_node, align 4
  store i32 %19, i32* %4, align 4
  br label %84

20:                                               ; preds = %3
  %21 = load i64, i64* @pedantic, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @warn_pointer_arith, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @VOID_TYPE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @pedwarn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @TREE_CODE(i32 %34)
  %36 = load i64, i64* @FUNCTION_TYPE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @pedwarn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @TREE_CODE(i32 %41)
  %43 = load i64, i64* @METHOD_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @pedwarn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  br label %48

48:                                               ; preds = %47, %23
  %49 = load i32, i32* @MINUS_EXPR, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @cp_convert(i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @cp_convert(i32 %53, i32 %54)
  %56 = call i32 @cp_build_binary_op(i32 %49, i32 %52, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @TREE_TYPE(i32 %57)
  %59 = call i32 @TREE_TYPE(i32 %58)
  %60 = call i32 @COMPLETE_TYPE_P(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %48
  %63 = call i32 @error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %48
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @TYPE_PTROB_P(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @size_in_bytes(i32 %69)
  br label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @integer_one_node, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i32 [ %70, %68 ], [ %72, %71 ]
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @EXACT_DIV_EXPR, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @cp_convert(i32 %78, i32 %79)
  %81 = call i32 @build2(i32 %75, i32 %76, i32 %77, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @fold_if_not_in_template(i32 %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %73, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @complete_type_or_else(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @cp_build_binary_op(i32, i32, i32) #1

declare dso_local i32 @cp_convert(i32, i32) #1

declare dso_local i32 @COMPLETE_TYPE_P(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @TYPE_PTROB_P(i32) #1

declare dso_local i32 @size_in_bytes(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @fold_if_not_in_template(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
