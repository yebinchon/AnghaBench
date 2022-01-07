; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_constant_multiple_of.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_constant_multiple_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@double_int_one = common dso_local global i32 0, align 4
@FLOOR_DIV_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @constant_multiple_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constant_multiple_of(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  %16 = call i32 @TYPE_PRECISION(i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @STRIP_NOPS(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @STRIP_NOPS(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @operand_equal_p(i32 %21, i32 %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @double_int_one, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  store i32 1, i32* %4, align 4
  br label %109

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @TREE_CODE(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %108 [
    i32 129, label %32
    i32 128, label %54
    i32 130, label %54
    i32 131, label %80
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @TREE_OPERAND(i32 %33, i32 1)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @TREE_CODE(i32 %35)
  %37 = icmp ne i32 %36, 131
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %109

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @TREE_OPERAND(i32 %40, i32 0)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @constant_multiple_of(i32 %41, i32 %42, i32* %10)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %109

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @tree_to_double_int(i32 %48)
  %50 = call i32 @double_int_mul(i32 %47, i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @double_int_sext(i32 %50, i32 %51)
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  store i32 1, i32* %4, align 4
  br label %109

54:                                               ; preds = %28, %28
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @TREE_OPERAND(i32 %55, i32 0)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @constant_multiple_of(i32 %56, i32 %57, i32* %11)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @TREE_OPERAND(i32 %61, i32 1)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @constant_multiple_of(i32 %62, i32 %63, i32* %12)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60, %54
  store i32 0, i32* %4, align 4
  br label %109

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 130
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @double_int_neg(i32 %71)
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @double_int_add(i32 %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @double_int_sext(i32 %76, i32 %77)
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  store i32 1, i32* %4, align 4
  br label %109

80:                                               ; preds = %28
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @TREE_CODE(i32 %81)
  %83 = icmp ne i32 %82, 131
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %109

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @tree_to_double_int(i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @double_int_sext(i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @tree_to_double_int(i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @double_int_sext(i32 %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @double_int_zero_p(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %109

98:                                               ; preds = %85
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @FLOOR_DIV_EXPR, align 4
  %102 = call i32 @double_int_sdivmod(i32 %99, i32 %100, i32 %101, i32* %10)
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @double_int_sext(i32 %102, i32 %103)
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @double_int_zero_p(i32 %106)
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %28
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %98, %97, %84, %73, %66, %46, %45, %38, %25
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @TYPE_PRECISION(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @double_int_sext(i32, i32) #1

declare dso_local i32 @double_int_mul(i32, i32) #1

declare dso_local i32 @tree_to_double_int(i32) #1

declare dso_local i32 @double_int_neg(i32) #1

declare dso_local i32 @double_int_add(i32, i32) #1

declare dso_local i32 @double_int_zero_p(i32) #1

declare dso_local i32 @double_int_sdivmod(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
