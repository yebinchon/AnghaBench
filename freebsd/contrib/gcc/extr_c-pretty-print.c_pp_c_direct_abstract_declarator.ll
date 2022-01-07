; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_direct_abstract_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_direct_abstract_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_direct_abstract_declarator(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  switch i32 %8, label %66 [
    i32 134, label %9
    i32 141, label %9
    i32 137, label %13
    i32 142, label %21
    i32 136, label %65
    i32 128, label %65
    i32 140, label %65
    i32 135, label %65
    i32 133, label %65
    i32 138, label %65
    i32 132, label %65
    i32 130, label %65
    i32 129, label %65
    i32 139, label %65
    i32 131, label %65
  ]

9:                                                ; preds = %2, %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @pp_abstract_declarator(i32* %10, i32 %11)
  br label %70

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pp_c_parameter_type_list(i32* %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @TREE_TYPE(i32 %18)
  %20 = call i32 @pp_direct_abstract_declarator(i32* %17, i32 %19)
  br label %70

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @pp_c_left_bracket(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @TYPE_DOMAIN(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @TYPE_DOMAIN(i32 %28)
  %30 = call i32 @TYPE_MAX_VALUE(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @TYPE_DOMAIN(i32 %33)
  %35 = call i32 @TYPE_MAX_VALUE(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @TREE_TYPE(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @host_integerp(i32 %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @tree_low_cst(i32 %43, i32 0)
  %45 = add nsw i32 %44, 1
  %46 = call i32 @pp_wide_integer(i32* %42, i32 %45)
  br label %57

47:                                               ; preds = %32
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @PLUS_EXPR, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @build_int_cst(i32 %52, i32 1)
  %54 = call i32 @build2(i32 %49, i32 %50, i32 %51, i32 %53)
  %55 = call i32 @fold(i32 %54)
  %56 = call i32 @pp_expression(i32* %48, i32 %55)
  br label %57

57:                                               ; preds = %47, %41
  br label %58

58:                                               ; preds = %57, %27, %21
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @pp_c_right_bracket(i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @TREE_TYPE(i32 %62)
  %64 = call i32 @pp_direct_abstract_declarator(i32* %61, i32 %63)
  br label %70

65:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %70

66:                                               ; preds = %2
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @pp_unsupported_tree(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %65, %58, %13, %9
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_abstract_declarator(i32*, i32) #1

declare dso_local i32 @pp_c_parameter_type_list(i32*, i32) #1

declare dso_local i32 @pp_direct_abstract_declarator(i32*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_c_left_bracket(i32*) #1

declare dso_local i32 @TYPE_DOMAIN(i32) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32) #1

declare dso_local i32 @host_integerp(i32, i32) #1

declare dso_local i32 @pp_wide_integer(i32*, i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @pp_expression(i32*, i32) #1

declare dso_local i32 @fold(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @pp_c_right_bracket(i32*) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
