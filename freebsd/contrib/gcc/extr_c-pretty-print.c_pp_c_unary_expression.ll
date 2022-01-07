; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_unary_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_unary_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@STRING_CST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"__real__\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"__imag__\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_unary_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %80 [
    i32 130, label %9
    i32 131, label %9
    i32 137, label %19
    i32 133, label %19
    i32 132, label %19
    i32 136, label %19
    i32 128, label %19
    i32 135, label %19
    i32 129, label %67
    i32 134, label %67
  ]

9:                                                ; preds = %2, %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 130
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %15 = call i32 @pp_identifier(i32* %10, i8* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TREE_OPERAND(i32 %17, i32 0)
  call void @pp_c_unary_expression(i32* %16, i32 %18)
  br label %84

19:                                               ; preds = %2, %2, %2, %2, %2, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 137
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TREE_OPERAND(i32 %23, i32 0)
  %25 = call i32 @TREE_CODE(i32 %24)
  %26 = load i32, i32* @STRING_CST, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @pp_ampersand(i32* %29)
  br label %62

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 133
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @pp_c_star(i32* %35)
  br label %61

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 132
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @pp_minus(i32* %41)
  br label %60

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 136
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 135
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %43
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @pp_complement(i32* %50)
  br label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @pp_exclamation(i32* %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %49
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60, %34
  br label %62

62:                                               ; preds = %61, %28
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @TREE_OPERAND(i32 %64, i32 0)
  %66 = call i32 @pp_c_cast_expression(i32* %63, i32 %65)
  br label %84

67:                                               ; preds = %2, %2
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 129
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %73 = call i32 @pp_c_identifier(i32* %68, i8* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @pp_c_whitespace(i32* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @TREE_OPERAND(i32 %77, i32 0)
  %79 = call i32 @pp_unary_expression(i32* %76, i32 %78)
  br label %84

80:                                               ; preds = %2
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @pp_postfix_expression(i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %67, %62, %9
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_identifier(i32*, i8*) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_ampersand(i32*) #1

declare dso_local i32 @pp_c_star(i32*) #1

declare dso_local i32 @pp_minus(i32*) #1

declare dso_local i32 @pp_complement(i32*) #1

declare dso_local i32 @pp_exclamation(i32*) #1

declare dso_local i32 @pp_c_cast_expression(i32*, i32) #1

declare dso_local i32 @pp_c_identifier(i32*, i8*) #1

declare dso_local i32 @pp_c_whitespace(i32*) #1

declare dso_local i32 @pp_unary_expression(i32*, i32) #1

declare dso_local i32 @pp_postfix_expression(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
