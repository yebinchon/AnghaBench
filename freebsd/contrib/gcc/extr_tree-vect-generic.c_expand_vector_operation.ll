; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-generic.c_expand_vector_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-generic.c_expand_vector_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_VECTOR_INT = common dso_local global i64 0, align 8
@MODE_VECTOR_FLOAT = common dso_local global i64 0, align 8
@do_binop = common dso_local global i32 0, align 4
@do_plus_minus = common dso_local global i32 0, align 4
@do_unop = common dso_local global i32 0, align 4
@do_negate = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@tcc_unary = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32)* @expand_vector_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_vector_operation(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @TYPE_MODE(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = call i64 @GET_MODE_CLASS(i32 %15)
  %17 = load i64, i64* @MODE_VECTOR_INT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @GET_MODE_CLASS(i32 %20)
  %22 = load i64, i64* @MODE_VECTOR_FLOAT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %76 [
    i32 128, label %26
    i32 130, label %26
    i32 129, label %42
    i32 134, label %57
    i32 133, label %57
    i32 131, label %57
    i32 132, label %67
  ]

26:                                               ; preds = %24, %24
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @TYPE_OVERFLOW_TRAPS(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @do_binop, align 4
  %33 = load i32, i32* @do_plus_minus, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @TREE_OPERAND(i32 %35, i32 0)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @TREE_OPERAND(i32 %37, i32 1)
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @expand_vector_addition(i32* %31, i32 %32, i32 %33, i32 %34, i32 %36, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %104

41:                                               ; preds = %26
  br label %77

42:                                               ; preds = %24
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @TYPE_OVERFLOW_TRAPS(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @do_unop, align 4
  %49 = load i32, i32* @do_negate, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @TREE_OPERAND(i32 %51, i32 0)
  %53 = load i32, i32* @NULL_TREE, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @expand_vector_addition(i32* %47, i32 %48, i32 %49, i32 %50, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %104

56:                                               ; preds = %42
  br label %77

57:                                               ; preds = %24, %24, %24
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @do_binop, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @TREE_OPERAND(i32 %61, i32 0)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @TREE_OPERAND(i32 %63, i32 1)
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @expand_vector_parallel(i32* %58, i32 %59, i32 %60, i32 %62, i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %104

67:                                               ; preds = %24
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @do_unop, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @TREE_OPERAND(i32 %71, i32 0)
  %73 = load i32, i32* @NULL_TREE, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @expand_vector_parallel(i32* %68, i32 %69, i32 %70, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %104

76:                                               ; preds = %24
  br label %77

77:                                               ; preds = %76, %56, %41
  br label %78

78:                                               ; preds = %77, %19, %5
  %79 = load i32, i32* %11, align 4
  %80 = call i64 @TREE_CODE_CLASS(i32 %79)
  %81 = load i64, i64* @tcc_unary, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* @do_unop, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @TREE_OPERAND(i32 %88, i32 0)
  %90 = load i32, i32* @NULL_TREE, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @expand_vector_piecewise(i32* %84, i32 %85, i32 %86, i32 %87, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %6, align 4
  br label %104

93:                                               ; preds = %78
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @do_binop, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @TREE_OPERAND(i32 %98, i32 0)
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @TREE_OPERAND(i32 %100, i32 1)
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @expand_vector_piecewise(i32* %94, i32 %95, i32 %96, i32 %97, i32 %99, i32 %101, i32 %102)
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %93, %83, %67, %57, %46, %30
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @TYPE_OVERFLOW_TRAPS(i32) #1

declare dso_local i32 @expand_vector_addition(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @expand_vector_parallel(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @expand_vector_piecewise(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
