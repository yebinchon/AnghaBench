; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %108 [
    i32 168, label %7
    i32 147, label %11
    i32 143, label %15
    i32 172, label %19
    i32 175, label %19
    i32 130, label %19
    i32 182, label %19
    i32 154, label %19
    i32 146, label %19
    i32 178, label %19
    i32 167, label %19
    i32 179, label %19
    i32 151, label %23
    i32 152, label %23
    i32 196, label %23
    i32 191, label %23
    i32 188, label %23
    i32 190, label %23
    i32 189, label %23
    i32 128, label %23
    i32 155, label %23
    i32 131, label %23
    i32 164, label %23
    i32 136, label %23
    i32 133, label %23
    i32 132, label %23
    i32 135, label %23
    i32 134, label %23
    i32 198, label %23
    i32 183, label %23
    i32 186, label %23
    i32 129, label %23
    i32 184, label %27
    i32 197, label %27
    i32 170, label %27
    i32 159, label %27
    i32 193, label %27
    i32 138, label %27
    i32 149, label %27
    i32 150, label %27
    i32 148, label %27
    i32 171, label %27
    i32 176, label %31
    i32 177, label %31
    i32 181, label %31
    i32 156, label %31
    i32 160, label %35
    i32 140, label %35
    i32 141, label %35
    i32 165, label %39
    i32 145, label %39
    i32 163, label %43
    i32 173, label %43
    i32 166, label %43
    i32 174, label %43
    i32 195, label %47
    i32 192, label %51
    i32 194, label %55
    i32 139, label %59
    i32 137, label %63
    i32 180, label %67
    i32 158, label %67
    i32 185, label %71
    i32 153, label %75
    i32 162, label %75
    i32 161, label %79
    i32 169, label %79
    i32 187, label %83
    i32 157, label %98
    i32 144, label %98
    i32 142, label %103
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pp_c_integer_constant(i32* %8, i32 %9)
  br label %112

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pp_c_floating_constant(i32* %12, i32 %13)
  br label %112

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pp_c_string_literal(i32* %16, i32 %17)
  br label %112

19:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @pp_primary_expression(i32* %20, i32 %21)
  br label %112

23:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pp_postfix_expression(i32* %24, i32 %25)
  br label %112

27:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pp_c_unary_expression(i32* %28, i32 %29)
  br label %112

31:                                               ; preds = %2, %2, %2, %2
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @pp_c_cast_expression(i32* %32, i32 %33)
  br label %112

35:                                               ; preds = %2, %2, %2
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @pp_multiplicative_expression(i32* %36, i32 %37)
  br label %112

39:                                               ; preds = %2, %2
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @pp_c_shift_expression(i32* %40, i32 %41)
  br label %112

43:                                               ; preds = %2, %2, %2, %2
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @pp_c_relational_expression(i32* %44, i32 %45)
  br label %112

47:                                               ; preds = %2
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pp_c_and_expression(i32* %48, i32 %49)
  br label %112

51:                                               ; preds = %2
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @pp_c_exclusive_or_expression(i32* %52, i32 %53)
  br label %112

55:                                               ; preds = %2
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @pp_c_inclusive_or_expression(i32* %56, i32 %57)
  br label %112

59:                                               ; preds = %2
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @pp_c_logical_and_expression(i32* %60, i32 %61)
  br label %112

63:                                               ; preds = %2
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @pp_c_logical_or_expression(i32* %64, i32 %65)
  br label %112

67:                                               ; preds = %2, %2
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @pp_c_equality_expression(i32* %68, i32 %69)
  br label %112

71:                                               ; preds = %2
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @pp_conditional_expression(i32* %72, i32 %73)
  br label %112

75:                                               ; preds = %2, %2
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @pp_c_additive_expression(i32* %76, i32 %77)
  br label %112

79:                                               ; preds = %2, %2
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @pp_assignment_expression(i32* %80, i32 %81)
  br label %112

83:                                               ; preds = %2
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @pp_c_left_paren(i32* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @TREE_OPERAND(i32 %87, i32 0)
  %89 = call i32 @pp_expression(i32* %86, i32 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @pp_separate_with(i32* %90, i8 signext 44)
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @TREE_OPERAND(i32 %93, i32 1)
  %95 = call i32 @pp_assignment_expression(i32* %92, i32 %94)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @pp_c_right_paren(i32* %96)
  br label %112

98:                                               ; preds = %2, %2
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @TREE_OPERAND(i32 %100, i32 0)
  %102 = call i32 @pp_expression(i32* %99, i32 %101)
  br label %112

103:                                              ; preds = %2
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @TREE_OPERAND(i32 %105, i32 1)
  %107 = call i32 @pp_postfix_expression(i32* %104, i32 %106)
  br label %112

108:                                              ; preds = %2
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @pp_unsupported_tree(i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %103, %98, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %7
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_c_integer_constant(i32*, i32) #1

declare dso_local i32 @pp_c_floating_constant(i32*, i32) #1

declare dso_local i32 @pp_c_string_literal(i32*, i32) #1

declare dso_local i32 @pp_primary_expression(i32*, i32) #1

declare dso_local i32 @pp_postfix_expression(i32*, i32) #1

declare dso_local i32 @pp_c_unary_expression(i32*, i32) #1

declare dso_local i32 @pp_c_cast_expression(i32*, i32) #1

declare dso_local i32 @pp_multiplicative_expression(i32*, i32) #1

declare dso_local i32 @pp_c_shift_expression(i32*, i32) #1

declare dso_local i32 @pp_c_relational_expression(i32*, i32) #1

declare dso_local i32 @pp_c_and_expression(i32*, i32) #1

declare dso_local i32 @pp_c_exclusive_or_expression(i32*, i32) #1

declare dso_local i32 @pp_c_inclusive_or_expression(i32*, i32) #1

declare dso_local i32 @pp_c_logical_and_expression(i32*, i32) #1

declare dso_local i32 @pp_c_logical_or_expression(i32*, i32) #1

declare dso_local i32 @pp_c_equality_expression(i32*, i32) #1

declare dso_local i32 @pp_conditional_expression(i32*, i32) #1

declare dso_local i32 @pp_c_additive_expression(i32*, i32) #1

declare dso_local i32 @pp_assignment_expression(i32*, i32) #1

declare dso_local i32 @pp_c_left_paren(i32*) #1

declare dso_local i32 @pp_expression(i32*, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_separate_with(i32*, i8 signext) #1

declare dso_local i32 @pp_c_right_paren(i32*) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
