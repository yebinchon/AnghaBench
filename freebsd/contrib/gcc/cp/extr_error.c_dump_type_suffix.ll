; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_type_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_type_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cxx_pp = common dso_local global i32 0, align 4
@TFF_FUNCTION_DEFAULT_ARGUMENTS = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@TFF_EXPR_IN_PARENS = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_type_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_type_suffix(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TYPE_PTRMEMFUNC_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32 %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TREE_CODE(i32 %13)
  switch i32 %14, label %128 [
    i32 142, label %15
    i32 153, label %15
    i32 139, label %15
    i32 143, label %15
    i32 147, label %27
    i32 144, label %27
    i32 154, label %67
    i32 149, label %127
    i32 146, label %127
    i32 145, label %127
    i32 152, label %127
    i32 141, label %127
    i32 140, label %127
    i32 137, label %127
    i32 138, label %127
    i32 151, label %127
    i32 136, label %127
    i32 132, label %127
    i32 135, label %127
    i32 131, label %127
    i32 130, label %127
    i32 128, label %127
    i32 134, label %127
    i32 150, label %127
    i32 129, label %127
    i32 133, label %127
    i32 148, label %132
  ]

15:                                               ; preds = %12, %12, %12, %12
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @TREE_TYPE(i32 %16)
  %18 = call i32 @TREE_CODE(i32 %17)
  %19 = icmp eq i32 %18, 154
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @cxx_pp, align 4
  %22 = call i32 @pp_cxx_right_paren(i32 %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = load i32, i32* %4, align 4
  call void @dump_type_suffix(i32 %25, i32 %26)
  br label %133

27:                                               ; preds = %12, %12
  %28 = load i32, i32* @cxx_pp, align 4
  %29 = call i32 @pp_cxx_right_paren(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @TYPE_ARG_TYPES(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @TREE_CODE(i32 %32)
  %34 = icmp eq i32 %33, 144
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @TREE_CHAIN(i32 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %27
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @TFF_FUNCTION_DEFAULT_ARGUMENTS, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @dump_parameters(i32 %39, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @TREE_CODE(i32 %45)
  %47 = icmp eq i32 %46, 144
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = load i32, i32* @cxx_pp, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @TYPE_ARG_TYPES(i32 %50)
  %52 = call i32 @TREE_VALUE(i32 %51)
  %53 = call i32 @TREE_TYPE(i32 %52)
  %54 = call i32 @pp_cxx_cv_qualifier_seq(i32 %49, i32 %53)
  br label %59

55:                                               ; preds = %38
  %56 = load i32, i32* @cxx_pp, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pp_cxx_cv_qualifier_seq(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @TYPE_RAISES_EXCEPTIONS(i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dump_exception_spec(i32 %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @TREE_TYPE(i32 %64)
  %66 = load i32, i32* %4, align 4
  call void @dump_type_suffix(i32 %65, i32 %66)
  br label %133

67:                                               ; preds = %12
  %68 = load i32, i32* @cxx_pp, align 4
  %69 = call i32 @pp_maybe_space(i32 %68)
  %70 = load i32, i32* @cxx_pp, align 4
  %71 = call i32 @pp_cxx_left_bracket(i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @TYPE_DOMAIN(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %121

75:                                               ; preds = %67
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @TYPE_DOMAIN(i32 %76)
  %78 = call i32 @TYPE_MAX_VALUE(i32 %77)
  %79 = call i32 @host_integerp(i32 %78, i32 0)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load i32, i32* @cxx_pp, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @TYPE_DOMAIN(i32 %83)
  %85 = call i32 @TYPE_MAX_VALUE(i32 %84)
  %86 = call i32 @tree_low_cst(i32 %85, i32 0)
  %87 = add nsw i32 %86, 1
  %88 = call i32 @pp_wide_integer(i32 %82, i32 %87)
  br label %120

89:                                               ; preds = %75
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @TYPE_DOMAIN(i32 %90)
  %92 = call i32 @TYPE_MAX_VALUE(i32 %91)
  %93 = call i32 @TREE_CODE(i32 %92)
  %94 = load i32, i32* @MINUS_EXPR, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @TYPE_DOMAIN(i32 %97)
  %99 = call i32 @TYPE_MAX_VALUE(i32 %98)
  %100 = call i32 @TREE_OPERAND(i32 %99, i32 0)
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @TFF_EXPR_IN_PARENS, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = call i32 @dump_expr(i32 %100, i32 %104)
  br label %119

106:                                              ; preds = %89
  %107 = load i32, i32* @PLUS_EXPR, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @TYPE_DOMAIN(i32 %108)
  %110 = call i32 @TYPE_MAX_VALUE(i32 %109)
  %111 = load i32, i32* @integer_one_node, align 4
  %112 = call i32 @cp_build_binary_op(i32 %107, i32 %110, i32 %111)
  %113 = call i32 @fold(i32 %112)
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @TFF_EXPR_IN_PARENS, align 4
  %116 = xor i32 %115, -1
  %117 = and i32 %114, %116
  %118 = call i32 @dump_expr(i32 %113, i32 %117)
  br label %119

119:                                              ; preds = %106, %96
  br label %120

120:                                              ; preds = %119, %81
  br label %121

121:                                              ; preds = %120, %67
  %122 = load i32, i32* @cxx_pp, align 4
  %123 = call i32 @pp_cxx_right_bracket(i32 %122)
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @TREE_TYPE(i32 %124)
  %126 = load i32, i32* %4, align 4
  call void @dump_type_suffix(i32 %125, i32 %126)
  br label %133

127:                                              ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  br label %133

128:                                              ; preds = %12
  %129 = load i32, i32* @cxx_pp, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @pp_unsupported_tree(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %12, %128
  br label %133

133:                                              ; preds = %132, %127, %121, %59, %23
  ret void
}

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_FN_TYPE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_cxx_right_paren(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @dump_parameters(i32, i32) #1

declare dso_local i32 @pp_cxx_cv_qualifier_seq(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @dump_exception_spec(i32, i32) #1

declare dso_local i32 @TYPE_RAISES_EXCEPTIONS(i32) #1

declare dso_local i32 @pp_maybe_space(i32) #1

declare dso_local i32 @pp_cxx_left_bracket(i32) #1

declare dso_local i32 @TYPE_DOMAIN(i32) #1

declare dso_local i32 @host_integerp(i32, i32) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32) #1

declare dso_local i32 @pp_wide_integer(i32, i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @dump_expr(i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @fold(i32) #1

declare dso_local i32 @cp_build_binary_op(i32, i32, i32) #1

declare dso_local i32 @pp_cxx_right_bracket(i32) #1

declare dso_local i32 @pp_unsupported_tree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
