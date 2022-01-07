; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_primary_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_primary_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"<erroneous-expression>\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<return-value>\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"__builtin_memcpy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_primary_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %57 [
    i32 128, label %7
    i32 133, label %7
    i32 138, label %7
    i32 140, label %7
    i32 137, label %7
    i32 134, label %7
    i32 136, label %11
    i32 139, label %15
    i32 131, label %18
    i32 135, label %21
    i32 132, label %21
    i32 130, label %21
    i32 129, label %25
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pp_c_tree_decl_identifier(i32* %8, i32 %9)
  br label %65

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pp_c_tree_identifier(i32* %12, i32 %13)
  br label %65

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @pp_c_identifier(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %65

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @pp_c_identifier(i32* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %65

21:                                               ; preds = %2, %2, %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @pp_c_constant(i32* %22, i32 %23)
  br label %65

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @pp_c_identifier(i32* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @pp_c_left_paren(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @pp_ampersand(i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @TREE_OPERAND(i32 %33, i32 0)
  %35 = call i32 @pp_primary_expression(i32* %32, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @pp_separate_with(i32* %36, i8 signext 44)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @pp_ampersand(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @TREE_OPERAND(i32 %41, i32 1)
  %43 = call i32 @pp_initializer(i32* %40, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @TREE_OPERAND(i32 %44, i32 2)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %25
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @pp_separate_with(i32* %48, i8 signext 44)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @TREE_OPERAND(i32 %51, i32 2)
  %53 = call i32 @pp_c_expression(i32* %50, i32 %52)
  br label %54

54:                                               ; preds = %47, %25
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @pp_c_right_paren(i32* %55)
  br label %65

57:                                               ; preds = %2
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @pp_c_left_paren(i32* %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @pp_expression(i32* %60, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @pp_c_right_paren(i32* %63)
  br label %65

65:                                               ; preds = %57, %54, %21, %18, %15, %11, %7
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_c_tree_decl_identifier(i32*, i32) #1

declare dso_local i32 @pp_c_tree_identifier(i32*, i32) #1

declare dso_local i32 @pp_c_identifier(i32*, i8*) #1

declare dso_local i32 @pp_c_constant(i32*, i32) #1

declare dso_local i32 @pp_c_left_paren(i32*) #1

declare dso_local i32 @pp_ampersand(i32*) #1

declare dso_local i32 @pp_primary_expression(i32*, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_separate_with(i32*, i8 signext) #1

declare dso_local i32 @pp_initializer(i32*, i32) #1

declare dso_local i32 @pp_c_expression(i32*, i32) #1

declare dso_local i32 @pp_c_right_paren(i32*) #1

declare dso_local i32 @pp_expression(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
