; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_new_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_new_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"new\00", align 1
@TREE_LIST = common dso_local global i32 0, align 4
@void_zero_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_new_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_new_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %65 [
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @NEW_EXPR_USE_GLOBAL(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pp_cxx_colon_colon(i32* %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @pp_cxx_identifier(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @TREE_OPERAND(i32 %24, i32 0)
  %26 = call i32 @pp_cxx_call_argument_list(i32* %23, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @pp_space(i32* %27)
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @TREE_OPERAND(i32 %31, i32 1)
  %33 = call i32 @pp_cxx_type_id(i32* %30, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @TREE_OPERAND(i32 %34, i32 2)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %29
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @pp_left_paren(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @TREE_OPERAND(i32 %40, i32 2)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @TREE_CODE(i32 %42)
  %44 = load i32, i32* @TREE_LIST, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @pp_c_base(i32* %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pp_c_expression_list(i32 %48, i32 %49)
  br label %61

51:                                               ; preds = %37
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @void_zero_node, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %60

56:                                               ; preds = %51
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pp_cxx_expression(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %55
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @pp_right_paren(i32* %62)
  br label %64

64:                                               ; preds = %61, %29
  br label %69

65:                                               ; preds = %2
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @pp_unsupported_tree(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %64
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @NEW_EXPR_USE_GLOBAL(i32) #1

declare dso_local i32 @pp_cxx_colon_colon(i32*) #1

declare dso_local i32 @pp_cxx_identifier(i32*, i8*) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_cxx_call_argument_list(i32*, i32) #1

declare dso_local i32 @pp_space(i32*) #1

declare dso_local i32 @pp_cxx_type_id(i32*, i32) #1

declare dso_local i32 @pp_left_paren(i32*) #1

declare dso_local i32 @pp_c_expression_list(i32, i32) #1

declare dso_local i32 @pp_c_base(i32*) #1

declare dso_local i32 @pp_cxx_expression(i32*, i32) #1

declare dso_local i32 @pp_right_paren(i32*) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
